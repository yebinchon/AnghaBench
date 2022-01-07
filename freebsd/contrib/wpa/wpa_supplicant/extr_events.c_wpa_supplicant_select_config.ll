; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_select_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_select_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_ssid*, i32, i32, %struct.TYPE_2__* }
%struct.wpa_ssid = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SSID_MAX_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read SSID from driver\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Driver-initiated BSS selection changed the SSID to %s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Select network based on association information\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"No network configuration found for the current AP\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Selected network is disabled\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Selected BSS is disallowed\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Selected network is temporarily disabled for %d second(s)\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Network configuration found for the current AP\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Could not set WPA suites\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpa_supplicant_select_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_select_config(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [80 x i32], align 16
  %12 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %13 = load i32, i32* @SSID_MAX_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %73

23:                                               ; preds = %1
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 0
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %25, align 8
  %27 = icmp ne %struct.wpa_ssid* %26, null
  br i1 %27, label %28, label %73

28:                                               ; preds = %23
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = call i32 @wpa_supplicant_update_current_bss(%struct.wpa_supplicant* %29)
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 0
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %32, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

38:                                               ; preds = %28
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = call i32 @wpa_drv_get_ssid(%struct.wpa_supplicant* %39, i32* %16)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %44, i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 0
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %52, align 8
  %54 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 0
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %59, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @os_memcmp(i32* %16, i32 %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

67:                                               ; preds = %57, %47
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @wpa_ssid_txt(i32* %16, i64 %70)
  %72 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %68, i32 %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %23, %1
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %74, i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %78 = call %struct.wpa_ssid* @wpa_supplicant_get_ssid(%struct.wpa_supplicant* %77)
  store %struct.wpa_ssid* %78, %struct.wpa_ssid** %4, align 8
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %80 = icmp eq %struct.wpa_ssid* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %83 = load i32, i32* @MSG_INFO, align 4
  %84 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %82, i32 %83, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

85:                                               ; preds = %73
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %87 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %88 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %86, %struct.wpa_ssid* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

94:                                               ; preds = %85
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @disallowed_bssid(%struct.wpa_supplicant* %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %94
  %102 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %103 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %104 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %107 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @disallowed_ssid(%struct.wpa_supplicant* %102, i32 %105, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101, %94
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %112, i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

115:                                              ; preds = %101
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %117 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %118 = call i32 @wpas_temp_disabled(%struct.wpa_supplicant* %116, %struct.wpa_ssid* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %122, i32 %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

126:                                              ; preds = %115
  %127 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %127, i32 %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %130 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %131 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @wpa_key_mgmt_wpa_any(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %126
  store i64 320, i64* %12, align 8
  %136 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %137 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %138 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %139 = call i64 @wpa_supplicant_set_suites(%struct.wpa_supplicant* %136, i32* null, %struct.wpa_ssid* %137, i32* %138, i64* %12)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %142, i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %135
  br label %150

146:                                              ; preds = %126
  %147 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %149 = call i32 @wpa_supplicant_set_non_wpa_policy(%struct.wpa_supplicant* %147, %struct.wpa_ssid* %148)
  br label %150

150:                                              ; preds = %146, %145
  %151 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %152 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %151, i32 0, i32 0
  %153 = load %struct.wpa_ssid*, %struct.wpa_ssid** %152, align 8
  %154 = icmp ne %struct.wpa_ssid* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %157 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %156, i32 0, i32 0
  %158 = load %struct.wpa_ssid*, %struct.wpa_ssid** %157, align 8
  %159 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %160 = icmp ne %struct.wpa_ssid* %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %163 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @eapol_sm_invalidate_cached_session(i32 %164)
  br label %166

166:                                              ; preds = %161, %155, %150
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %168 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %167, i32 0, i32 0
  %169 = load %struct.wpa_ssid*, %struct.wpa_ssid** %168, align 8
  store %struct.wpa_ssid* %169, %struct.wpa_ssid** %5, align 8
  %170 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %171 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %172 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %171, i32 0, i32 0
  store %struct.wpa_ssid* %170, %struct.wpa_ssid** %172, align 8
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %174 = call i32 @wpa_supplicant_update_current_bss(%struct.wpa_supplicant* %173)
  %175 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %176 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %177 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %176, i32 0, i32 0
  %178 = load %struct.wpa_ssid*, %struct.wpa_ssid** %177, align 8
  %179 = call i32 @wpa_supplicant_rsn_supp_set_config(%struct.wpa_supplicant* %175, %struct.wpa_ssid* %178)
  %180 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %181 = call i32 @wpa_supplicant_initiate_eapol(%struct.wpa_supplicant* %180)
  %182 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %183 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %184 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %183, i32 0, i32 0
  %185 = load %struct.wpa_ssid*, %struct.wpa_ssid** %184, align 8
  %186 = icmp ne %struct.wpa_ssid* %182, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %166
  %188 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %189 = call i32 @wpas_notify_network_changed(%struct.wpa_supplicant* %188)
  br label %190

190:                                              ; preds = %187, %166
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %191

191:                                              ; preds = %190, %121, %111, %90, %81, %66, %43, %37
  %192 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_supplicant_update_current_bss(%struct.wpa_supplicant*) #2

declare dso_local i32 @wpa_drv_get_ssid(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #2

declare dso_local i64 @os_memcmp(i32*, i32, i64) #2

declare dso_local i32 @wpa_ssid_txt(i32*, i64) #2

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #2

declare dso_local %struct.wpa_ssid* @wpa_supplicant_get_ssid(%struct.wpa_supplicant*) #2

declare dso_local i64 @wpas_network_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i64 @disallowed_bssid(%struct.wpa_supplicant*, i32) #2

declare dso_local i64 @disallowed_ssid(%struct.wpa_supplicant*, i32, i64) #2

declare dso_local i32 @wpas_temp_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i64 @wpa_key_mgmt_wpa_any(i32) #2

declare dso_local i64 @wpa_supplicant_set_suites(%struct.wpa_supplicant*, i32*, %struct.wpa_ssid*, i32*, i64*) #2

declare dso_local i32 @wpa_supplicant_set_non_wpa_policy(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i32 @eapol_sm_invalidate_cached_session(i32) #2

declare dso_local i32 @wpa_supplicant_rsn_supp_set_config(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i32 @wpa_supplicant_initiate_eapol(%struct.wpa_supplicant*) #2

declare dso_local i32 @wpas_notify_network_changed(%struct.wpa_supplicant*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
