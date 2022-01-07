; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_sta_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_sta_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_DISASSOC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_HDRLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @hostap_sta_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_sta_disassoc(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostap_driver_data*, align 8
  %10 = alloca %struct.ieee80211_mgmt, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %12, %struct.hostap_driver_data** %9, align 8
  %13 = call i32 @memset(%struct.ieee80211_mgmt* %10, i32 0, i32 20)
  %14 = load i32, i32* @WLAN_FC_TYPE_MGMT, align 4
  %15 = load i32, i32* @WLAN_FC_STYPE_DISASSOC, align 4
  %16 = call i32 @IEEE80211_FC(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %10, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %10, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @memcpy(i32 %19, i32* %20, i32 %21)
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %10, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32 %24, i32* %25, i32 %26)
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %10, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %29, i32* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @host_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %10, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %9, align 8
  %39 = bitcast %struct.ieee80211_mgmt* %10 to i32*
  %40 = load i64, i64* @IEEE80211_HDRLEN, align 8
  %41 = add i64 %40, 4
  %42 = call i32 @hostap_send_mlme(%struct.hostap_driver_data* %38, i32* %39, i64 %41, i32 0, i32 0, i32* null, i32 0)
  ret i32 %42
}

declare dso_local i32 @memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @IEEE80211_FC(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @host_to_le16(i32) #1

declare dso_local i32 @hostap_send_mlme(%struct.hostap_driver_data*, i32*, i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
