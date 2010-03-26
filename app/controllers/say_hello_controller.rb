class SayHelloController < ApplicationController
  def showFamily(aClass,msg)
    if (aClass != nil) then
      msg += "<li>#{aClass}</li>"
      showFamily(aClass.superclass, msg)
    else
      return msg
    end
  end

  def index
    @class_hierarchy = "<ul>#{showFamily(self.class, "")}</ul>"
  end
end
