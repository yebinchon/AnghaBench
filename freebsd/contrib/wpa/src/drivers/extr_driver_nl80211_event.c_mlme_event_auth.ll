; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, %union.wpa_event_data*, i32, i64, %struct.TYPE_5__ }
%union.wpa_event_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"nl80211: Ignore auth event when using driver SME\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nl80211: Authenticate event\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"nl80211: Too short association event frame\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@EVENT_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32*, i64)* @mlme_event_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_auth(%struct.wpa_driver_nl80211_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca %union.wpa_event_data, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %102

24:                                               ; preds = %16, %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %28, %struct.ieee80211_mgmt** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %29, 40
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %102

34:                                               ; preds = %24
  %35 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @os_memcpy(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %43, i32 0, i32 1
  %45 = load %union.wpa_event_data*, %union.wpa_event_data** %44, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @os_memset(%union.wpa_event_data* %45, i32 0, i32 %46)
  %48 = call i32 @os_memset(%union.wpa_event_data* %8, i32 0, i32 48)
  %49 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @os_memcpy(i32 %51, i32 %54, i32 %55)
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le_to_host16(i32 %61)
  %63 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le_to_host16(i32 %69)
  %71 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_8__*
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le_to_host16(i32 %77)
  %79 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_8__*
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ugt i64 %81, 40
  br i1 %82, label %83, label %96

83:                                               ; preds = %34
  %84 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %91, 24
  %93 = sub i64 %92, 16
  %94 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_8__*
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %83, %34
  %97 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %98 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @EVENT_AUTH, align 4
  %101 = call i32 @wpa_supplicant_event(i32 %99, i32 %100, %union.wpa_event_data* %8)
  br label %102

102:                                              ; preds = %96, %31, %21
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i8* @le_to_host16(i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
