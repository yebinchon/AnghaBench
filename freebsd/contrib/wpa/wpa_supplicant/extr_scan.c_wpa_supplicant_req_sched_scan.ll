; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_req_sched_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_req_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.wpa_ssid*, i64, i64, %struct.TYPE_6__*, %struct.sched_scan_plan*, %struct.wpa_driver_scan_params*, i64, i64, i32 }
%struct.wpa_ssid = type { i64, %struct.wpa_ssid*, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.wpa_ssid*, i64 }
%struct.sched_scan_plan = type { i32, i64 }
%struct.wpa_driver_scan_params = type { i32, i64, i32, i32, i32, i32, %struct.sched_scan_plan*, %struct.TYPE_7__*, i64, i64, i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.wpabuf = type { i32 }

@WPAS_MAX_SCAN_SSIDS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Already sched scanning\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Use normal scan instead of sched_scan for initial scans (normal_scans=%d)\00", align 1
@WPA_DISCONNECTED = common dso_local global i64 0, align 8
@WPA_INACTIVE = common dso_local global i64 0, align 8
@WPA_SCANNING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Beginning of SSID list\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Add wildcard SSID to sched_scan\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"add to filter ssid: %s\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Not enough room for SSID filter for sched_scan - drop filter\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"add to active scan ssid: %s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Optimize scan based on conf->freq_list\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Too many SSIDs. Default to using single scheduled_scan plan\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"Scan interval too long(%u), use the maximum allowed(%u)\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Starting sched scan after %u seconds: interval %u timeout %d\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Starting sched scan after %u seconds (no timeout)\00", align 1
@MAC_ADDR_RAND_SCHED_SCAN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to initiate sched scan\00", align 1
@wpa_supplicant_sched_scan_timeout = common dso_local global i32 0, align 4
@OCE_STA = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_req_sched_scan(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_driver_scan_params, align 8
  %5 = alloca %struct.wpa_driver_scan_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sched_scan_plan, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 19
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %721

19:                                               ; preds = %1
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WPAS_MAX_SCAN_SSIDS, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @WPAS_MAX_SCAN_SSIDS, align 4
  store i32 %26, i32* %10, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %32, 1
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 14
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4
  br label %721

42:                                               ; preds = %34
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 18
  store i64 0, i64* %44, align 8
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 17
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %50, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %721

53:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 14
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %57, align 8
  store %struct.wpa_ssid* %58, %struct.wpa_ssid** %7, align 8
  br label %59

59:                                               ; preds = %88, %53
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %61 = icmp ne %struct.wpa_ssid* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %65 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %63, %struct.wpa_ssid* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %69 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %87

73:                                               ; preds = %67, %62
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %76 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %74, %struct.wpa_ssid* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %80 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %78, %73
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %90 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %89, i32 0, i32 1
  %91 = load %struct.wpa_ssid*, %struct.wpa_ssid** %90, align 8
  store %struct.wpa_ssid* %91, %struct.wpa_ssid** %7, align 8
  br label %59

92:                                               ; preds = %59
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %100 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 3
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %106 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sle i32 %104, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109, %103
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %119 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %116, i32 %117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  store i32 -1, i32* %2, align 4
  br label %721

122:                                              ; preds = %109, %98
  %123 = call i32 @os_memset(%struct.wpa_driver_scan_params* %4, i32 0, i32 96)
  %124 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %125 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.TYPE_7__* @os_calloc(i64 %126, i32 4)
  %128 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %128, align 8
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %130 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %6, align 4
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %133 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @WPA_DISCONNECTED, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %145, label %138

138:                                              ; preds = %122
  %139 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %140 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @WPA_INACTIVE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138, %122
  %146 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %147 = load i64, i64* @WPA_SCANNING, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @wpa_supplicant_set_state(%struct.wpa_supplicant* %146, i32 %148)
  br label %150

150:                                              ; preds = %145, %138
  %151 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %152 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %151, i32 0, i32 16
  %153 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %152, align 8
  %154 = icmp ne %struct.wpa_driver_scan_params* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %157 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %156, i32 0, i32 16
  %158 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %157, align 8
  store %struct.wpa_driver_scan_params* %158, %struct.wpa_driver_scan_params** %5, align 8
  br label %469

159:                                              ; preds = %150
  %160 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %161 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %160, i32 0, i32 14
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load %struct.wpa_ssid*, %struct.wpa_ssid** %163, align 8
  store %struct.wpa_ssid* %164, %struct.wpa_ssid** %7, align 8
  %165 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %166 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %165, i32 0, i32 11
  %167 = load %struct.wpa_ssid*, %struct.wpa_ssid** %166, align 8
  %168 = icmp ne %struct.wpa_ssid* %167, null
  br i1 %168, label %169, label %188

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %183, %169
  %171 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %172 = icmp ne %struct.wpa_ssid* %171, null
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %175 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %176 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %175, i32 0, i32 11
  %177 = load %struct.wpa_ssid*, %struct.wpa_ssid** %176, align 8
  %178 = icmp eq %struct.wpa_ssid* %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %181 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %180, i32 0, i32 1
  %182 = load %struct.wpa_ssid*, %struct.wpa_ssid** %181, align 8
  store %struct.wpa_ssid* %182, %struct.wpa_ssid** %7, align 8
  br label %187

183:                                              ; preds = %173
  %184 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %185 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %184, i32 0, i32 1
  %186 = load %struct.wpa_ssid*, %struct.wpa_ssid** %185, align 8
  store %struct.wpa_ssid* %186, %struct.wpa_ssid** %7, align 8
  br label %170

187:                                              ; preds = %179, %170
  br label %188

188:                                              ; preds = %187, %159
  %189 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %190 = icmp ne %struct.wpa_ssid* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %193 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %192, i32 0, i32 11
  %194 = load %struct.wpa_ssid*, %struct.wpa_ssid** %193, align 8
  %195 = icmp ne %struct.wpa_ssid* %194, null
  br i1 %195, label %214, label %196

196:                                              ; preds = %191, %188
  %197 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %198 = load i32, i32* @MSG_DEBUG, align 4
  %199 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %197, i32 %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %200 = load i32, i32* %10, align 4
  %201 = mul i32 %200, 2
  %202 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %203 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 4
  %204 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %205 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %204, i32 0, i32 6
  store i32 1, i32* %205, align 8
  %206 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %207 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %206, i32 0, i32 14
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load %struct.wpa_ssid*, %struct.wpa_ssid** %209, align 8
  store %struct.wpa_ssid* %210, %struct.wpa_ssid** %7, align 8
  %211 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %212 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %213 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %212, i32 0, i32 11
  store %struct.wpa_ssid* %211, %struct.wpa_ssid** %213, align 8
  br label %214

214:                                              ; preds = %196, %191
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %219 = load i32, i32* @MSG_DEBUG, align 4
  %220 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %218, i32 %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %221 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add i32 %222, 1
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %217, %214
  br label %225

225:                                              ; preds = %404, %224
  %226 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %227 = icmp ne %struct.wpa_ssid* %226, null
  br i1 %227, label %228, label %411

228:                                              ; preds = %225
  %229 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %230 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %231 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %229, %struct.wpa_ssid* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %404

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %238 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = icmp ult i64 %236, %239
  br i1 %240, label %241, label %292

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = icmp ne %struct.TYPE_7__* %243, null
  br i1 %244, label %245, label %292

245:                                              ; preds = %241
  %246 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %247 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %292

250:                                              ; preds = %245
  %251 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %252 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %292

255:                                              ; preds = %250
  %256 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %257 = load i32, i32* @MSG_DEBUG, align 4
  %258 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %259 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %262 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @wpa_ssid_txt(i64 %260, i64 %263)
  %265 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %256, i32 %257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %264)
  %266 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %274 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %277 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @os_memcpy(i32 %272, i64 %275, i64 %278)
  %280 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %281 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  store i64 %282, i64* %288, align 8
  %289 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %289, align 8
  br label %316

292:                                              ; preds = %250, %245, %241, %234
  %293 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = icmp ne %struct.TYPE_7__* %294, null
  br i1 %295, label %296, label %315

296:                                              ; preds = %292
  %297 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %298 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %296
  %302 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %303 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %301
  %307 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %308 = load i32, i32* @MSG_DEBUG, align 4
  %309 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %307, i32 %308, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %310 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = call i32 @os_free(%struct.TYPE_7__* %311)
  %313 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %313, align 8
  %314 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 1
  store i64 0, i64* %314, align 8
  br label %315

315:                                              ; preds = %306, %301, %296, %292
  br label %316

316:                                              ; preds = %315, %255
  %317 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %318 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %403

321:                                              ; preds = %316
  %322 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %323 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %403

326:                                              ; preds = %321
  %327 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %328 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %403

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  br label %411

337:                                              ; preds = %331
  %338 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %339 = load i32, i32* @MSG_DEBUG, align 4
  %340 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %341 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %344 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @wpa_ssid_txt(i64 %342, i64 %345)
  %347 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %338, i32 %339, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %346)
  %348 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %349 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %348, i32 0, i32 4
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 14
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %351, align 8
  %353 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  store i64 %350, i64* %357, align 8
  %358 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %359 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %358, i32 0, i32 3
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 14
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %361, align 8
  %363 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  store i64 %360, i64* %367, align 8
  %368 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add i32 %369, 1
  store i32 %370, i32* %368, align 8
  %371 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = icmp uge i32 %372, %373
  br i1 %374, label %375, label %402

