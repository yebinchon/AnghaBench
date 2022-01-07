; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_send_deauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_send_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_DEAUTH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_HDRLEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to send deauth: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*, i32)* @send_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_deauth(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_mgmt, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @os_memset(%struct.ieee80211_mgmt* %8, i32 0, i32 20)
  %10 = load i32, i32* @WLAN_FC_TYPE_MGMT, align 4
  %11 = load i32, i32* @WLAN_FC_STYPE_DEAUTH, align 4
  %12 = call i32 @IEEE80211_FC(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %8, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %8, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @os_memcpy(i32 %15, i32* %16, i32 %17)
  %19 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %8, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @os_memcpy(i32 %20, i32* %23, i32 %24)
  %26 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @os_memcpy(i32 %27, i32* %30, i32 %31)
  %33 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @host_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @hostapd_drv_send_mlme(%struct.hostapd_data* %42, %struct.ieee80211_mgmt* %8, i32 %43, i32 0)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @strerror(i32 %48)
  %50 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @os_memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @IEEE80211_FC(i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @host_to_le16(i32) #1

declare dso_local i64 @hostapd_drv_send_mlme(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
