; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_update_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32**, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.p2p_data* }
%struct.p2p_data = type { i32 }

@WPA_DRIVER_FLAGS_P2P_CAPABLE = common dso_local global i32 0, align 4
@CFG_CHANGED_DEVICE_NAME = common dso_local global i32 0, align 4
@CFG_CHANGED_DEVICE_TYPE = common dso_local global i32 0, align 4
@CFG_CHANGED_CONFIG_METHODS = common dso_local global i32 0, align 4
@CFG_CHANGED_UUID = common dso_local global i32 0, align 4
@CFG_CHANGED_WPS_STRING = common dso_local global i32 0, align 4
@CFG_CHANGED_SEC_DEVICE_TYPE = common dso_local global i32 0, align 4
@CFG_CHANGED_VENDOR_EXTENSION = common dso_local global i32 0, align 4
@MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4
@CFG_CHANGED_COUNTRY = common dso_local global i32 0, align 4
@CFG_CHANGED_P2P_SSID_POSTFIX = common dso_local global i32 0, align 4
@CFG_CHANGED_P2P_INTRA_BSS = common dso_local global i32 0, align 4
@CFG_CHANGED_P2P_LISTEN_CHANNEL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"P2P: Own listen channel update failed: %d\00", align 1
@CFG_CHANGED_P2P_OPER_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"P2P: Own oper channel update failed: %d\00", align 1
@CFG_CHANGED_P2P_PREF_CHAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"P2P: Preferred channel list update failed\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"P2P: No GO channel list update failed\00", align 1
@CFG_CHANGED_P2P_PASSPHRASE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_update_config(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.p2p_data*, %struct.p2p_data** %19, align 8
  store %struct.p2p_data* %20, %struct.p2p_data** %3, align 8
  %21 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %22 = icmp eq %struct.p2p_data* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %485

24:                                               ; preds = %1
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_CAPABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %485

32:                                               ; preds = %24
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CFG_CHANGED_DEVICE_NAME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 20
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @p2p_set_dev_name(%struct.p2p_data* %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CFG_CHANGED_DEVICE_TYPE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 19
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @p2p_set_pri_dev_type(%struct.p2p_data* %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %49
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CFG_CHANGED_CONFIG_METHODS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @p2p_set_config_methods(%struct.p2p_data* %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %71, %66
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %90 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CFG_CHANGED_UUID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %105 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @p2p_set_uuid(%struct.p2p_data* %103, i32 %108)
  br label %110

110:                                              ; preds = %102, %93, %88
  %111 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %112 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @CFG_CHANGED_WPS_STRING, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %110
  %120 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %121 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %122 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 18
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @p2p_set_manufacturer(%struct.p2p_data* %120, i32 %125)
  %127 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %128 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %129 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 17
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @p2p_set_model_name(%struct.p2p_data* %127, i32 %132)
  %134 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %135 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %136 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 16
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @p2p_set_model_number(%struct.p2p_data* %134, i32 %139)
  %141 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %142 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %143 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 15
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @p2p_set_serial_number(%struct.p2p_data* %141, i32 %146)
  br label %148

148:                                              ; preds = %119, %110
  %149 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %150 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CFG_CHANGED_SEC_DEVICE_TYPE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %148
  %158 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %159 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %160 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 14
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %166 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 13
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @p2p_set_sec_dev_types(%struct.p2p_data* %158, i8* %164, i32 %169)
  br label %171

171:                                              ; preds = %157, %148
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CFG_CHANGED_VENDOR_EXTENSION, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %215

180:                                              ; preds = %171
  %181 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %182 = call i32 @p2p_remove_wps_vendor_extensions(%struct.p2p_data* %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %211, %180
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @MAX_WPS_VENDOR_EXT, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %214

187:                                              ; preds = %183
  %188 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %189 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %188, i32 0, i32 1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 12
  %192 = load i32**, i32*** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %187
  br label %211

199:                                              ; preds = %187
  %200 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %201 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %202 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 12
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @p2p_add_wps_vendor_extension(%struct.p2p_data* %200, i32* %209)
  br label %211

211:                                              ; preds = %199, %198
  %212 = load i32, i32* %4, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %4, align 4
  br label %183

214:                                              ; preds = %183
  br label %215

215:                                              ; preds = %214, %171
  %216 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %217 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @CFG_CHANGED_COUNTRY, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %265

224:                                              ; preds = %215
  %225 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %226 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %225, i32 0, i32 1
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %265

234:                                              ; preds = %224
  %235 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %236 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %235, i32 0, i32 1
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %265

244:                                              ; preds = %234
  %245 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %246 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 0
  %251 = load i8, i8* %250, align 1
  %252 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 %251, i8* %252, align 1
  %253 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %254 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %253, i32 0, i32 1
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 %259, i8* %260, align 1
  %261 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 4, i8* %261, align 1
  %262 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %263 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %264 = call i32 @p2p_set_country(%struct.p2p_data* %262, i8* %263)
  br label %265

265:                                              ; preds = %244, %234, %224, %215
  %266 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %267 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %266, i32 0, i32 1
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @CFG_CHANGED_P2P_SSID_POSTFIX, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %299

274:                                              ; preds = %265
  %275 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %276 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %277 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %276, i32 0, i32 1
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 11
  %280 = load i64, i64* %279, align 8
  %281 = inttoptr i64 %280 to i32*
  %282 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %283 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %282, i32 0, i32 1
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 11
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %274
  %289 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %290 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %289, i32 0, i32 1
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 11
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @os_strlen(i64 %293)
  br label %296

295:                                              ; preds = %274
  br label %296

296:                                              ; preds = %295, %288
  %297 = phi i32 [ %294, %288 ], [ 0, %295 ]
  %298 = call i32 @p2p_set_ssid_postfix(%struct.p2p_data* %275, i32* %281, i32 %297)
  br label %299

299:                                              ; preds = %296, %265
  %300 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %301 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %300, i32 0, i32 1
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @CFG_CHANGED_P2P_INTRA_BSS, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %299
  %309 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %310 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %311 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %310, i32 0, i32 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 10
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @p2p_set_intra_bss_dist(%struct.p2p_data* %309, i32 %314)
  br label %316

316:                                              ; preds = %308, %299
  %317 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %318 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %317, i32 0, i32 1
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @CFG_CHANGED_P2P_LISTEN_CHANNEL, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %373

325:                                              ; preds = %316
  %326 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %327 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %326, i32 0, i32 1
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %350

332:                                              ; preds = %325
  %333 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %334 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %333, i32 0, i32 1
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %332
  %340 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %341 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %340, i32 0, i32 1
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %6, align 4
  %345 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %346 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %345, i32 0, i32 1
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %360

350:                                              ; preds = %332, %325
  store i32 81, i32* %6, align 4
  %351 = call i64 @os_get_random(i32* %9, i32 4)
  %352 = icmp slt i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store i32 1, i32* %7, align 4
  br label %359

354:                                              ; preds = %350
  %355 = load i32, i32* %9, align 4
  %356 = urem i32 %355, 3
  %357 = mul i32 %356, 5
  %358 = add i32 1, %357
  store i32 %358, i32* %7, align 4
  br label %359

359:                                              ; preds = %354, %353
  store i32 0, i32* %10, align 4
  br label %360

360:                                              ; preds = %359, %339
  %361 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* %10, align 4
  %365 = call i32 @p2p_set_listen_channel(%struct.p2p_data* %361, i32 %362, i32 %363, i32 %364)
  store i32 %365, i32* %8, align 4
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %360
  %369 = load i32, i32* @MSG_ERROR, align 4
  %370 = load i32, i32* %8, align 4
  %371 = call i32 (i32, i8*, ...) @wpa_printf(i32 %369, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %370)
  br label %372

372:                                              ; preds = %368, %360
  br label %373

373:                                              ; preds = %372, %316
  %374 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %375 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %374, i32 0, i32 1
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @CFG_CHANGED_P2P_OPER_CHANNEL, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %430

382:                                              ; preds = %373
  store i32 0, i32* %14, align 4
  %383 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %384 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %383, i32 0, i32 1
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %382
  %390 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %391 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %390, i32 0, i32 1
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %407

396:                                              ; preds = %389
  %397 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %398 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %397, i32 0, i32 1
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %11, align 4
  %402 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %403 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %402, i32 0, i32 1
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %417

407:                                              ; preds = %389, %382
  store i32 81, i32* %11, align 4
  %408 = call i64 @os_get_random(i32* %15, i32 4)
  %409 = icmp slt i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %407
  store i32 1, i32* %12, align 4
  br label %416

411:                                              ; preds = %407
  %412 = load i32, i32* %15, align 4
  %413 = urem i32 %412, 3
  %414 = mul i32 %413, 5
  %415 = add i32 1, %414
  store i32 %415, i32* %12, align 4
  br label %416

416:                                              ; preds = %411, %410
  store i32 0, i32* %13, align 4
  br label %417

417:                                              ; preds = %416, %396
  %418 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %419 = load i32, i32* %11, align 4
  %420 = load i32, i32* %12, align 4
  %421 = load i32, i32* %13, align 4
  %422 = call i32 @p2p_set_oper_channel(%struct.p2p_data* %418, i32 %419, i32 %420, i32 %421)
  store i32 %422, i32* %14, align 4
  %423 = load i32, i32* %14, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %417
  %426 = load i32, i32* @MSG_ERROR, align 4
  %427 = load i32, i32* %14, align 4
  %428 = call i32 (i32, i8*, ...) @wpa_printf(i32 %426, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %427)
  br label %429

429:                                              ; preds = %425, %417
  br label %430

430:                                              ; preds = %429, %373
  %431 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %432 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %431, i32 0, i32 1
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @CFG_CHANGED_P2P_PREF_CHAN, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %468

439:                                              ; preds = %430
  %440 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %441 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %442 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %441, i32 0, i32 1
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 9
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %447 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %446, i32 0, i32 1
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 8
  %451 = call i64 @p2p_set_pref_chan(%struct.p2p_data* %440, i32 %445, i32 %450)
  %452 = icmp slt i64 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %439
  %454 = load i32, i32* @MSG_ERROR, align 4
  %455 = call i32 (i32, i8*, ...) @wpa_printf(i32 %454, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %456

456:                                              ; preds = %453, %439
  %457 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %458 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %459 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %458, i32 0, i32 1
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 7
  %462 = call i64 @p2p_set_no_go_freq(%struct.p2p_data* %457, i32* %461)
  %463 = icmp slt i64 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %456
  %465 = load i32, i32* @MSG_ERROR, align 4
  %466 = call i32 (i32, i8*, ...) @wpa_printf(i32 %465, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %467

467:                                              ; preds = %464, %456
  br label %468

468:                                              ; preds = %467, %430
  %469 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %470 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %469, i32 0, i32 1
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* @CFG_CHANGED_P2P_PASSPHRASE_LEN, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %485

477:                                              ; preds = %468
  %478 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %479 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %480 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %479, i32 0, i32 1
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 6
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @p2p_set_passphrase_len(%struct.p2p_data* %478, i32 %483)
  br label %485

485:                                              ; preds = %23, %31, %477, %468
  ret void
}

declare dso_local i32 @p2p_set_dev_name(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_pri_dev_type(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_config_methods(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_uuid(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_manufacturer(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_model_name(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_model_number(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_serial_number(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_sec_dev_types(%struct.p2p_data*, i8*, i32) #1

declare dso_local i32 @p2p_remove_wps_vendor_extensions(%struct.p2p_data*) #1

declare dso_local i32 @p2p_add_wps_vendor_extension(%struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_set_country(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_set_ssid_postfix(%struct.p2p_data*, i32*, i32) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local i32 @p2p_set_intra_bss_dist(%struct.p2p_data*, i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i32 @p2p_set_listen_channel(%struct.p2p_data*, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @p2p_set_oper_channel(%struct.p2p_data*, i32, i32, i32) #1

declare dso_local i64 @p2p_set_pref_chan(%struct.p2p_data*, i32, i32) #1

declare dso_local i64 @p2p_set_no_go_freq(%struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_set_passphrase_len(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
