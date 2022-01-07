; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_set_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_set_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i64, %struct.TYPE_8__*, i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i64* }
%struct.wpabuf = type { i32 }

@MAX_WPS_VENDOR_EXTENSIONS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS: Build Beacon IEs\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"WPS: Build Probe Response IEs\00", align 1
@WPS_RESP_AP = common dso_local global i32 0, align 4
@WPS_RESP_REGISTRAR = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"WPS: Add Microsoft Provisioning IE into Beacon/Probe Response frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_registrar*)* @wps_set_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_set_ie(%struct.wps_registrar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_registrar*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [7 x i32], align 16
  store %struct.wps_registrar* %0, %struct.wps_registrar** %3, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %12 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %292

16:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %23 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %21
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %8, align 8
  %36 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %37 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @wpabuf_len(i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %33, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load i64, i64* %8, align 8
  %55 = add i64 400, %54
  %56 = trunc i64 %55 to i32
  %57 = call %struct.wpabuf* @wpabuf_alloc(i32 %56)
  store %struct.wpabuf* %57, %struct.wpabuf** %4, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %59 = icmp eq %struct.wpabuf* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %292

61:                                               ; preds = %53
  %62 = load i64, i64* %8, align 8
  %63 = add i64 500, %62
  %64 = trunc i64 %63 to i32
  %65 = call %struct.wpabuf* @wpabuf_alloc(i32 %64)
  store %struct.wpabuf* %65, %struct.wpabuf** %5, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %67 = icmp eq %struct.wpabuf* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %70 = call i32 @wpabuf_free(%struct.wpabuf* %69)
  store i32 -1, i32* %2, align 4
  br label %292

71:                                               ; preds = %61
  %72 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %73 = call i32* @wps_authorized_macs(%struct.wps_registrar* %72, i64* %7)
  store i32* %73, i32** %6, align 8
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %77 = call i64 @wps_build_version(%struct.wpabuf* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %140, label %79

79:                                               ; preds = %71
  %80 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %81 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %84 = call i64 @wps_build_wps_state(%struct.TYPE_8__* %82, %struct.wpabuf* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %140, label %86

86:                                               ; preds = %79
  %87 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %88 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %91 = call i64 @wps_build_ap_setup_locked(%struct.TYPE_8__* %89, %struct.wpabuf* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %140, label %93

93:                                               ; preds = %86
  %94 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %95 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %96 = call i64 @wps_build_selected_registrar(%struct.wps_registrar* %94, %struct.wpabuf* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %140, label %98

98:                                               ; preds = %93
  %99 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %100 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %101 = call i64 @wps_build_sel_reg_dev_password_id(%struct.wps_registrar* %99, %struct.wpabuf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %140, label %103

103:                                              ; preds = %98
  %104 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %106 = call i64 @wps_build_sel_reg_config_methods(%struct.wps_registrar* %104, %struct.wpabuf* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %103
  %109 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %110 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %111 = call i64 @wps_build_sel_pbc_reg_uuid_e(%struct.wps_registrar* %109, %struct.wpabuf* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %140, label %113

113:                                              ; preds = %108
  %114 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %115 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %120 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %124 = call i64 @wps_build_rf_bands(%struct.TYPE_9__* %122, %struct.wpabuf* %123, i32 0)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %127, i32 0, i32* %128, i64 %129, i32 0)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %126
  %133 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %134 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %133, i32 0, i32 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %138 = call i64 @wps_build_vendor_ext(%struct.TYPE_9__* %136, %struct.wpabuf* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132, %126, %118, %108, %103, %98, %93, %86, %79, %71
  %141 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %142 = call i32 @wpabuf_free(%struct.wpabuf* %141)
  %143 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %144 = call i32 @wpabuf_free(%struct.wpabuf* %143)
  store i32 -1, i32* %2, align 4
  br label %292

145:                                              ; preds = %132
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = call i32 @wpa_printf(i32 %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %148 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %149 = call i64 @wps_build_version(%struct.wpabuf* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %245, label %151

151:                                              ; preds = %145
  %152 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %153 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %156 = call i64 @wps_build_wps_state(%struct.TYPE_8__* %154, %struct.wpabuf* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %245, label %158

158:                                              ; preds = %151
  %159 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %160 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %163 = call i64 @wps_build_ap_setup_locked(%struct.TYPE_8__* %161, %struct.wpabuf* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %245, label %165

165:                                              ; preds = %158
  %166 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %167 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %168 = call i64 @wps_build_selected_registrar(%struct.wps_registrar* %166, %struct.wpabuf* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %245, label %170

170:                                              ; preds = %165
  %171 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %172 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %173 = call i64 @wps_build_sel_reg_dev_password_id(%struct.wps_registrar* %171, %struct.wpabuf* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %245, label %175

175:                                              ; preds = %170
  %176 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %177 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %178 = call i64 @wps_build_sel_reg_config_methods(%struct.wps_registrar* %176, %struct.wpabuf* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %245, label %180

180:                                              ; preds = %175
  %181 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %182 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %183 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* @WPS_RESP_AP, align 4
  br label %192

190:                                              ; preds = %180
  %191 = load i32, i32* @WPS_RESP_REGISTRAR, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %194 = call i64 @wps_build_resp_type(%struct.wpabuf* %181, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %245, label %196

196:                                              ; preds = %192
  %197 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %198 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %199 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %198, i32 0, i32 1
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @wps_build_uuid_e(%struct.wpabuf* %197, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %245, label %205

205:                                              ; preds = %196
  %206 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %207 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %206, i32 0, i32 1
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %211 = call i64 @wps_build_device_attrs(%struct.TYPE_9__* %209, %struct.wpabuf* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %245, label %213

213:                                              ; preds = %205
  %214 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %215 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %216 = call i64 @wps_build_probe_config_methods(%struct.wps_registrar* %214, %struct.wpabuf* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %245, label %218

218:                                              ; preds = %213
  %219 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %220 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %225 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %224, i32 0, i32 1
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %229 = call i64 @wps_build_rf_bands(%struct.TYPE_9__* %227, %struct.wpabuf* %228, i32 0)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %223, %218
  %232 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %232, i32 0, i32* %233, i64 %234, i32 0)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %231
  %238 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %239 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %238, i32 0, i32 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %243 = call i64 @wps_build_vendor_ext(%struct.TYPE_9__* %241, %struct.wpabuf* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %237, %231, %223, %213, %205, %196, %192, %175, %170, %165, %158, %151, %145
  %246 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %247 = call i32 @wpabuf_free(%struct.wpabuf* %246)
  %248 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %249 = call i32 @wpabuf_free(%struct.wpabuf* %248)
  store i32 -1, i32* %2, align 4
  br label %292

250:                                              ; preds = %237
  %251 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %252 = call %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf* %251)
  store %struct.wpabuf* %252, %struct.wpabuf** %4, align 8
  %253 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %254 = call %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf* %253)
  store %struct.wpabuf* %254, %struct.wpabuf** %5, align 8
  %255 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %256 = icmp ne %struct.wpabuf* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  %258 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %259 = icmp ne %struct.wpabuf* %258, null
  br i1 %259, label %265, label %260

260:                                              ; preds = %257, %250
  %261 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %262 = call i32 @wpabuf_free(%struct.wpabuf* %261)
  %263 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %264 = call i32 @wpabuf_free(%struct.wpabuf* %263)
  store i32 -1, i32* %2, align 4
  br label %292

265:                                              ; preds = %257
  %266 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %267 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %265
  %271 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %272 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  store i32 %272, i32* %271, align 4
  %273 = getelementptr inbounds i32, i32* %271, i64 1
  store i32 5, i32* %273, align 4
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 0, i32* %274, align 4
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 80, i32* %275, align 4
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  store i32 242, i32* %276, align 4
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  store i32 5, i32* %277, align 4
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  store i32 0, i32* %278, align 4
  %279 = load i32, i32* @MSG_DEBUG, align 4
  %280 = call i32 @wpa_printf(i32 %279, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %281 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %282 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %283 = call i32 @wpabuf_put_data(%struct.wpabuf* %281, i32* %282, i32 28)
  %284 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %285 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %286 = call i32 @wpabuf_put_data(%struct.wpabuf* %284, i32* %285, i32 28)
  br label %287

287:                                              ; preds = %270, %265
  %288 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %289 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %290 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %291 = call i32 @wps_cb_set_ie(%struct.wps_registrar* %288, %struct.wpabuf* %289, %struct.wpabuf* %290)
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %287, %260, %245, %140, %68, %60, %15
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wps_authorized_macs(%struct.wps_registrar*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_wps_state(%struct.TYPE_8__*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_ap_setup_locked(%struct.TYPE_8__*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_selected_registrar(%struct.wps_registrar*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_sel_reg_dev_password_id(%struct.wps_registrar*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_sel_reg_config_methods(%struct.wps_registrar*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_sel_pbc_reg_uuid_e(%struct.wps_registrar*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(%struct.TYPE_9__*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i64, i32) #1

declare dso_local i64 @wps_build_vendor_ext(%struct.TYPE_9__*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_resp_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_uuid_e(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_device_attrs(%struct.TYPE_9__*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_probe_config_methods(%struct.wps_registrar*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wps_cb_set_ie(%struct.wps_registrar*, %struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
