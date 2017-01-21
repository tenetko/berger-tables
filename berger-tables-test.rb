require './berger-tables'
require 'minitest/autorun'

class TestBergerTables < Minitest::Test

    # Predefined tables for N=4, 6, 8, and 22, according to https://fr.wikipedia.org/wiki/Table_de_Berger

    def for_4
        [%w/1-4 2-3/,
         %w/4-3 1-2/,
         %w/2-4 3-1/]
    end

    def for_6
        [%w/1-6 2-5 3-4/,
         %w/6-4 5-3 1-2/,
         %w/2-6 3-1 4-5/,
         %w/6-5 1-4 2-3/,
         %w/3-6 4-2 5-1/]
    end

    def for_8
        [%w/1-8    2-7    3-6    4-5/,
         %w/8-5    6-4    7-3    1-2/,
         %w/2-8    3-1    4-7    5-6/,
         %w/8-6    7-5    1-4    2-3/,
         %w/3-8    4-2    5-1    6-7/,
         %w/8-7    1-6    2-5    3-4/,
         %w/4-8    5-3    6-2    7-1/]
    end

    def for_22
        [%w/1-22    2-21    3-20    4-19    5-18    6-17    7-16    8-15    9-14    10-13   11-12/,
         %w/22-12   13-11   14-10   15-9    16-8    17-7    18-6    19-5    20-4    21-3    1-2/,
         %w/2-22    3-1     4-21    5-20    6-19    7-18    8-17    9-16    10-15   11-14   12-13/,
         %w/22-13   14-12   15-11   16-10   17-9    18-8    19-7    20-6    21-5    1-4     2-3/,
         %w/3-22    4-2     5-1     6-21    7-20    8-19    9-18    10-17   11-16   12-15   13-14/,
         %w/22-14   15-13   16-12   17-11   18-10   19-9    20-8    21-7    1-6     2-5     3-4/,
         %w/4-22    5-3     6-2     7-1     8-21    9-20    10-19   11-18   12-17   13-16   14-15/,
         %w/22-15   16-14   17-13   18-12   19-11   20-10   21-9    1-8     2-7     3-6     4-5/,
         %w/5-22    6-4     7-3     8-2     9-1     10-21   11-20   12-19   13-18   14-17   15-16/,
         %w/22-16   17-15   18-14   19-13   20-12   21-11   1-10    2-9     3-8     4-7     5-6/,
         %w/6-22    7-5     8-4     9-3     10-2    11-1    12-21   13-20   14-19   15-18   16-17/,
         %w/22-17   18-16   19-15   20-14   21-13   1-12    2-11    3-10    4-9     5-8     6-7/,
         %w/7-22    8-6     9-5     10-4    11-3    12-2    13-1    14-21   15-20   16-19   17-18/,
         %w/22-18   19-17   20-16   21-15   1-14    2-13    3-12    4-11    5-10    6-9     7-8/,
         %w/8-22    9-7     10-6    11-5    12-4    13-3    14-2    15-1    16-21   17-20   18-19/,
         %w/22-19   20-18   21-17   1-16    2-15    3-14    4-13    5-12    6-11    7-10    8-9/,
         %w/9-22    10-8    11-7    12-6    13-5    14-4    15-3    16-2    17-1    18-21   19-20/,
         %w/22-20   21-19   1-18    2-17    3-16    4-15    5-14    6-13    7-12    8-11    9-10/,
         %w/10-22   11-9    12-8    13-7    14-6    15-5    16-4    17-3    18-2    19-1    20-21/,
         %w/22-21   1-20    2-19    3-18    4-17    5-16    6-15    7-14    8-13    9-12    10-11/,
         %w/11-22   12-10   13-9    14-8    15-7    16-6    17-5    18-4    19-3    20-2    21-1/]
    end

    def setup        
    end

    def test_for_4
        table = Tournament.new(4)
        table.make_first_row
        table.make_other_rows
        assert_equal for_4, table.rounds, "The generated table for N=4 should be equal to the precalculated table"
    end

    def test_for_6
        table = Tournament.new(6)
        table.make_first_row
        table.make_other_rows
        assert_equal for_6, table.rounds, "The generated table for N=6 should be equal to the precalculated table"
    end

    def test_for_8
        table = Tournament.new(8)
        table.make_first_row
        table.make_other_rows
        assert_equal for_8, table.rounds, "The generated table for N=8 should be equal to the precalculated table"
    end

    def test_for_22
        table = Tournament.new(22)
        table.make_first_row
        table.make_other_rows
        assert_equal for_22, table.rounds, "The generated table for N=22 should be equal to the precalculated table"
    end

end