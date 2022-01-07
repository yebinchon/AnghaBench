; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_check_multi_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_check_multi_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { i32, i32 }

@WLAN_STA_MULTI_AP = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MULTI_AP_SUB_ELEM_TYPE = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Multi-AP IE has missing or invalid Multi-AP subelement\00", align 1
@WLAN_STATUS_INVALID_IE = common dso_local global i32 0, align 4
@MULTI_AP_BACKHAUL_STA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Multi-AP IE with unexpected value 0x%02x\00", align 1
@FRONTHAUL_BSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Non-Multi-AP STA tries to associate with backhaul-only BSS\00", align 1
@WLAN_STATUS_ASSOC_DENIED_UNSPEC = common dso_local global i32 0, align 4
@BACKHAUL_BSS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Backhaul STA tries to associate with fronthaul-only BSS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i32*, i64)* @check_multi_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_multi_ap(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @WLAN_STA_MULTI_AP, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %25, i32* %5, align 4
  br label %122

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i64, i64* %9, align 8
  %33 = sub i64 %32, 4
  %34 = load i32, i32* @MULTI_AP_SUB_ELEM_TYPE, align 4
  %35 = call i32* @get_ie(i32* %31, i64 %33, i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  br label %56

47:                                               ; preds = %38, %29
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %53 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %54 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %48, i32 %51, i32 %52, i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @WLAN_STATUS_INVALID_IE, align 4
  store i32 %55, i32* %5, align 4
  br label %122

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %26
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @MULTI_AP_BACKHAUL_STA, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %70 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %65, i32 %68, i32 %69, i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %64, %60, %57
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @MULTI_AP_BACKHAUL_STA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %80 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FRONTHAUL_BSS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %88, i32* %5, align 4
  br label %122

89:                                               ; preds = %78
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %91 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %95 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %96 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %90, i32 %93, i32 %94, i32 %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @WLAN_STATUS_ASSOC_DENIED_UNSPEC, align 4
  store i32 %97, i32* %5, align 4
  br label %122

98:                                               ; preds = %73
  %99 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %100 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BACKHAUL_BSS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %98
  %108 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %109 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %113 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %114 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %108, i32 %111, i32 %112, i32 %113, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %107, %98
  %116 = load i32, i32* @WLAN_STA_MULTI_AP, align 4
  %117 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %89, %87, %47, %24
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32* @get_ie(i32*, i64, i32) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
