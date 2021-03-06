require 'pry'

class MP3Importer

  attr_accessor :path, :filename
  
  def initialize(path) 
    @path = path
    @filename = filename
  end
  
  def files
    current_dir = Dir.getwd
    Dir.chdir(@path)
    @filename = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    @filename
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
  

end