375:                                              ; preds = %337
  %376 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %377 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %378 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %377, i32 0, i32 11
  store %struct.wpa_ssid* %376, %struct.wpa_ssid** %378, align 8
  br label %379

379:                                              ; preds = %399, %375
  %380 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %381 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %380, i32 0, i32 1
  %382 = load %struct.wpa_ssid*, %struct.wpa_ssid** %381, align 8
  store %struct.wpa_ssid* %382, %struct.wpa_ssid** %7, align 8
  br label %383

383:                                              ; preds = %379
  %384 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %385 = icmp ne %struct.wpa_ssid* %384, null
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  %387 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %388 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %389 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %387, %struct.wpa_ssid* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %397, label %391

391:                                              ; preds = %386
  %392 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %393 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  %396 = xor i1 %395, true
  br label %397

397:                                              ; preds = %391, %386
  %398 = phi i1 [ true, %386 ], [ %396, %391 ]
  br label %399

399:                                              ; preds = %397, %383
  %400 = phi i1 [ false, %383 ], [ %398, %397 ]
  br i1 %400, label %379, label %401

401:                                              ; preds = %399
  br label %411

402:                                              ; preds = %337
  br label %403

403:                                              ; preds = %402, %326, %321, %316
  br label %404

404:                                              ; preds = %403, %233
  %405 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %406 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %407 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %406, i32 0, i32 11
  store %struct.wpa_ssid* %405, %struct.wpa_ssid** %407, align 8
  %408 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %409 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %408, i32 0, i32 1
  %410 = load %struct.wpa_ssid*, %struct.wpa_ssid** %409, align 8
  store %struct.wpa_ssid* %410, %struct.wpa_ssid** %7, align 8
  br label %225

