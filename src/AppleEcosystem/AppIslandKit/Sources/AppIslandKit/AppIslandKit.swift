import UIKit
import Foundation

struct AppIslandKit {
	public let baseAppIslandUrlScheme = URL(string: "appisland://")
  private let logPrefix = "AppIslandKit: "

	public func checkAppIslandStatus() -> String {
		var status = "Unknown"
		// UIApplication.shared.open(baseAppIslandUrlScheme! + "ping") { (result) in
    // 	if result == true {
    //    	print(logPrefix + "AppIsland is installed and responded to ping successfully")
		// 		status = "InstalledAndRespondsToPingSuccessfully"
    // 	} else {
		// 		print(logPrefix + "AppIsland is installed and responded to ping unsuccessfully")
		// 		status = "InstalledAndRespondsToPingUnsuccessfully"
		// 	}
		// }
	  UIApplication.canOpenURL(url: baseAppIslandUrlScheme) { (result) in
			if result == true {
				print(logPrefix + "AppIsland is installed") // but didn't respond to ping at all
				status = "Installed" // ButDoesNotRespondToPing
			} else {
				print(logPrefix + "AppIsland isn't installed")
				status = "NotInstalled"
			}
		}
		return status
	}
}
