; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_send_action_cb_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_send_action_cb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atheros_driver_data = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32*, i32, i32, i32 }
%struct.ieee80211_send_action_cb = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"athr: Too short event message (data_len=%d sizeof(*sa)=%d)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"athr: Short event message\00", align 1
@EVENT_TX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atheros_driver_data*, i8*, i64)* @send_action_cb_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_action_cb_event(%struct.atheros_driver_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.atheros_driver_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.wpa_event_data, align 8
  %8 = alloca %struct.ieee80211_send_action_cb*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.atheros_driver_data* %0, %struct.atheros_driver_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 32
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %16, i32 8)
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @wpa_hexdump(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %19, i64 %20)
  br label %64

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.ieee80211_send_action_cb*
  store %struct.ieee80211_send_action_cb* %24, %struct.ieee80211_send_action_cb** %8, align 8
  %25 = load %struct.ieee80211_send_action_cb*, %struct.ieee80211_send_action_cb** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_send_action_cb, %struct.ieee80211_send_action_cb* %25, i64 1
  %27 = bitcast %struct.ieee80211_send_action_cb* %26 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %27, %struct.ieee80211_hdr** %9, align 8
  %28 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le_to_host16(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = call i32 @os_memset(%union.wpa_event_data* %7, i32 0, i32 40)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @WLAN_FC_GET_TYPE(i32 %33)
  %35 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @WLAN_FC_GET_STYPE(i32 %37)
  %39 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_send_action_cb*, %struct.ieee80211_send_action_cb** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_send_action_cb, %struct.ieee80211_send_action_cb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %47 = bitcast %struct.ieee80211_hdr* %46 to i32*
  %48 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, 8
  %52 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ieee80211_send_action_cb*, %struct.ieee80211_send_action_cb** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_send_action_cb, %struct.ieee80211_send_action_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.wpa_event_data* %7 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %60 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EVENT_TX_STATUS, align 4
  %63 = call i32 @wpa_supplicant_event(i32 %61, i32 %62, %union.wpa_event_data* %7)
  br label %64

64:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i64) #1

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
