require 'ruble'

command t(:run_single_example) do |cmd|
  cmd.key_binding = 'F9'
  cmd.scope = 'source.ruby.rspec'
  cmd.output = :show_as_html
  cmd.input = :selection, :line
  cmd.invoke do |context| 
    require ENV['TM_BUNDLE_SUPPORT'] + "/lib/spec/mate"
  
    Spec::Mate::Runner.new.run_focussed STDOUT
  end  
end
