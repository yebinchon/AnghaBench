; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_hostapd_wmm_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_hostapd_wmm_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee802_11_elems = type { i32, i64 }
%struct.sta_info = type { i32 }
%struct.wmm_tspec_element = type { i32 }

@IEEE80211_HDRLEN = common dso_local global i64 0, align 8
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_STA_WMM = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"wmm action received is not from associated wmm station\00", align 1
@ParseFailed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"hostapd_wmm_action - could not parse wmm action\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"hostapd_wmm_action - missing or wrong length tspec\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"hostapd_wmm_action - unknown action code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_wmm_action(%struct.hostapd_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee802_11_elems, align 8
  %11 = alloca %struct.sta_info*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IEEE80211_HDRLEN, align 8
  %14 = sub i64 %12, %13
  %15 = sub i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %18 = bitcast %struct.ieee80211_mgmt* %17 to i32*
  %19 = load i64, i64* @IEEE80211_HDRLEN, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %21, i32** %9, align 8
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %23 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %22, i32 %25)
  store %struct.sta_info* %26, %struct.sta_info** %11, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %28 = icmp ne %struct.sta_info* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %34 = load i32, i32* @WLAN_STA_WMM, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %38 = load i32, i32* @WLAN_STA_WMM, align 4
  %39 = or i32 %37, %38
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29, %3
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %47 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %48 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %42, i32 %45, i32 %46, i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %111

49:                                               ; preds = %29
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %111

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @ieee802_11_parse_elems(i32* %54, i32 %55, %struct.ieee802_11_elems* %10, i32 1)
  %57 = load i64, i64* @ParseFailed, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %65 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %66 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %60, i32 %63, i32 %64, i32 %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %111

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 2
  br i1 %75, label %76, label %84

76:                                               ; preds = %71, %67
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %78 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %82 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %83 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %77, i32 %80, i32 %81, i32 %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %111

84:                                               ; preds = %71
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  switch i32 %92, label %102 [
    i32 130, label %93
  ]

93:                                               ; preds = %84
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %95 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %96 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 2
  %99 = inttoptr i64 %98 to %struct.wmm_tspec_element*
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @wmm_addts_req(%struct.hostapd_data* %94, %struct.ieee80211_mgmt* %95, %struct.wmm_tspec_element* %99, i64 %100)
  br label %111

102:                                              ; preds = %84
  %103 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %104 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %108 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %103, i32 %106, i32 %107, i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %102, %93, %76, %59, %52, %41
  ret void
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

declare dso_local i64 @ieee802_11_parse_elems(i32*, i32, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @wmm_addts_req(%struct.hostapd_data*, %struct.ieee80211_mgmt*, %struct.wmm_tspec_element*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