411:                                              ; preds = %401, %336, %225
  %412 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %416, align 8
  %418 = call i32 @os_free(%struct.TYPE_7__* %417)
  %419 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %419, align 8
  br label %420

420:                                              ; preds = %415, %411
  %421 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %422 = call %struct.wpabuf* @wpa_supplicant_extra_ies(%struct.wpa_supplicant* %421)
  store %struct.wpabuf* %422, %struct.wpabuf** %8, align 8
  %423 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %424 = icmp ne %struct.wpabuf* %423, null
  br i1 %424, label %425, label %432

425:                                              ; preds = %420
  %426 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %427 = call i32 @wpabuf_head(%struct.wpabuf* %426)
  %428 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 13
  store i32 %427, i32* %428, align 4
  %429 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %430 = call i32 @wpabuf_len(%struct.wpabuf* %429)
  %431 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 12
  store i32 %430, i32* %431, align 8
  br label %432

432:                                              ; preds = %425, %420
  %433 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %434 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %433, i32 0, i32 14
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %432
  %440 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %441 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %440, i32 0, i32 14
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 3
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 11
  store i64 %444, i64* %445, align 8
  br label %446

446:                                              ; preds = %439, %432
  %447 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %448 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %447, i32 0, i32 14
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %468

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 10
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %468, label %457

