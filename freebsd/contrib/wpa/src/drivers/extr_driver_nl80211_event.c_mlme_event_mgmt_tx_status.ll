; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_mgmt_tx_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_mgmt_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32*, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nl80211: Frame TX status event\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"nl80211: Action TX status: cookie=0x%llx%s (ack=%d)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (match)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" (unknown)\00", align 1
@EVENT_TX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr*, i32*, i64, %struct.nlattr*)* @mlme_event_mgmt_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_mgmt_tx_status(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr* %1, i32* %2, i64 %3, %struct.nlattr* %4) #0 {
  %6 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %union.wpa_event_data, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %6, align 8
  store %struct.nlattr* %1, %struct.nlattr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.nlattr* %4, %struct.nlattr** %10, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @is_ap_interface(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %5
  %23 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %86

26:                                               ; preds = %22
  %27 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %28 = call i64 @nla_get_u64(%struct.nlattr* %27)
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %38 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %30, i8* %37, i32 %40)
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %86

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48, %5
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast i32* %50 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %51, %struct.ieee80211_hdr** %12, align 8
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le_to_host16(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = call i32 @os_memset(%union.wpa_event_data* %11, i32 0, i32 40)
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @WLAN_FC_GET_TYPE(i32 %57)
  %59 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @WLAN_FC_GET_STYPE(i32 %61)
  %63 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  %78 = zext i1 %77 to i32
  %79 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @EVENT_TX_STATUS, align 4
  %85 = call i32 @wpa_supplicant_event(i32 %83, i32 %84, %union.wpa_event_data* %11)
  br label %86

86:                                               ; preds = %49, %47, %25
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @is_ap_interface(i32) #1

declare dso_local i64 @nla_get_u64(%struct.nlattr*) #1

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
