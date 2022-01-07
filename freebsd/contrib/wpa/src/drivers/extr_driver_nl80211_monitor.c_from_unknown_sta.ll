; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_from_unknown_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_from_unknown_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WLAN_FC_FROMDS = common dso_local global i32 0, align 4
@WLAN_FC_TODS = common dso_local global i32 0, align 4
@EVENT_RX_FROM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32*, i64)* @from_unknown_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @from_unknown_sta(%struct.wpa_driver_nl80211_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.wpa_event_data, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le_to_host16(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = call i32 @os_memset(%union.wpa_event_data* %9, i32 0, i32 12)
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @get_hdr_bssid(%struct.ieee80211_hdr* %22, i64 %23)
  %25 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WLAN_FC_FROMDS, align 4
  %34 = load i32, i32* @WLAN_FC_TODS, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @WLAN_FC_FROMDS, align 4
  %38 = load i32, i32* @WLAN_FC_TODS, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EVENT_RX_FROM_UNKNOWN, align 4
  %48 = call i32 @wpa_supplicant_event(i32 %46, i32 %47, %union.wpa_event_data* %9)
  br label %49

49:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @get_hdr_bssid(%struct.ieee80211_hdr*, i64) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
