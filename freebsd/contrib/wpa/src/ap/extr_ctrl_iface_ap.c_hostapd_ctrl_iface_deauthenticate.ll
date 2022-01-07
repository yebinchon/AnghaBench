; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_deauthenticate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_deauthenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 (i32, i32*, i64, i32)* }
%struct.sta_info = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_REASON_PREV_AUTH_NOT_VALID = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL_IFACE DEAUTHENTICATE %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" reason=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" test=\00", align 1
@WLAN_FC_TYPE_MGMT = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_HDRLEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" tx=0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_ctrl_iface_deauthenticate(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_mgmt, align 4
  %13 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i8*, i8** @WLAN_REASON_PREV_AUTH_NOT_VALID, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @wpa_dbg(i32 %21, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @hwaddr_aton(i8* %25, i32* %17)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %136

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @os_strstr(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = call i8* @atoi(i8* %36)
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @os_strstr(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %106

43:                                               ; preds = %38
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64 (i32, i32*, i64, i32)*, i64 (i32, i32*, i64, i32)** %52, align 8
  %54 = icmp ne i64 (i32, i32*, i64, i32)* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %43
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %136

56:                                               ; preds = %48
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @atoi(i8* %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = call i32 @os_memset(%struct.ieee80211_mgmt* %12, i32 0, i32 20)
  %63 = load i32, i32* @WLAN_FC_TYPE_MGMT, align 4
  %64 = load i32, i32* @WLAN_FC_STYPE_DEAUTH, align 4
  %65 = call i32 @IEEE80211_FC(i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @os_memcpy(i32 %68, i32* %17, i32 %69)
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %74 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i32 @os_memcpy(i32 %72, i32* %75, i32 %76)
  %78 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %81 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = call i32 @os_memcpy(i32 %79, i32* %82, i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @host_to_le16(i8* %85)
  %87 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %91 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64 (i32, i32*, i64, i32)*, i64 (i32, i32*, i64, i32)** %93, align 8
  %95 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %96 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = bitcast %struct.ieee80211_mgmt* %12 to i32*
  %99 = load i64, i64* @IEEE80211_HDRLEN, align 8
  %100 = add i64 %99, 4
  %101 = load i32, i32* %13, align 4
  %102 = call i64 %94(i32 %97, i32* %98, i64 %100, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %56
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %136

105:                                              ; preds = %56
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %136

106:                                              ; preds = %38
  %107 = load i8*, i8** %5, align 8
  %108 = call i8* @os_strstr(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %112 = call i32 @hostapd_drv_sta_remove(%struct.hostapd_data* %111, i32* %17)
  br label %117

113:                                              ; preds = %106
  %114 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @hostapd_drv_sta_deauth(%struct.hostapd_data* %114, i32* %17, i8* %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %119 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %118, i32* %17)
  store %struct.sta_info* %119, %struct.sta_info** %8, align 8
  %120 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %121 = icmp ne %struct.sta_info* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %124 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @ap_sta_deauthenticate(%struct.hostapd_data* %123, %struct.sta_info* %124, i8* %125)
  br label %135

127:                                              ; preds = %117
  %128 = getelementptr inbounds i32, i32* %17, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %133 = call i32 @hostapd_free_stas(%struct.hostapd_data* %132)
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %122
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %136

136:                                              ; preds = %135, %105, %104, %55, %28
  %137 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*, i8*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i8* @os_strstr(i8*, i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @os_memset(%struct.ieee80211_mgmt*, i32, i32) #2

declare dso_local i32 @IEEE80211_FC(i32, i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @host_to_le16(i8*) #2

declare dso_local i32 @hostapd_drv_sta_remove(%struct.hostapd_data*, i32*) #2

declare dso_local i32 @hostapd_drv_sta_deauth(%struct.hostapd_data*, i32*, i8*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #2

declare dso_local i32 @ap_sta_deauthenticate(%struct.hostapd_data*, %struct.sta_info*, i8*) #2

declare dso_local i32 @hostapd_free_stas(%struct.hostapd_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
