; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wnm_ap.c_wnm_send_ess_disassoc_imminent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wnm_ap.c_wnm_send_ess_disassoc_imminent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i8* }
%struct.sta_info = type { i8* }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i32*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32, i32 }

@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_ACTION = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_ACTION_WNM = common dso_local global i32 0, align 4
@WNM_BSS_TRANS_MGMT_REQ = common dso_local global i32 0, align 4
@WNM_BSS_TM_REQ_DISASSOC_IMMINENT = common dso_local global i32 0, align 4
@WNM_BSS_TM_REQ_ESS_DISASSOC_IMMINENT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to send BSS Transition Management Request frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wnm_send_ess_disassoc_imminent(%struct.hostapd_data* %0, %struct.sta_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1000 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  %13 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds [1000 x i32], [1000 x i32]* %10, i64 0, i64 0
  %15 = call i32 @os_memset(i32* %14, i32 0, i32 4000)
  %16 = getelementptr inbounds [1000 x i32], [1000 x i32]* %10, i64 0, i64 0
  %17 = bitcast i32* %16 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %17, %struct.ieee80211_mgmt** %12, align 8
  %18 = load i32, i32* @WLAN_FC_TYPE_MGMT, align 4
  %19 = load i32, i32* @WLAN_FC_STYPE_ACTION, align 4
  %20 = call i32 @IEEE80211_FC(i32 %18, i32 %19)
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* @ETH_ALEN, align 8
  %30 = call i32 @os_memcpy(i32* %25, i8* %28, i64 %29)
  %31 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* @ETH_ALEN, align 8
  %38 = call i32 @os_memcpy(i32* %33, i8* %36, i64 %37)
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* @ETH_ALEN, align 8
  %46 = call i32 @os_memcpy(i32* %41, i8* %44, i64 %45)
  %47 = load i32, i32* @WLAN_ACTION_WNM, align 4
  %48 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* @WNM_BSS_TRANS_MGMT_REQ, align 4
  %53 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  store i32 %52, i32* %58, align 4
  %59 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @WNM_BSS_TM_REQ_DISASSOC_IMMINENT, align 4
  %66 = load i32, i32* @WNM_BSS_TM_REQ_ESS_DISASSOC_IMMINENT, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %69 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @host_to_le16(i32 %74)
  %76 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i32 %75, i32* %81, align 8
  %82 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %83 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %89 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %11, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i64 @os_strlen(i8* %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp ugt i64 %97, 255
  br i1 %98, label %99, label %100

99:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %135

100:                                              ; preds = %4
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @os_memcpy(i32* %105, i8* %106, i64 %107)
  %109 = load i64, i64* %13, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  store i32* %111, i32** %11, align 8
  %112 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %113 = getelementptr inbounds [1000 x i32], [1000 x i32]* %10, i64 0, i64 0
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds [1000 x i32], [1000 x i32]* %10, i64 0, i64 0
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i64 @hostapd_drv_send_mlme(%struct.hostapd_data* %112, i32* %113, i32 %120, i32 0)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %100
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 @wpa_printf(i32 %124, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %135

126:                                              ; preds = %100
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %131 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @set_disassoc_timer(%struct.hostapd_data* %130, %struct.sta_info* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %126
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %123, %99
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @IEEE80211_FC(i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @host_to_le16(i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @hostapd_drv_send_mlme(%struct.hostapd_data*, i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @set_disassoc_timer(%struct.hostapd_data*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
