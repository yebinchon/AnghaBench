; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpa_supplicant_join_mesh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpa_supplicant_join_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, %struct.wpa_driver_mesh_join_params*, %struct.TYPE_6__*, i64, i8*, i8* }
%struct.wpa_driver_mesh_join_params = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_5__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.wpa_ssid = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i8* null, align 8
@CHANWIDTH_80P80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_160MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_USE_HT = common dso_local global i32 0, align 4
@DEFAULT_MESH_RSSI_THRESHOLD = common dso_local global i64 0, align 8
@WPA_DRIVER_MESH_CONF_FLAG_RSSI_THRESHOLD = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_DRIVER_MESH_FLAG_SAE_AUTH = common dso_local global i32 0, align 4
@WPA_DRIVER_MESH_FLAG_AMPE = common dso_local global i32 0, align 4
@WPA_DRIVER_MESH_FLAG_USER_MPM = common dso_local global i32 0, align 4
@WPA_DRIVER_MESH_FLAG_DRIVER_MPM = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to init mesh\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_join_mesh(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_driver_mesh_join_params*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %7 = call %struct.wpa_driver_mesh_join_params* @os_zalloc(i32 104)
  store %struct.wpa_driver_mesh_join_params* %7, %struct.wpa_driver_mesh_join_params** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = icmp ne %struct.wpa_ssid* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %27 = icmp ne %struct.wpa_driver_mesh_join_params* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %20, %15, %10, %2
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %32 = call i32 @os_free(%struct.wpa_driver_mesh_join_params* %31)
  br label %322

33:                                               ; preds = %25
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = call i32 @wpa_supplicant_mesh_deinit(%struct.wpa_supplicant* %34)
  %36 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %56 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %56, i32 0, i32 2
  %58 = call i32 @ibss_mesh_setup_freq(%struct.wpa_supplicant* %54, %struct.wpa_ssid* %55, %struct.TYPE_7__* %57)
  %59 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %70 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %80 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %90 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %33
  %95 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %96 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %102 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %106 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %105, i32 0, i32 9
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %100, %94, %33
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %155

112:                                              ; preds = %107
  %113 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %114 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %116 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %120 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 4
  %121 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %122 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %150 [
    i32 80, label %125
    i32 160, label %146
  ]

125:                                              ; preds = %112
  %126 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %127 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load i32, i32* @CHANWIDTH_80P80MHZ, align 4
  %133 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %134 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  %135 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %136 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %140 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  br label %145

141:                                              ; preds = %125
  %142 = load i32, i32* @CHANWIDTH_80MHZ, align 4
  %143 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %144 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %131
  br label %154

146:                                              ; preds = %112
  %147 = load i32, i32* @CHANWIDTH_160MHZ, align 4
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %149 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  br label %154

150:                                              ; preds = %112
  %151 = load i32, i32* @CHANWIDTH_USE_HT, align 4
  %152 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %153 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %150, %146, %145
  br label %155

155:                                              ; preds = %154, %107
  %156 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %157 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %162 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %165 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %170 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %173 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  br label %190

174:                                              ; preds = %163
  %175 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %176 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %183 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %182, i32 0, i32 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %188 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %181, %174
  br label %190

190:                                              ; preds = %189, %168
  %191 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %192 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %197 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %200 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  br label %217

201:                                              ; preds = %190
  %202 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %203 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %202, i32 0, i32 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %201
  %209 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %210 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %209, i32 0, i32 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %215 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %214, i32 0, i32 1
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %208, %201
  br label %217

217:                                              ; preds = %216, %195
  %218 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %219 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %218, i32 0, i32 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %224 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 4
  store i32 %222, i32* %225, align 4
  %226 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %227 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @DEFAULT_MESH_RSSI_THRESHOLD, align 8
  %230 = icmp slt i64 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %217
  %232 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %233 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %236 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i64 %234, i64* %237, align 8
  %238 = load i32, i32* @WPA_DRIVER_MESH_CONF_FLAG_RSSI_THRESHOLD, align 4
  %239 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %240 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %238
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %231, %217
  %245 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %246 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %244
  %252 = load i32, i32* @WPA_DRIVER_MESH_FLAG_SAE_AUTH, align 4
  %253 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %254 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* @WPA_DRIVER_MESH_FLAG_AMPE, align 4
  %258 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %259 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %263 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %262, i32 0, i32 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  store i32 1, i32* %265, align 8
  br label %266

266:                                              ; preds = %251, %244
  %267 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %268 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %267, i32 0, i32 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %266
  %274 = load i32, i32* @WPA_DRIVER_MESH_FLAG_USER_MPM, align 4
  %275 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %276 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %280 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  store i32 0, i32* %281, align 8
  br label %291

282:                                              ; preds = %266
  %283 = load i32, i32* @WPA_DRIVER_MESH_FLAG_DRIVER_MPM, align 4
  %284 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %285 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %289 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  store i32 1, i32* %290, align 8
  br label %291

291:                                              ; preds = %282, %273
  %292 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %293 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %292, i32 0, i32 4
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %298 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 2
  store i32 %296, i32* %299, align 4
  %300 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %301 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %300, i32 0, i32 3
  %302 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %301, align 8
  %303 = call i32 @os_free(%struct.wpa_driver_mesh_join_params* %302)
  %304 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %305 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %306 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %305, i32 0, i32 3
  store %struct.wpa_driver_mesh_join_params* %304, %struct.wpa_driver_mesh_join_params** %306, align 8
  %307 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %308 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %309 = load %struct.wpa_driver_mesh_join_params*, %struct.wpa_driver_mesh_join_params** %5, align 8
  %310 = getelementptr inbounds %struct.wpa_driver_mesh_join_params, %struct.wpa_driver_mesh_join_params* %309, i32 0, i32 2
  %311 = call i64 @wpa_supplicant_mesh_init(%struct.wpa_supplicant* %307, %struct.wpa_ssid* %308, %struct.TYPE_7__* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %291
  %314 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %315 = load i32, i32* @MSG_ERROR, align 4
  %316 = call i32 @wpa_msg(%struct.wpa_supplicant* %314, i32 %315, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %317 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %318 = call i32 @wpa_drv_leave_mesh(%struct.wpa_supplicant* %317)
  store i32 -1, i32* %6, align 4
  br label %322

319:                                              ; preds = %291
  %320 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %321 = call i32 @wpas_mesh_complete(%struct.wpa_supplicant* %320)
  store i32 %321, i32* %6, align 4
  br label %322

322:                                              ; preds = %319, %313, %28
  %323 = load i32, i32* %6, align 4
  ret i32 %323
}

declare dso_local %struct.wpa_driver_mesh_join_params* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.wpa_driver_mesh_join_params*) #1

declare dso_local i32 @wpa_supplicant_mesh_deinit(%struct.wpa_supplicant*) #1

declare dso_local i32 @ibss_mesh_setup_freq(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.TYPE_7__*) #1

declare dso_local i64 @wpa_supplicant_mesh_init(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.TYPE_7__*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_drv_leave_mesh(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_mesh_complete(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
