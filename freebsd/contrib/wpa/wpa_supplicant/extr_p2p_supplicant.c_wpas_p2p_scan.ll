; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wpa_driver_scan_params = type { i32, i32*, i32, i64*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i8* }
%struct.wpabuf = type { i32 }

@__const.wpas_p2p_scan.social_channels_freq = private unnamed_addr constant [4 x i32] [i32 2412, i32 2437, i32 2462, i32 60480], align 16
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"P2P: Reject scan trigger since one is already pending\00", align 1
@P2P_WILDCARD_SSID_LEN = common dso_local global i8* null, align 8
@P2P_WILDCARD_SSID = common dso_local global i32 0, align 4
@WPS_REQ_ENROLLEE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"p2p-scan\00", align 1
@wpas_p2p_trigger_scan_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i64*, i64*, i32)* @wpas_p2p_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_scan(i8* %0, i32 %1, i32 %2, i32 %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wpa_supplicant*, align 8
  %17 = alloca %struct.wpa_driver_scan_params*, align 8
  %18 = alloca %struct.wpabuf*, align 8
  %19 = alloca %struct.wpabuf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %27, %struct.wpa_supplicant** %16, align 8
  store %struct.wpa_driver_scan_params* null, %struct.wpa_driver_scan_params** %17, align 8
  store i32 0, i32* %20, align 4
  %28 = bitcast [4 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([4 x i32]* @__const.wpas_p2p_scan.social_channels_freq to i8*), i64 16, i1 false)
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %7
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %7
  store i32 -1, i32* %8, align 4
  br label %320

43:                                               ; preds = %35
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = call i32 @wpa_dbg(%struct.wpa_supplicant* %49, i32 %50, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %320

52:                                               ; preds = %43
  %53 = call %struct.wpa_driver_scan_params* @os_zalloc(i32 48)
  store %struct.wpa_driver_scan_params* %53, %struct.wpa_driver_scan_params** %17, align 8
  %54 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %55 = icmp eq %struct.wpa_driver_scan_params* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %8, align 4
  br label %320

57:                                               ; preds = %52
  %58 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i8*, i8** @P2P_WILDCARD_SSID_LEN, align 8
  %61 = call i64* @os_malloc(i8* %60)
  store i64* %61, i64** %23, align 8
  %62 = load i64*, i64** %23, align 8
  %63 = icmp eq i64* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %317

65:                                               ; preds = %57
  %66 = load i64*, i64** %23, align 8
  %67 = load i32, i32* @P2P_WILDCARD_SSID, align 4
  %68 = load i8*, i8** @P2P_WILDCARD_SSID_LEN, align 8
  %69 = call i32 @os_memcpy(i64* %66, i32 %67, i8* %68)
  %70 = load i64*, i64** %23, align 8
  %71 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %72 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %71, i32 0, i32 5
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i64* %70, i64** %75, align 8
  %76 = load i8*, i8** @P2P_WILDCARD_SSID_LEN, align 8
  %77 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %78 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %77, i32 0, i32 5
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i8* %76, i8** %81, align 8
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @WPS_REQ_ENROLLEE, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i64*, i64** %13, align 8
  %100 = call %struct.wpabuf* @wps_build_probe_req_ie(i32 %87, %struct.TYPE_8__* %91, i32 %96, i32 %97, i32 %98, i64* %99)
  store %struct.wpabuf* %100, %struct.wpabuf** %18, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %102 = icmp eq %struct.wpabuf* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %65
  br label %317

104:                                              ; preds = %65
  %105 = load i32, i32* %10, align 4
  switch i32 %105, label %245 [
    i32 130, label %106
    i32 131, label %156
    i32 128, label %157
    i32 129, label %177
  ]

106:                                              ; preds = %104
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %108 = call i64 @ARRAY_SIZE(i32* %107)
  %109 = add i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i8* @os_calloc(i32 %110, i32 4)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %114 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %116 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  br label %317

120:                                              ; preds = %106
  store i64 0, i64* %24, align 8
  br label %121

121:                                              ; preds = %145, %120
  %122 = load i64, i64* %24, align 8
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %124 = call i64 @ARRAY_SIZE(i32* %123)
  %125 = icmp ult i64 %122, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %121
  %127 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %128 = load i64, i64* %24, align 8
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @wpas_p2p_search_social_channel(%struct.wpa_supplicant* %127, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = load i64, i64* %24, align 8
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %138 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %20, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %20, align 4
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %136, i32* %143, align 4
  br label %144

144:                                              ; preds = %133, %126
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %24, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %24, align 8
  br label %121

148:                                              ; preds = %121
  %149 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %150 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %20, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %20, align 4
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 0, i32* %155, align 4
  br label %245

156:                                              ; preds = %104
  br label %245

157:                                              ; preds = %104
  %158 = call i8* @os_calloc(i32 2, i32 4)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %161 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  %162 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %163 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %317

167:                                              ; preds = %157
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %170 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 %168, i32* %172, align 4
  %173 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %174 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 0, i32* %176, align 4
  br label %245

177:                                              ; preds = %104
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %179 = call i64 @ARRAY_SIZE(i32* %178)
  %180 = add i64 %179, 2
  %181 = trunc i64 %180 to i32
  %182 = call i8* @os_calloc(i32 %181, i32 4)
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %185 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %184, i32 0, i32 1
  store i32* %183, i32** %185, align 8
  %186 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %187 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %177
  br label %317

191:                                              ; preds = %177
  store i64 0, i64* %24, align 8
  br label %192

192:                                              ; preds = %216, %191
  %193 = load i64, i64* %24, align 8
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %195 = call i64 @ARRAY_SIZE(i32* %194)
  %196 = icmp ult i64 %193, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %192
  %198 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %199 = load i64, i64* %24, align 8
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @wpas_p2p_search_social_channel(%struct.wpa_supplicant* %198, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %197
  %205 = load i64, i64* %24, align 8
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %209 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %20, align 4
  %213 = zext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %207, i32* %214, align 4
  br label %215

215:                                              ; preds = %204, %197
  br label %216

216:                                              ; preds = %215
  %217 = load i64, i64* %24, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %24, align 8
  br label %192

219:                                              ; preds = %192
  %220 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %221 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %220, i32 0, i32 0
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @p2p_supported_freq(i32* %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %219
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %231 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %20, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %20, align 4
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %229, i32* %236, align 4
  br label %237

237:                                              ; preds = %228, %219
  %238 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %239 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %20, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %20, align 4
  %243 = zext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 0, i32* %244, align 4
  br label %245

245:                                              ; preds = %104, %237, %167, %156, %148
  %246 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %247 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = call i64 @p2p_scan_ie_buf_len(i32* %250)
  store i64 %251, i64* %22, align 8
  %252 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %253 = call i8* @wpabuf_len(%struct.wpabuf* %252)
  %254 = load i64, i64* %22, align 8
  %255 = getelementptr i8, i8* %253, i64 %254
  %256 = call %struct.wpabuf* @wpabuf_alloc(i8* %255)
  store %struct.wpabuf* %256, %struct.wpabuf** %19, align 8
  %257 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %258 = icmp eq %struct.wpabuf* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %245
  %260 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %261 = call i32 @wpabuf_free(%struct.wpabuf* %260)
  br label %317

262:                                              ; preds = %245
  %263 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %264 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %265 = call i32 @wpabuf_put_buf(%struct.wpabuf* %263, %struct.wpabuf* %264)
  %266 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %267 = call i32 @wpabuf_free(%struct.wpabuf* %266)
  %268 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %269 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %270 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @wpas_get_bands(%struct.wpa_supplicant* %268, i32* %271)
  store i32 %272, i32* %25, align 4
  %273 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %274 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %273, i32 0, i32 0
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %279 = load i64*, i64** %14, align 8
  %280 = load i32, i32* %25, align 4
  %281 = call i32 @p2p_scan_ie(i32* %277, %struct.wpabuf* %278, i64* %279, i32 %280)
  %282 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %283 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %282, i32 0, i32 2
  store i32 1, i32* %283, align 8
  %284 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %285 = call i8* @wpabuf_len(%struct.wpabuf* %284)
  %286 = call i64* @os_malloc(i8* %285)
  store i64* %286, i64** %23, align 8
  %287 = load i64*, i64** %23, align 8
  %288 = icmp eq i64* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %262
  %290 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %291 = call i32 @wpabuf_free(%struct.wpabuf* %290)
  br label %317

292:                                              ; preds = %262
  %293 = load i64*, i64** %23, align 8
  %294 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %295 = call i32 @wpabuf_head(%struct.wpabuf* %294)
  %296 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %297 = call i8* @wpabuf_len(%struct.wpabuf* %296)
  %298 = call i32 @os_memcpy(i64* %293, i32 %295, i8* %297)
  %299 = load i64*, i64** %23, align 8
  %300 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %301 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %300, i32 0, i32 3
  store i64* %299, i64** %301, align 8
  %302 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %303 = call i8* @wpabuf_len(%struct.wpabuf* %302)
  %304 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %305 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %304, i32 0, i32 4
  store i8* %303, i8** %305, align 8
  %306 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %307 = call i32 @wpabuf_free(%struct.wpabuf* %306)
  %308 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %309 = call i32 @radio_remove_works(%struct.wpa_supplicant* %308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %310 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  %311 = load i32, i32* @wpas_p2p_trigger_scan_cb, align 4
  %312 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %313 = call i64 @radio_add_work(%struct.wpa_supplicant* %310, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %311, %struct.wpa_driver_scan_params* %312)
  %314 = icmp slt i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %292
  br label %317

316:                                              ; preds = %292
  store i32 0, i32* %8, align 4
  br label %320

317:                                              ; preds = %315, %289, %259, %190, %166, %119, %103, %64
  %318 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %17, align 8
  %319 = call i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params* %318)
  store i32 -1, i32* %8, align 4
  br label %320

320:                                              ; preds = %317, %316, %56, %48, %42
  %321 = load i32, i32* %8, align 4
  ret i32 %321
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #2

declare dso_local %struct.wpa_driver_scan_params* @os_zalloc(i32) #2

declare dso_local i64* @os_malloc(i8*) #2

declare dso_local i32 @os_memcpy(i64*, i32, i8*) #2

declare dso_local %struct.wpabuf* @wps_build_probe_req_ie(i32, %struct.TYPE_8__*, i32, i32, i32, i64*) #2

declare dso_local i8* @os_calloc(i32, i32) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @wpas_p2p_search_social_channel(%struct.wpa_supplicant*, i32) #2

declare dso_local i32 @p2p_supported_freq(i32*, i32) #2

declare dso_local i64 @p2p_scan_ie_buf_len(i32*) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i8*) #2

declare dso_local i8* @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #2

declare dso_local i32 @wpas_get_bands(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @p2p_scan_ie(i32*, %struct.wpabuf*, i64*, i32) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @radio_remove_works(%struct.wpa_supplicant*, i8*, i32) #2

declare dso_local i64 @radio_add_work(%struct.wpa_supplicant*, i32, i8*, i32, i32, %struct.wpa_driver_scan_params*) #2

declare dso_local i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
