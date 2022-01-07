; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_sta_deauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_sta_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_DEAUTH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_HDRLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @hostap_sta_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_sta_deauth(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostap_driver_data*, align 8
  %11 = alloca %struct.ieee80211_mgmt, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %13, %struct.hostap_driver_data** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @is_broadcast_ether_addr(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

18:                                               ; preds = %4
  %19 = call i32 @memset(%struct.ieee80211_mgmt* %11, i32 0, i32 20)
  %20 = load i32, i32* @WLAN_FC_TYPE_MGMT, align 4
  %21 = load i32, i32* @WLAN_FC_STYPE_DEAUTH, align 4
  %22 = call i32 @IEEE80211_FC(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %11, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %11, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %25, i32* %26, i32 %27)
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %11, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  %34 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %11, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %35, i32* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @host_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %45 = bitcast %struct.ieee80211_mgmt* %11 to i32*
  %46 = load i64, i64* @IEEE80211_HDRLEN, align 8
  %47 = add i64 %46, 4
  %48 = call i32 @hostap_send_mlme(%struct.hostap_driver_data* %44, i32* %45, i64 %47, i32 0, i32 0, i32* null, i32 0)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %18, %17
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

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
