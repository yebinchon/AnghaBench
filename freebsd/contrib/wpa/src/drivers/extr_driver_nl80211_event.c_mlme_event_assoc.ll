; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%union.wpa_event_data = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i64, i64, i32*, i32 }

@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"nl80211: Ignore assoc event when using driver SME\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"nl80211: Associate event\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"nl80211: Too short association event frame\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EVENT_ASSOC_REJECT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"nl80211: Set drv->ssid based on scan res info to '%s'\00", align 1
@EVENT_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32*, i64, %struct.nlattr*, %struct.nlattr*)* @mlme_event_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_assoc(%struct.wpa_driver_nl80211_data* %0, i32* %1, i64 %2, %struct.nlattr* %3, %struct.nlattr* %4) #0 {
  %6 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  %12 = alloca %union.wpa_event_data, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.nlattr* %3, %struct.nlattr** %9, align 8
  store %struct.nlattr* %4, %struct.nlattr** %10, align 8
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %5
  %23 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %179

30:                                               ; preds = %22, %5
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %7, align 8
  %34 = bitcast i32* %33 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %34, %struct.ieee80211_mgmt** %11, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %35, 40
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %179

40:                                               ; preds = %30
  %41 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le_to_host16(i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %40
  %51 = call i32 @os_memset(%union.wpa_event_data* %12, i32 0, i32 48)
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 40
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_8__*
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %68, 24
  %70 = sub i64 %69, 16
  %71 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_8__*
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %59, %50
  %74 = load i64, i64* %13, align 8
  %75 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %78 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EVENT_ASSOC_REJECT, align 4
  %81 = call i32 @wpa_supplicant_event(i32 %79, i32 %80, %union.wpa_event_data* %12)
  br label %179

82:                                               ; preds = %40
  %83 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %84 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %86 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @os_memcpy(i32 %87, i32 %90, i32 %91)
  %93 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %94 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %97 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = call i32 @os_memcpy(i32 %95, i32 %98, i32 %99)
  %101 = call i32 @os_memset(%union.wpa_event_data* %12, i32 0, i32 48)
  %102 = load i32*, i32** %7, align 8
  %103 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 7
  store i32* %102, i32** %104, align 8
  %105 = load i64, i64* %8, align 8
  %106 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ugt i64 %108, 40
  br i1 %109, label %110, label %124

110:                                              ; preds = %82
  %111 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %112 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 6
  store i32* %116, i32** %118, align 8
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 %119, 24
  %121 = sub i64 %120, 16
  %122 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %110, %82
  %125 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %126 = icmp ne %struct.nlattr* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %129 = call i32 @nla_data(%struct.nlattr* %128)
  %130 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %133 = call i32 @nla_len(%struct.nlattr* %132)
  %134 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %127, %124
  %137 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %138 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %139 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @nl80211_get_assoc_ssid(%struct.wpa_driver_nl80211_data* %137, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %147 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %150 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %153 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @wpa_ssid_txt(i32 %151, i32 %154)
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %144, %136
  %158 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %159 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %164 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %167 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %166, i32 0, i32 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 4
  %170 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %171 = bitcast %union.wpa_event_data* %12 to %struct.TYPE_12__*
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = call i32 @nl80211_parse_wmm_params(%struct.nlattr* %170, i32* %172)
  %174 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %6, align 8
  %175 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @EVENT_ASSOC, align 4
  %178 = call i32 @wpa_supplicant_event(i32 %176, i32 %177, %union.wpa_event_data* %12)
  br label %179

179:                                              ; preds = %157, %73, %37, %27
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @le_to_host16(i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nl80211_get_assoc_ssid(%struct.wpa_driver_nl80211_data*, i32) #1

declare dso_local i32 @wpa_ssid_txt(i32, i32) #1

declare dso_local i32 @nl80211_parse_wmm_params(%struct.nlattr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
