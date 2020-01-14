require_relative '../config/trello'

source_board_id = ENV['SOURCE_BOARD_ID']
target_board_id = ENV['TARGET_BOARD_ID']

source_board = Trello::Board.find(source_board_id)
target_board = Trello::Board.find(target_board_id)

source_list = source_board.lists.find { |list| list.name == ENV['SOURCE_LIST_NAME'] }
target_list = target_board.lists.first

source_list.move_all_cards(target_list)
