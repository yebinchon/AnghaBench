; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_handle_radio_msmt_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_handle_radio_msmt_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@WLAN_EID_MEASURE_REPORT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bad Measurement Report element\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Measurement report mode 0x%x type %u\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Measurement report type %u is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*, i64)* @hostapd_handle_radio_msmt_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_handle_radio_msmt_report(%struct.hostapd_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %14, %struct.ieee80211_mgmt** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %10, align 8
  %18 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  br label %32

32:                                               ; preds = %102, %3
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @WLAN_EID_MEASURE_REPORT, align 4
  %42 = call i32* @get_ie(i32* %33, i32 %40, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %110

44:                                               ; preds = %32
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %110

52:                                               ; preds = %44
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %96 [
    i32 128, label %65
    i32 129, label %74
    i32 130, label %83
  ]

65:                                               ; preds = %52
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @hostapd_handle_lci_report(%struct.hostapd_data* %66, i32 %67, i32* %69, i32 %72)
  br label %102

74:                                               ; preds = %52
  %75 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hostapd_handle_range_report(%struct.hostapd_data* %75, i32 %76, i32* %78, i32 %81)
  br label %102

83:                                               ; preds = %52
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hostapd_handle_beacon_report(%struct.hostapd_data* %84, i32 %87, i32 %88, i32 %89, i32* %91, i32 %94)
  br label %102

96:                                               ; preds = %52
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %83, %74, %65
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32* %109, i32** %8, align 8
  br label %32

110:                                              ; preds = %49, %32
  ret void
}

declare dso_local i32* @get_ie(i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_handle_lci_report(%struct.hostapd_data*, i32, i32*, i32) #1

declare dso_local i32 @hostapd_handle_range_report(%struct.hostapd_data*, i32, i32*, i32) #1

declare dso_local i32 @hostapd_handle_beacon_report(%struct.hostapd_data*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