457:                                              ; preds = %453
  %458 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %459 = load i32, i32* @MSG_DEBUG, align 4
  %460 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %458, i32 %459, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %461 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 10
  %462 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %463 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %462, i32 0, i32 14
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @int_array_concat(i32* %461, i32 %466)
  br label %468

468:                                              ; preds = %457, %453, %446
  store %struct.wpa_driver_scan_params* %4, %struct.wpa_driver_scan_params** %5, align 8
  br label %469

469:                                              ; preds = %468, %155
  %470 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %471 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %470, i32 0, i32 12
  store i64 0, i64* %471, align 8
  %472 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %473 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %472, i32 0, i32 8
  %474 = load i32, i32* %473, align 8
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %489, label %476

476:                                              ; preds = %469
  %477 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %478 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %477, i32 0, i32 8
  %479 = load i32, i32* %478, align 8
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %498

481:                                              ; preds = %476
  %482 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %483 = icmp ne %struct.wpa_ssid* %482, null
  br i1 %483, label %498, label %484

484:                                              ; preds = %481
  %485 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %486 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %485, i32 0, i32 6
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %498

489:                                              ; preds = %484, %469
  %490 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %491 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %490, i32 0, i32 15
  %492 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %491, align 8
  %493 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  store %struct.sched_scan_plan* %492, %struct.sched_scan_plan** %493, align 8
  %494 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %495 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %494, i32 0, i32 8
  %496 = load i32, i32* %495, align 8
  %497 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 3
  store i32 %496, i32* %497, align 4
  br label %558

498:                                              ; preds = %484, %481, %476
  %499 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %500 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %499, i32 0, i32 8
  %501 = load i32, i32* %500, align 8
  %502 = icmp sgt i32 %501, 1
  br i1 %502, label %503, label %518

503:                                              ; preds = %498
  %504 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %505 = load i32, i32* @MSG_DEBUG, align 4
  %506 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %504, i32 %505, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %507 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %508 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %507, i32 0, i32 15
  %509 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %508, align 8
  %510 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %511 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %510, i32 0, i32 8
  %512 = load i32, i32* %511, align 8
  %513 = sub nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %509, i64 %514
  %516 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  store %struct.sched_scan_plan* %515, %struct.sched_scan_plan** %516, align 8
  %517 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 3
  store i32 1, i32* %517, align 4
  br label %557

518:                                              ; preds = %498
  %519 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %520 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %519, i32 0, i32 14
  %521 = load %struct.TYPE_6__*, %struct.TYPE_6__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %532

525:                                              ; preds = %518
  %526 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %527 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %526, i32 0, i32 14
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %13, i32 0, i32 0
  store i32 %530, i32* %531, align 8
  br label %534

532:                                              ; preds = %518
  %533 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %13, i32 0, i32 0
  store i32 10, i32* %533, align 8
  br label %534

534:                                              ; preds = %532, %525
  %535 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %13, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %538 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %537, i32 0, i32 9
  %539 = load i32, i32* %538, align 4
  %540 = icmp sgt i32 %536, %539
  br i1 %540, label %541, label %553

541:                                              ; preds = %534
  %542 = load i32, i32* @MSG_WARNING, align 4
  %543 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %13, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %546 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %545, i32 0, i32 9
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @wpa_printf(i32 %542, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %544, i32 %547)
  %549 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %550 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %549, i32 0, i32 9
  %551 = load i32, i32* %550, align 4
  %552 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %13, i32 0, i32 0
  store i32 %551, i32* %552, align 8
  br label %553

