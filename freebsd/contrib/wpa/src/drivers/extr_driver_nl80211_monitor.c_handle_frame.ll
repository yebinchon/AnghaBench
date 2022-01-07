; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_handle_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@EVENT_RX_MGMT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32*, i64, i32, i32)* @handle_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_frame(%struct.wpa_driver_nl80211_data* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.wpa_event_data, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %11, align 8
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le_to_host16(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @WLAN_FC_GET_TYPE(i32 %20)
  switch i32 %21, label %53 [
    i32 128, label %22
    i32 130, label %41
    i32 129, label %48
  ]

22:                                               ; preds = %5
  %23 = call i32 @os_memset(%union.wpa_event_data* %13, i32 0, i32 24)
  %24 = load i32*, i32** %7, align 8
  %25 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EVENT_RX_MGMT, align 4
  %40 = call i32 @wpa_supplicant_event(i32 %38, i32 %39, %union.wpa_event_data* %13)
  br label %53

41:                                               ; preds = %5
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @from_unknown_sta(%struct.wpa_driver_nl80211_data* %44, i32* %45, i64 %46)
  br label %53

48:                                               ; preds = %5
  %49 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @from_unknown_sta(%struct.wpa_driver_nl80211_data* %49, i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %5, %48, %41, %22
  ret void
}

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @from_unknown_sta(%struct.wpa_driver_nl80211_data*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
