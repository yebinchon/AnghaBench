; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpas_start_pno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpas_start_pno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i64, i64, i32, i32, i64, i32*, %struct.TYPE_6__*, %struct.sched_scan_plan*, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.wpa_ssid**, %struct.wpa_ssid* }
%struct.wpa_ssid = type { %struct.wpa_ssid*, i32, i32, i64, %struct.wpa_ssid* }
%struct.sched_scan_plan = type { i32, i64 }
%struct.wpa_driver_scan_params = type { i64, i32, i32, %struct.TYPE_7__*, i64, i64, i32*, i32, %struct.sched_scan_plan*, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@WPAS_MAX_SCAN_SSIDS = common dso_local global i32 0, align 4
@WPA_SCANNING = common dso_local global i64 0, align 8
@WPA_COMPLETED = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PNO: In assoc process\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Schedule PNO on completion of ongoing sched scan\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Schedule PNO after previous sched scan has stopped\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"PNO: No configured SSIDs\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"PNO: Use only the first %u SSIDs from %u\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"PNO: Too many SSIDs to match\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Limit sched scan to specified channels\00", align 1
@MAC_ADDR_RAND_PNO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to schedule PNO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_start_pno(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_ssid*, align 8
  %10 = alloca %struct.wpa_driver_scan_params, align 8
  %11 = alloca %struct.sched_scan_plan, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %408

18:                                               ; preds = %1
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WPAS_MAX_SCAN_SSIDS, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @WPAS_MAX_SCAN_SSIDS, align 4
  store i32 %25, i32* %12, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %12, align 4
  %32 = icmp ult i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %408

34:                                               ; preds = %30
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  store i32 0, i32* %2, align 4
  br label %408

45:                                               ; preds = %39
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WPA_SCANNING, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WPA_COMPLETED, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @MSG_ERROR, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %408

62:                                               ; preds = %51, %45
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WPA_SCANNING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %70 = call i32 @wpa_supplicant_cancel_scan(%struct.wpa_supplicant* %69)
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 12
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %79 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %78)
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %408

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %85 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %408

93:                                               ; preds = %83
  %94 = call i32 @os_memset(%struct.wpa_driver_scan_params* %10, i32 0, i32 88)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %96 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %95, i32 0, i32 9
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %98, align 8
  store %struct.wpa_ssid* %99, %struct.wpa_ssid** %9, align 8
  br label %100

100:                                              ; preds = %119, %93
  %101 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %102 = icmp ne %struct.wpa_ssid* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %106 = call i32 @wpas_network_disabled(%struct.wpa_supplicant* %104, %struct.wpa_ssid* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %8, align 8
  %111 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %112 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %115, %108
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %121 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %120, i32 0, i32 4
  %122 = load %struct.wpa_ssid*, %struct.wpa_ssid** %121, align 8
  store %struct.wpa_ssid* %122, %struct.wpa_ssid** %9, align 8
  br label %100

123:                                              ; preds = %100
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %408

129:                                              ; preds = %123
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %133, %129
  %140 = load i64, i64* %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = icmp ugt i64 %140, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i64, i64* %7, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %148)
  %150 = load i32, i32* %12, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %144, %139
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %155 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ugt i64 %153, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %160 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %8, align 8
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = call i32 @wpa_dbg(%struct.wpa_supplicant* %162, i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %158, %152
  %166 = load i64, i64* %8, align 8
  %167 = call %struct.TYPE_7__* @os_calloc(i64 %166, i32 4)
  %168 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 3
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %168, align 8
  %169 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 3
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = icmp eq %struct.TYPE_7__* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 -1, i32* %2, align 4
  br label %408

173:                                              ; preds = %165
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  %174 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %175 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %174, i32 0, i32 9
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %178, i64 %180
  %182 = load %struct.wpa_ssid*, %struct.wpa_ssid** %181, align 8
  store %struct.wpa_ssid* %182, %struct.wpa_ssid** %9, align 8
  br label %183

183:                                              ; preds = %286, %173
  %184 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %185 = icmp ne %struct.wpa_ssid* %184, null
  br i1 %185, label %186, label %287

186:                                              ; preds = %183
  %187 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %188 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %189 = call i32 @wpas_network_disabled(%struct.wpa_supplicant* %187, %struct.wpa_ssid* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %255, label %191

191:                                              ; preds = %186
  %192 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %193 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp ult i64 %198, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %196
  %202 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %203 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 11
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  store i32 %204, i32* %210, align 4
  %211 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %212 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 11
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i32 %213, i32* %219, align 4
  %220 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %220, align 8
  br label %223

223:                                              ; preds = %201, %196, %191
  %224 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 3
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %231 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %234 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @os_memcpy(i32 %229, i32 %232, i32 %235)
  %237 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %238 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 3
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = load i64, i64* %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  store i32 %239, i32* %244, align 4
  %245 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 10
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = load i64, i64* %6, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %6, align 8
  %250 = load i64, i64* %6, align 8
  %251 = load i64, i64* %8, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %223
  br label %287

254:                                              ; preds = %223
  br label %255

255:                                              ; preds = %254, %186
  %256 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %257 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %256, i32 0, i32 0
  %258 = load %struct.wpa_ssid*, %struct.wpa_ssid** %257, align 8
  %259 = icmp ne %struct.wpa_ssid* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %262 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %261, i32 0, i32 0
  %263 = load %struct.wpa_ssid*, %struct.wpa_ssid** %262, align 8
  store %struct.wpa_ssid* %263, %struct.wpa_ssid** %9, align 8
  br label %286

264:                                              ; preds = %255
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  %267 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %268 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %267, i32 0, i32 9
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %266, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %264
  br label %287

274:                                              ; preds = %264
  %275 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %276 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %275, i32 0, i32 9
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 4
  %279 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %279, i64 %282
  %284 = load %struct.wpa_ssid*, %struct.wpa_ssid** %283, align 8
  store %struct.wpa_ssid* %284, %struct.wpa_ssid** %9, align 8
  br label %285

285:                                              ; preds = %274
  br label %286

286:                                              ; preds = %285, %260
  br label %183

287:                                              ; preds = %273, %253, %183
  %288 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %289 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %288, i32 0, i32 9
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %287
  %295 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %296 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %295, i32 0, i32 9
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 9
  store i64 %299, i64* %300, align 8
  br label %301

301:                                              ; preds = %294, %287
  %302 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %303 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %301
  %307 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %308 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %307, i32 0, i32 10
  %309 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %308, align 8
  %310 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 8
  store %struct.sched_scan_plan* %309, %struct.sched_scan_plan** %310, align 8
  %311 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %312 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 1
  store i32 %313, i32* %314, align 8
  br label %335

315:                                              ; preds = %301
  %316 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %317 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %316, i32 0, i32 9
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %324 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %323, i32 0, i32 9
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %11, i32 0, i32 0
  store i32 %327, i32* %328, align 8
  br label %331

329:                                              ; preds = %315
  %330 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %11, i32 0, i32 0
  store i32 10, i32* %330, align 8
  br label %331

331:                                              ; preds = %329, %322
  %332 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %11, i32 0, i32 1
  store i64 0, i64* %332, align 8
  %333 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 8
  store %struct.sched_scan_plan* %11, %struct.sched_scan_plan** %333, align 8
  %334 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 1
  store i32 1, i32* %334, align 8
  br label %335

335:                                              ; preds = %331, %306
  %336 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %337 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %336, i32 0, i32 9
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 7
  store i32 %340, i32* %341, align 8
  %342 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 6
  %343 = load i32*, i32** %342, align 8
  %344 = icmp eq i32* %343, null
  br i1 %344, label %345, label %358

345:                                              ; preds = %335
  %346 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %347 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %346, i32 0, i32 8
  %348 = load i32*, i32** %347, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %358

350:                                              ; preds = %345
  %351 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %352 = load i32, i32* @MSG_DEBUG, align 4
  %353 = call i32 @wpa_dbg(%struct.wpa_supplicant* %351, i32 %352, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %354 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %355 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %354, i32 0, i32 8
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 6
  store i32* %356, i32** %357, align 8
  br label %358

358:                                              ; preds = %350, %345, %335
  %359 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %360 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %389

365:                                              ; preds = %358
  %366 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %367 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @WPA_SCANNING, align 8
  %370 = icmp sle i64 %368, %369
  br i1 %370, label %371, label %389

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 2
  store i32 1, i32* %372, align 4
  %373 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %374 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %373, i32 0, i32 7
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %388

377:                                              ; preds = %371
  %378 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %379 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %378, i32 0, i32 7
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 5
  store i64 %380, i64* %381, align 8
  %382 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %383 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %382, i32 0, i32 7
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @ETH_ALEN, align 8
  %386 = add nsw i64 %384, %385
  %387 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 4
  store i64 %386, i64* %387, align 8
  br label %388

388:                                              ; preds = %377, %371
  br label %389

389:                                              ; preds = %388, %365, %358
  %390 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %391 = call i32 @wpa_scan_set_relative_rssi_params(%struct.wpa_supplicant* %390, %struct.wpa_driver_scan_params* %10)
  %392 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %393 = call i32 @wpa_supplicant_start_sched_scan(%struct.wpa_supplicant* %392, %struct.wpa_driver_scan_params* %10)
  store i32 %393, i32* %4, align 4
  %394 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 3
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %394, align 8
  %396 = call i32 @os_free(%struct.TYPE_7__* %395)
  %397 = load i32, i32* %4, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %389
  %400 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %401 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %400, i32 0, i32 1
  store i32 1, i32* %401, align 4
  br label %406

402:                                              ; preds = %389
  %403 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %404 = load i32, i32* @MSG_ERROR, align 4
  %405 = call i32 @wpa_msg(%struct.wpa_supplicant* %403, i32 %404, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %406

406:                                              ; preds = %402, %399
  %407 = load i32, i32* %4, align 4
  store i32 %407, i32* %2, align 4
  br label %408

408:                                              ; preds = %406, %172, %126, %88, %75, %57, %44, %33, %17
  %409 = load i32, i32* %2, align 4
  ret i32 %409
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_supplicant_cancel_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local i32 @wpas_network_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.TYPE_7__* @os_calloc(i64, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_scan_set_relative_rssi_params(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @wpa_supplicant_start_sched_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @os_free(%struct.TYPE_7__*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