553:                                              ; preds = %541, %534
  %554 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %13, i32 0, i32 1
  store i64 0, i64* %554, align 8
  %555 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  store %struct.sched_scan_plan* %13, %struct.sched_scan_plan** %555, align 8
  %556 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 3
  store i32 1, i32* %556, align 4
  br label %557

557:                                              ; preds = %553, %503
  br label %558

558:                                              ; preds = %557, %489
  %559 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %560 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %559, i32 0, i32 14
  %561 = load %struct.TYPE_6__*, %struct.TYPE_6__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 4
  store i32 %563, i32* %564, align 8
  %565 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %566 = icmp ne %struct.wpa_ssid* %565, null
  br i1 %566, label %572, label %567

567:                                              ; preds = %558
  %568 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %569 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %568, i32 0, i32 6
  %570 = load i32, i32* %569, align 8
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %586, label %572

572:                                              ; preds = %567, %558
  %573 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %574 = load i32, i32* @MSG_DEBUG, align 4
  %575 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 4
  %576 = load i32, i32* %575, align 8
  %577 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  %578 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %577, align 8
  %579 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %578, i64 0
  %580 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %583 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %582, i32 0, i32 5
  %584 = load i32, i32* %583, align 4
  %585 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %573, i32 %574, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %576, i32 %581, i32 %584)
  br label %592

586:                                              ; preds = %567
  %587 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %588 = load i32, i32* @MSG_DEBUG, align 4
  %589 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 4
  %590 = load i32, i32* %589, align 8
  %591 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %587, i32 %588, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %590)
  br label %592

592:                                              ; preds = %586, %572
  %593 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %594 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %595 = call i32 @wpa_setband_scan_freqs(%struct.wpa_supplicant* %593, %struct.wpa_driver_scan_params* %594)
  %596 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %597 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %596, i32 0, i32 10
  %598 = load i32, i32* %597, align 8
  %599 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %600 = and i32 %598, %599
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %627

602:                                              ; preds = %592
  %603 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %604 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %603, i32 0, i32 4
  %605 = load i32, i32* %604, align 8
  %606 = sext i32 %605 to i64
  %607 = load i64, i64* @WPA_SCANNING, align 8
  %608 = icmp sle i64 %606, %607
  br i1 %608, label %609, label %627

609:                                              ; preds = %602
  %610 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 5
  store i32 1, i32* %610, align 4
  %611 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %612 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %611, i32 0, i32 13
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %626

615:                                              ; preds = %609
  %616 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %617 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %616, i32 0, i32 13
  %618 = load i64, i64* %617, align 8
  %619 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 9
  store i64 %618, i64* %619, align 8
  %620 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %621 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %620, i32 0, i32 13
  %622 = load i64, i64* %621, align 8
  %623 = load i64, i64* @ETH_ALEN, align 8
  %624 = add nsw i64 %622, %623
  %625 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 8
  store i64 %624, i64* %625, align 8
  br label %626

626:                                              ; preds = %615, %609
  br label %627

627:                                              ; preds = %626, %602, %592
  %628 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %629 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %630 = call i32 @wpa_scan_set_relative_rssi_params(%struct.wpa_supplicant* %628, %struct.wpa_driver_scan_params* %629)
  %631 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %632 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %633 = call i32 @wpa_supplicant_start_sched_scan(%struct.wpa_supplicant* %631, %struct.wpa_driver_scan_params* %632)
  store i32 %633, i32* %9, align 4
  %634 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %635 = call i32 @wpabuf_free(%struct.wpabuf* %634)
  %636 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 7
  %637 = load %struct.TYPE_7__*, %struct.TYPE_7__** %636, align 8
  %638 = call i32 @os_free(%struct.TYPE_7__* %637)
  %639 = load i32, i32* %9, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %656

