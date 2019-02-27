PATHNAME=(ARGV[0])
unless PATHNAME
  PATHNAME= __dir__
end

dir = Dir.new(PATHNAME)

dir.each do |f|
  if f.end_with?('.rhtml')
    File.rename(PATHNAME + '/' + f, PATHNAME + '/' + f.chomp(".rhtml") + ".html.erb")
  end
end
