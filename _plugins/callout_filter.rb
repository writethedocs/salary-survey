module Jekyll
  module CalloutFilter
    def convert_callouts(input)
      input.gsub(/\[!NOTE\](.*?)\n/, '<div class="note"><strong>Note:</strong>\1</div>')
           .gsub(/\[!WARNING\](.*?)\n/, '<div class="warning"><strong>Warning:</strong>\1</div>')
           .gsub(/\[!INFO\](.*?)\n/, '<div class="info"><strong>Info:</strong>\1</div>')
    end
  end
end

Liquid::Template.register_filter(Jekyll::CalloutFilter)
