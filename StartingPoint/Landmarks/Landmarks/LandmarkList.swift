//
//  LandmarkList.swift
//  Landmarks
//
//  Created by thisdjango on 13.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView(){
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationBarTitle(Text("landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro(12.9-inch)"], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
