; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_handle_tx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_handle_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32*, i32, i32, i32 }

@EVENT_TX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostap_driver_data*, i32*, i64, i32)* @handle_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tx_callback(%struct.hostap_driver_data* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hostap_driver_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.wpa_event_data, align 8
  store %struct.hostap_driver_data* %0, %struct.hostap_driver_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %9, align 8
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le_to_host16(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = call i32 @os_memset(%union.wpa_event_data* %11, i32 0, i32 40)
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @WLAN_FC_GET_TYPE(i32 %19)
  %21 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @WLAN_FC_GET_STYPE(i32 %23)
  %25 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %5, align 8
  %42 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EVENT_TX_STATUS, align 4
  %45 = call i32 @wpa_supplicant_event(i32 %43, i32 %44, %union.wpa_event_data* %11)
  ret void
}

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
