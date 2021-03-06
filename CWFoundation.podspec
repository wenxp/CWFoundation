#
#  Be sure to run `pod spec lint CWFoundation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CWFoundation"
  s.version      = "0.0.5"
  s.summary      = "CWFoundation is a collection of utility methods and category extensions for Foundation and UIKit classes to accelerate development."
  s.homepage     = "https://github.com/guojiubo/CWFoundation"
  s.license      = "MIT"
  s.author       = { "guojiubo" => "guojiubo@gmail.com" }
  s.platform     = :ios
  s.platform     = :ios, "6.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/guojiubo/CWFoundation.git", :tag => "0.0.5" }
  s.source_files = "CWFoundation/*.{h,m}"
  s.frameworks = 'Foundation', 'UIKit'

  s.subspec 'Foundation+CWAdditions' do |ss|
    ss.source_files = 'CWFoundation/Foundation+CWAdditions/*.{h,m}'
  end

  s.subspec 'UIKit+CWAdditions' do |ss|
    ss.source_files = 'CWFoundation/UIKit+CWAdditions/*.{h,m}'
  end

  s.subspec 'Utilities' do |ss|
    ss.source_files = 'CWFoundation/Utilities/*.{h,m}'
    ss.dependency 'CWFoundation/Foundation+CWAdditions'
  end

end
