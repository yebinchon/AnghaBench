; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_attr_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_attr_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i8*, i32, i64, i64, i64, i64, i64*, i64* }

@WPS_STATE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"wps_state=unconfigured\0A\00", align 1
@WPS_STATE_CONFIGURED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"wps_state=configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"wps_ap_setup_locked=1\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"wps_selected_registrar=1\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"wps_device_password_id=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"wps_selected_registrar_config_methods=0x%04x\0A\00", align 1
@WPS_DEV_TYPE_BUFSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"wps_primary_device_type=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"wps_device_name=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"wps_config_methods=0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_attr_text(%struct.wpabuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wps_parse_attr, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i64 @wps_parse_msg(%struct.wpabuf* %17, %struct.wps_parse_attr* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %415

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WPS_STATE_NOT_CONFIGURED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %32, i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %10, align 4
  br label %57

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WPS_STATE_CONFIGURED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %47, i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %10, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @os_snprintf_error(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %415

74:                                               ; preds = %57
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %9, align 8
  br label %79

79:                                               ; preds = %74, %21
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 8
  %81 = load i64*, i64** %80, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 8
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %89, i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @os_snprintf_error(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %88
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %415

113:                                              ; preds = %88
  %114 = load i32, i32* %10, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %9, align 8
  br label %118

118:                                              ; preds = %113, %83, %79
  %119 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 7
  %120 = load i64*, i64** %119, align 8
  %121 = icmp ne i64* %120, null
  br i1 %121, label %122, label %157

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 7
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %122
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %128, i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %135, i32* %10, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* %10, align 4
  %143 = call i64 @os_snprintf_error(i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %127
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %4, align 4
  br label %415

152:                                              ; preds = %127
  %153 = load i32, i32* %10, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %9, align 8
  br label %157

157:                                              ; preds = %152, %122, %118
  %158 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %157
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = call i8* @WPA_GET_BE16(i64 %170)
  %172 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %162, i32 %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %10, align 4
  %180 = call i64 @os_snprintf_error(i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %161
  %183 = load i8*, i8** %9, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %4, align 4
  br label %415

189:                                              ; preds = %161
  %190 = load i32, i32* %10, align 4
  %191 = load i8*, i8** %9, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %9, align 8
  br label %194

194:                                              ; preds = %189, %157
  %195 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %231

198:                                              ; preds = %194
  %199 = load i8*, i8** %9, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = call i8* @WPA_GET_BE16(i64 %207)
  %209 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %199, i32 %205, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %208)
  store i32 %209, i32* %10, align 4
  %210 = load i8*, i8** %7, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = load i32, i32* %10, align 4
  %217 = call i64 @os_snprintf_error(i32 %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %198
  %220 = load i8*, i8** %9, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %4, align 4
  br label %415

226:                                              ; preds = %198
  %227 = load i32, i32* %10, align 4
  %228 = load i8*, i8** %9, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8* %230, i8** %9, align 8
  br label %231

231:                                              ; preds = %226, %194
  %232 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %277

235:                                              ; preds = %231
  %236 = load i32, i32* @WPS_DEV_TYPE_BUFSIZE, align 4
  %237 = zext i32 %236 to i64
  %238 = call i8* @llvm.stacksave()
  store i8* %238, i8** %11, align 8
  %239 = alloca i8, i64 %237, align 16
  store i64 %237, i64* %12, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = ptrtoint i8* %241 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = trunc i64 %245 to i32
  %247 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %237 to i32
  %250 = call i8* @wps_dev_type_bin2str(i64 %248, i8* %239, i32 %249)
  %251 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %240, i32 %246, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %250)
  store i32 %251, i32* %10, align 4
  %252 = load i8*, i8** %7, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  %258 = load i32, i32* %10, align 4
  %259 = call i64 @os_snprintf_error(i32 %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %235
  %262 = load i8*, i8** %9, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %273

268:                                              ; preds = %235
  %269 = load i32, i32* %10, align 4
  %270 = load i8*, i8** %9, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8* %272, i8** %9, align 8
  store i32 0, i32* %13, align 4
  br label %273

273:                                              ; preds = %268, %261
  %274 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %13, align 4
  switch i32 %275, label %417 [
    i32 0, label %276
    i32 1, label %415
  ]

276:                                              ; preds = %273
  br label %277

277:                                              ; preds = %276, %231
  %278 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %371

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, 1
  %285 = call i8* @os_malloc(i32 %284)
  store i8* %285, i8** %14, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %281
  %289 = load i8*, i8** %9, align 8
  %290 = load i8*, i8** %6, align 8
  %291 = ptrtoint i8* %289 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %4, align 4
  br label %415

295:                                              ; preds = %281
  store i64 0, i64* %15, align 8
  br label %296

296:                                              ; preds = %332, %295
  %297 = load i64, i64* %15, align 8
  %298 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = icmp ult i64 %297, %300
  br i1 %301, label %302, label %335

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = load i64, i64* %15, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %302
  %311 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = load i64, i64* %15, align 8
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = call i64 @is_ctrl_char(i8 signext %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %310, %302
  %319 = load i8*, i8** %14, align 8
  %320 = load i64, i64* %15, align 8
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8 95, i8* %321, align 1
  br label %331

322:                                              ; preds = %310
  %323 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = load i64, i64* %15, align 8
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = load i8*, i8** %14, align 8
  %329 = load i64, i64* %15, align 8
  %330 = getelementptr inbounds i8, i8* %328, i64 %329
  store i8 %327, i8* %330, align 1
  br label %331

331:                                              ; preds = %322, %318
  br label %332

332:                                              ; preds = %331
  %333 = load i64, i64* %15, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* %15, align 8
  br label %296

335:                                              ; preds = %296
  %336 = load i8*, i8** %14, align 8
  %337 = load i64, i64* %15, align 8
  %338 = getelementptr inbounds i8, i8* %336, i64 %337
  store i8 0, i8* %338, align 1
  %339 = load i8*, i8** %9, align 8
  %340 = load i8*, i8** %7, align 8
  %341 = load i8*, i8** %9, align 8
  %342 = ptrtoint i8* %340 to i64
  %343 = ptrtoint i8* %341 to i64
  %344 = sub i64 %342, %343
  %345 = trunc i64 %344 to i32
  %346 = load i8*, i8** %14, align 8
  %347 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %339, i32 %345, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %346)
  store i32 %347, i32* %10, align 4
  %348 = load i8*, i8** %14, align 8
  %349 = call i32 @os_free(i8* %348)
  %350 = load i8*, i8** %7, align 8
  %351 = load i8*, i8** %9, align 8
  %352 = ptrtoint i8* %350 to i64
  %353 = ptrtoint i8* %351 to i64
  %354 = sub i64 %352, %353
  %355 = trunc i64 %354 to i32
  %356 = load i32, i32* %10, align 4
  %357 = call i64 @os_snprintf_error(i32 %355, i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %335
  %360 = load i8*, i8** %9, align 8
  %361 = load i8*, i8** %6, align 8
  %362 = ptrtoint i8* %360 to i64
  %363 = ptrtoint i8* %361 to i64
  %364 = sub i64 %362, %363
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %4, align 4
  br label %415

366:                                              ; preds = %335
  %367 = load i32, i32* %10, align 4
  %368 = load i8*, i8** %9, align 8
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds i8, i8* %368, i64 %369
  store i8* %370, i8** %9, align 8
  br label %371

371:                                              ; preds = %366, %277
  %372 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %408

375:                                              ; preds = %371
  %376 = load i8*, i8** %9, align 8
  %377 = load i8*, i8** %7, align 8
  %378 = load i8*, i8** %9, align 8
  %379 = ptrtoint i8* %377 to i64
  %380 = ptrtoint i8* %378 to i64
  %381 = sub i64 %379, %380
  %382 = trunc i64 %381 to i32
  %383 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = call i8* @WPA_GET_BE16(i64 %384)
  %386 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %376, i32 %382, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %385)
  store i32 %386, i32* %10, align 4
  %387 = load i8*, i8** %7, align 8
  %388 = load i8*, i8** %9, align 8
  %389 = ptrtoint i8* %387 to i64
  %390 = ptrtoint i8* %388 to i64
  %391 = sub i64 %389, %390
  %392 = trunc i64 %391 to i32
  %393 = load i32, i32* %10, align 4
  %394 = call i64 @os_snprintf_error(i32 %392, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %375
  %397 = load i8*, i8** %9, align 8
  %398 = load i8*, i8** %6, align 8
  %399 = ptrtoint i8* %397 to i64
  %400 = ptrtoint i8* %398 to i64
  %401 = sub i64 %399, %400
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %4, align 4
  br label %415

403:                                              ; preds = %375
  %404 = load i32, i32* %10, align 4
  %405 = load i8*, i8** %9, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i8, i8* %405, i64 %406
  store i8* %407, i8** %9, align 8
  br label %408

408:                                              ; preds = %403, %371
  %409 = load i8*, i8** %9, align 8
  %410 = load i8*, i8** %6, align 8
  %411 = ptrtoint i8* %409 to i64
  %412 = ptrtoint i8* %410 to i64
  %413 = sub i64 %411, %412
  %414 = trunc i64 %413 to i32
  store i32 %414, i32* %4, align 4
  br label %415

415:                                              ; preds = %408, %396, %359, %288, %273, %219, %182, %145, %106, %67, %20
  %416 = load i32, i32* %4, align 4
  ret i32 %416

417:                                              ; preds = %273
  unreachable
}

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i8* @WPA_GET_BE16(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @wps_dev_type_bin2str(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i64 @is_ctrl_char(i8 signext) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
