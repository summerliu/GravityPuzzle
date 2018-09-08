class GravityPuzzleEm
  def columns(answer)
    # define an empty array
    columns = []
    # iterate the array
    answer.each do |string|
      # iterate the string
      # => ["#", "."], [".", "#"], ["#", "#"]
      string.split("").each_with_index do |char, index|
        # if the columns/array is empty then push the char indside the columns
        if columns[index]
          columns[index] << char
        # else make it in an array and push it to the masterarray
        else
          columns[index] = [char]
        end
      end
    end
    # will be an array of arraies of strings
    # => [["#", "."], [".", "#"], ["#", "#"]]
    return columns
  end

  # run the previous method and store it in a var
  columns = columns(answer)

  def swap(columns)
    # awap the order in the list
    columns.map! do |col|
      col.sort.reverse!
    end
  end
end