641:                                              ; preds = %627
  %642 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %643 = load i32, i32* @MSG_WARNING, align 4
  %644 = call i32 @wpa_msg(%struct.wpa_supplicant* %642, i32 %643, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %645 = load i32, i32* %6, align 4
  %646 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %647 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %646, i32 0, i32 4
  %648 = load i32, i32* %647, align 8
  %649 = icmp ne i32 %645, %648
  br i1 %649, label %650, label %654

650:                                              ; preds = %641
  %651 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %652 = load i32, i32* %6, align 4
  %653 = call i32 @wpa_supplicant_set_state(%struct.wpa_supplicant* %651, i32 %652)
  br label %654

654:                                              ; preds = %650, %641
  %655 = load i32, i32* %9, align 4
  store i32 %655, i32* %2, align 4
  br label %721

656:                                              ; preds = %627
  %657 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %658 = icmp ne %struct.wpa_ssid* %657, null
  br i1 %658, label %664, label %659

659:                                              ; preds = %656
  %660 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %661 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %660, i32 0, i32 6
  %662 = load i32, i32* %661, align 8
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %714, label %664

664:                                              ; preds = %659, %656
  %665 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %666 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %665, i32 0, i32 12
  store i64 0, i64* %666, align 8
  %667 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %668 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %667, i32 0, i32 5
  %669 = load i32, i32* %668, align 4
  %670 = load i32, i32* @wpa_supplicant_sched_scan_timeout, align 4
  %671 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %672 = call i32 @eloop_register_timeout(i32 %669, i32 0, i32 %670, %struct.wpa_supplicant* %671, i32* null)
  %673 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %674 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %673, i32 0, i32 6
  store i32 0, i32* %674, align 8
  %675 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %676 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %675, i32 0, i32 5
  %677 = load i32, i32* %676, align 4
  %678 = udiv i32 %677, 2
  store i32 %678, i32* %676, align 4
  %679 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  %680 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %679, align 8
  %681 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %680, i64 0
  %682 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 8
  %684 = mul nsw i32 %683, 2
  store i32 %684, i32* %682, align 8
  %685 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %686 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %685, i32 0, i32 5
  %687 = load i32, i32* %686, align 4
  %688 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  %689 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %688, align 8
  %690 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %689, i64 0
  %691 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = icmp ult i32 %687, %692
  br i1 %693, label %704, label %694

694:                                              ; preds = %664
  %695 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  %696 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %695, align 8
  %697 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %696, i64 0
  %698 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %701 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %700, i32 0, i32 9
  %702 = load i32, i32* %701, align 4
  %703 = icmp sgt i32 %699, %702
  br i1 %703, label %704, label %713

704:                                              ; preds = %694, %664
  %705 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 6
  %706 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %705, align 8
  %707 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %706, i64 0
  %708 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %707, i32 0, i32 0
  store i32 10, i32* %708, align 8
  %709 = load i32, i32* %10, align 4
  %710 = mul i32 %709, 2
  %711 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %712 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %711, i32 0, i32 5
  store i32 %710, i32* %712, align 4
  br label %713

713:                                              ; preds = %704, %694
  br label %714

714:                                              ; preds = %713, %659
  %715 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %716 = icmp ne %struct.wpa_ssid* %715, null
  br i1 %716, label %720, label %717

717:                                              ; preds = %714
  %718 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %719 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %718, i32 0, i32 11
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %719, align 8
  br label %720

720:                                              ; preds = %717, %714
  store i32 0, i32* %2, align 4
  br label %721

721:                                              ; preds = %720, %654, %115, %49, %41, %18
  %722 = load i32, i32* %2, align 4
  ret i32 %722
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i64 @wpas_network_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @os_calloc(i64, i32) #1

declare dso_local i32 @wpa_supplicant_set_state(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_ssid_txt(i64, i64) #1

declare dso_local i32 @os_memcpy(i32, i64, i64) #1

declare dso_local i32 @os_free(%struct.TYPE_7__*) #1

declare dso_local %struct.wpabuf* @wpa_supplicant_extra_ies(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @int_array_concat(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_setband_scan_freqs(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @wpa_scan_set_relative_rssi_params(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @wpa_supplicant_start_sched_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
