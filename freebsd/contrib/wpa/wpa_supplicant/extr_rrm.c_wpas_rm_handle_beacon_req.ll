; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rm_handle_beacon_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rm_handle_beacon_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__, %struct.beacon_rep_data }
%struct.TYPE_4__ = type { i32 }
%struct.beacon_rep_data = type { i64, i32, i32, i32, i32, %struct.wpa_driver_scan_params }
%struct.wpa_driver_scan_params = type { i32, i32, i64, %struct.TYPE_3__*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rrm_measurement_beacon_request = type { i64, i64*, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@BEACON_REPORT_MODE_PASSIVE = common dso_local global i64 0, align 8
@BEACON_REPORT_MODE_ACTIVE = common dso_local global i64 0, align 8
@BEACON_REPORT_MODE_TABLE = common dso_local global i64 0, align 8
@BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Beacon Request: Truncated subelement\00", align 1
@MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Beacon request: No valid channels\00", align 1
@MEASUREMENT_REPORT_MODE_REJECT_REFUSED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Beacon request: Duration is 0\00", align 1
@wpas_rrm_scan_timeout = common dso_local global i32 0, align 4
@MEASURE_TYPE_BEACON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"RRM: Failed to add report element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i64, i32, %struct.rrm_measurement_beacon_request*, i64, %struct.wpabuf**)* @wpas_rm_handle_beacon_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_rm_handle_beacon_req(%struct.wpa_supplicant* %0, i64 %1, i32 %2, %struct.rrm_measurement_beacon_request* %3, i64 %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rrm_measurement_beacon_request*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca %struct.beacon_rep_data*, align 8
  %15 = alloca %struct.wpa_driver_scan_params*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.rrm_measurement_beacon_request* %3, %struct.rrm_measurement_beacon_request** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  store %struct.beacon_rep_data* %25, %struct.beacon_rep_data** %14, align 8
  %26 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %27 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %26, i32 0, i32 5
  store %struct.wpa_driver_scan_params* %27, %struct.wpa_driver_scan_params** %15, align 8
  store i32 0, i32* %21, align 4
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %28, 40
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %256

31:                                               ; preds = %6
  %32 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %33 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BEACON_REPORT_MODE_PASSIVE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %39 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BEACON_REPORT_MODE_ACTIVE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %45 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BEACON_REPORT_MODE_TABLE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %256

50:                                               ; preds = %43, %37, %31
  %51 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %52 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %16, align 8
  %54 = load i64, i64* %12, align 8
  %55 = sub i64 %54, 40
  store i64 %55, i64* %17, align 8
  %56 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %57 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @le_to_host16(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %18, align 4
  %61 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %62 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @os_free(i32 %63)
  %65 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %66 = call i32 @os_memset(%struct.wpa_driver_scan_params* %65, i32 0, i32 40)
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %69 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS, align 4
  %71 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %72 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %74 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %77 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @os_memcpy(i32 %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %116, %50
  %82 = load i64, i64* %17, align 8
  %83 = icmp uge i64 %82, 2
  br i1 %83, label %84, label %129

84:                                               ; preds = %81
  %85 = load i64*, i64** %16, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %17, align 8
  %89 = sub i64 %88, 2
  %90 = icmp ugt i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %21, align 4
  br label %252

94:                                               ; preds = %84
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %96 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %97 = load i64*, i64** %16, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %16, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %16, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = call i32 @wpas_rm_handle_beacon_req_subelem(%struct.wpa_supplicant* %95, %struct.beacon_rep_data* %96, i64 %99, i64 %102, i64* %104)
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* %22, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = load i32, i32* %22, align 4
  store i32 %109, i32* %21, align 4
  br label %252

110:                                              ; preds = %94
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* @MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE, align 8
  store i64 %114, i64* %23, align 8
  br label %234

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115
  %117 = load i64*, i64** %16, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 2, %119
  %121 = load i64, i64* %17, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %17, align 8
  %123 = load i64*, i64** %16, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = add i64 2, %125
  %127 = load i64*, i64** %16, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 %126
  store i64* %128, i64** %16, align 8
  br label %81

129:                                              ; preds = %81
  %130 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %131 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @BEACON_REPORT_MODE_TABLE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %137 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %138 = call i32 @wpas_beacon_rep_table(%struct.wpa_supplicant* %136, %struct.wpabuf** %137)
  br label %252

139:                                              ; preds = %129
  %140 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %141 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %142 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %145 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %148 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BEACON_REPORT_MODE_ACTIVE, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %154 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %12, align 8
  %157 = sub i64 %156, 40
  %158 = call i32 @wpas_beacon_request_freqs(%struct.wpa_supplicant* %140, i32 %143, i32 %146, i32 %152, i64* %155, i64 %157)
  %159 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %160 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %162 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %139
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = call i32 @wpa_printf(i32 %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i64, i64* @MEASUREMENT_REPORT_MODE_REJECT_REFUSED, align 8
  store i64 %168, i64* %23, align 8
  br label %234

169:                                              ; preds = %139
  %170 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %171 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @le_to_host16(i32 %172)
  %174 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %175 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %178 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %180 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %169
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = call i32 @wpa_printf(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %21, align 4
  br label %252

186:                                              ; preds = %169
  %187 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %188 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %187, i32 0, i32 1
  store i32 1, i32* %188, align 4
  %189 = load %struct.rrm_measurement_beacon_request*, %struct.rrm_measurement_beacon_request** %11, align 8
  %190 = getelementptr inbounds %struct.rrm_measurement_beacon_request, %struct.rrm_measurement_beacon_request* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @BEACON_REPORT_MODE_ACTIVE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %186
  %195 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %196 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %199 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %198, i32 0, i32 3
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %202 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  store i32 %197, i32* %205, align 4
  %206 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %14, align 8
  %207 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %210 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %209, i32 0, i32 3
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %15, align 8
  %213 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %213, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 %214
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  store i32 %208, i32* %217, align 4
  br label %218

218:                                              ; preds = %194, %186
  %219 = bitcast i32* %20 to i64*
  %220 = call i64 @os_get_random(i64* %219, i32 4)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = call i32 (...) @os_random()
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %222, %218
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  %228 = srem i32 %225, %227
  %229 = mul nsw i32 %228, 1024
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* @wpas_rrm_scan_timeout, align 4
  %232 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %233 = call i32 @eloop_register_timeout(i32 0, i32 %230, i32 %231, %struct.wpa_supplicant* %232, i32* null)
  store i32 1, i32* %7, align 4
  br label %256

234:                                              ; preds = %165, %113
  %235 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %236 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @is_multicast_ether_addr(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %251, label %241

241:                                              ; preds = %234
  %242 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* %23, align 8
  %245 = load i32, i32* @MEASURE_TYPE_BEACON, align 4
  %246 = call i64 @wpas_rrm_report_elem(%struct.wpabuf** %242, i64 %243, i64 %244, i32 %245, i32* null, i32 0)
  %247 = icmp slt i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load i32, i32* @MSG_DEBUG, align 4
  %250 = call i32 @wpa_printf(i32 %249, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %21, align 4
  br label %251

251:                                              ; preds = %248, %241, %234
  br label %252

252:                                              ; preds = %251, %183, %135, %108, %91
  %253 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %254 = call i32 @wpas_clear_beacon_rep_data(%struct.wpa_supplicant* %253)
  %255 = load i32, i32* %21, align 4
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %252, %224, %49, %30
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i8* @le_to_host16(i32) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_rm_handle_beacon_req_subelem(%struct.wpa_supplicant*, %struct.beacon_rep_data*, i64, i64, i64*) #1

declare dso_local i32 @wpas_beacon_rep_table(%struct.wpa_supplicant*, %struct.wpabuf**) #1

declare dso_local i32 @wpas_beacon_request_freqs(%struct.wpa_supplicant*, i32, i32, i32, i64*, i64) #1

declare dso_local i64 @os_get_random(i64*, i32) #1

declare dso_local i32 @os_random(...) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @wpas_rrm_report_elem(%struct.wpabuf**, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @wpas_clear_beacon_rep_data(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
