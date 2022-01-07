; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_build_wps_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_build_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPS_DEV_OUI_WFA = common dso_local global i32 0, align 4
@ATTR_WPS_STATE = common dso_local global i32 0, align 4
@WPS_STATE_NOT_CONFIGURED = common dso_local global i32 0, align 4
@ATTR_DEV_PASSWORD_ID = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"P2P: WPS IE Device Password ID: %d\00", align 1
@ATTR_RESPONSE_TYPE = common dso_local global i32 0, align 4
@WPS_RESP_ENROLLEE_INFO = common dso_local global i32 0, align 4
@ATTR_MANUFACTURER = common dso_local global i32 0, align 4
@ATTR_MODEL_NAME = common dso_local global i32 0, align 4
@ATTR_MODEL_NUMBER = common dso_local global i32 0, align 4
@ATTR_SERIAL_NUMBER = common dso_local global i32 0, align 4
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@ATTR_PRIMARY_DEV_TYPE = common dso_local global i32 0, align 4
@ATTR_DEV_NAME = common dso_local global i32 0, align 4
@ATTR_CONFIG_METHODS = common dso_local global i32 0, align 4
@ATTR_SECONDARY_DEV_TYPE_LIST = common dso_local global i32 0, align 4
@P2P_MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4
@ATTR_VENDOR_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_build_wps_ie(%struct.p2p_data* %0, %struct.wpabuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %13 = call i32 @wpabuf_tailroom(%struct.wpabuf* %12)
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %296

16:                                               ; preds = %4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %19 = call i32 @wpabuf_put_u8(%struct.wpabuf* %17, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i32* @wpabuf_put(%struct.wpabuf* %20, i32 1)
  store i32* %21, i32** %10, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %23 = load i32, i32* @WPS_DEV_OUI_WFA, align 4
  %24 = call i32 @wpabuf_put_be32(%struct.wpabuf* %22, i32 %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %26 = call i64 @wps_build_version(%struct.wpabuf* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %296

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %34 = call i32 @wpabuf_tailroom(%struct.wpabuf* %33)
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %296

37:                                               ; preds = %32
  %38 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %39 = load i32, i32* @ATTR_WPS_STATE, align 4
  %40 = call i32 @wpabuf_put_be16(%struct.wpabuf* %38, i32 %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %42 = call i32 @wpabuf_put_be16(%struct.wpabuf* %41, i32 1)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %44 = load i32, i32* @WPS_STATE_NOT_CONFIGURED, align 4
  %45 = call i32 @wpabuf_put_u8(%struct.wpabuf* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %29
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %51 = call i32 @wpabuf_tailroom(%struct.wpabuf* %50)
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %296

54:                                               ; preds = %49
  %55 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %56 = load i32, i32* @ATTR_DEV_PASSWORD_ID, align 4
  %57 = call i32 @wpabuf_put_be16(%struct.wpabuf* %55, i32 %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %59 = call i32 @wpabuf_put_be16(%struct.wpabuf* %58, i32 2)
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @wpabuf_put_be16(%struct.wpabuf* %63, i32 %64)
  br label %66

66:                                               ; preds = %54, %46
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %182

69:                                               ; preds = %66
  %70 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %71 = call i32 @wpabuf_tailroom(%struct.wpabuf* %70)
  %72 = icmp slt i32 %71, 5
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %296

74:                                               ; preds = %69
  %75 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %76 = load i32, i32* @ATTR_RESPONSE_TYPE, align 4
  %77 = call i32 @wpabuf_put_be16(%struct.wpabuf* %75, i32 %76)
  %78 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %79 = call i32 @wpabuf_put_be16(%struct.wpabuf* %78, i32 1)
  %80 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %81 = load i32, i32* @WPS_RESP_ENROLLEE_INFO, align 4
  %82 = call i32 @wpabuf_put_u8(%struct.wpabuf* %80, i32 %81)
  %83 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %84 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %85 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @wps_build_uuid_e(%struct.wpabuf* %83, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %131, label %91

91:                                               ; preds = %74
  %92 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %93 = load i32, i32* @ATTR_MANUFACTURER, align 4
  %94 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %95 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @p2p_add_wps_string(%struct.wpabuf* %92, i32 %93, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %91
  %102 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %103 = load i32, i32* @ATTR_MODEL_NAME, align 4
  %104 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %105 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @p2p_add_wps_string(%struct.wpabuf* %102, i32 %103, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %101
  %112 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %113 = load i32, i32* @ATTR_MODEL_NUMBER, align 4
  %114 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %115 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @p2p_add_wps_string(%struct.wpabuf* %112, i32 %113, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %111
  %122 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %123 = load i32, i32* @ATTR_SERIAL_NUMBER, align 4
  %124 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %125 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @p2p_add_wps_string(%struct.wpabuf* %122, i32 %123, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121, %111, %101, %91, %74
  store i32 -1, i32* %5, align 4
  br label %296

132:                                              ; preds = %121
  %133 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %134 = call i32 @wpabuf_tailroom(%struct.wpabuf* %133)
  %135 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %136 = add nsw i32 4, %135
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 -1, i32* %5, align 4
  br label %296

139:                                              ; preds = %132
  %140 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %141 = load i32, i32* @ATTR_PRIMARY_DEV_TYPE, align 4
  %142 = call i32 @wpabuf_put_be16(%struct.wpabuf* %140, i32 %141)
  %143 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %144 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %145 = call i32 @wpabuf_put_be16(%struct.wpabuf* %143, i32 %144)
  %146 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %147 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %148 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %153 = call i32 @wpabuf_put_data(%struct.wpabuf* %146, i32 %151, i32 %152)
  %154 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %155 = load i32, i32* @ATTR_DEV_NAME, align 4
  %156 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %157 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @p2p_add_wps_string(%struct.wpabuf* %154, i32 %155, i32 %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %139
  store i32 -1, i32* %5, align 4
  br label %296

164:                                              ; preds = %139
  %165 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %166 = call i32 @wpabuf_tailroom(%struct.wpabuf* %165)
  %167 = icmp slt i32 %166, 6
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 -1, i32* %5, align 4
  br label %296

169:                                              ; preds = %164
  %170 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %171 = load i32, i32* @ATTR_CONFIG_METHODS, align 4
  %172 = call i32 @wpabuf_put_be16(%struct.wpabuf* %170, i32 %171)
  %173 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %174 = call i32 @wpabuf_put_be16(%struct.wpabuf* %173, i32 2)
  %175 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %176 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %177 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @wpabuf_put_be16(%struct.wpabuf* %175, i32 %180)
  br label %182

182:                                              ; preds = %169, %66
  %183 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %184 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %183, i32 0, i32* null, i32 0, i32 0)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 -1, i32* %5, align 4
  br label %296

187:                                              ; preds = %182
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %237

190:                                              ; preds = %187
  %191 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %192 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %237

197:                                              ; preds = %190
  %198 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %199 = call i32 @wpabuf_tailroom(%struct.wpabuf* %198)
  %200 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %201 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %202 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %201, i32 0, i32 1
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = add nsw i32 4, %206
  %208 = icmp slt i32 %199, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  store i32 -1, i32* %5, align 4
  br label %296

210:                                              ; preds = %197
  %211 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %212 = load i32, i32* @ATTR_SECONDARY_DEV_TYPE_LIST, align 4
  %213 = call i32 @wpabuf_put_be16(%struct.wpabuf* %211, i32 %212)
  %214 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %215 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %216 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %217 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %216, i32 0, i32 1
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %215, %220
  %222 = call i32 @wpabuf_put_be16(%struct.wpabuf* %214, i32 %221)
  %223 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %224 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %225 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %224, i32 0, i32 1
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %230 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %231 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %229, %234
  %236 = call i32 @wpabuf_put_data(%struct.wpabuf* %223, i32 %228, i32 %235)
  br label %237

237:                                              ; preds = %210, %190, %187
  store i32 0, i32* %11, align 4
  br label %238

238:                                              ; preds = %289, %237
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %292

242:                                              ; preds = %238
  %243 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %244 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %243, i32 0, i32 0
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  br label %292

252:                                              ; preds = %242
  %253 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %254 = call i32 @wpabuf_tailroom(%struct.wpabuf* %253)
  %255 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %256 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %255, i32 0, i32 0
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @wpabuf_len(i32* %261)
  %263 = add nsw i32 4, %262
  %264 = icmp slt i32 %254, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %252
  br label %289

266:                                              ; preds = %252
  %267 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %268 = load i32, i32* @ATTR_VENDOR_EXT, align 4
  %269 = call i32 @wpabuf_put_be16(%struct.wpabuf* %267, i32 %268)
  %270 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %271 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %272 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %271, i32 0, i32 0
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @wpabuf_len(i32* %277)
  %279 = call i32 @wpabuf_put_be16(%struct.wpabuf* %270, i32 %278)
  %280 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %281 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %282 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %281, i32 0, i32 0
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @wpabuf_put_buf(%struct.wpabuf* %280, i32* %287)
  br label %289

289:                                              ; preds = %266, %265
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %238

292:                                              ; preds = %251, %238
  %293 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %294 = load i32*, i32** %10, align 8
  %295 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %293, i32* %294)
  store i32 0, i32* %5, align 4
  br label %296

296:                                              ; preds = %292, %209, %186, %168, %163, %138, %131, %73, %53, %36, %28, %15
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @wps_build_uuid_e(%struct.wpabuf*, i32) #1

declare dso_local i64 @p2p_add_wps_string(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_len(i32*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
