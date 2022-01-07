; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.hostapd_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sta_info = type { i8*, i8*, i64, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.os_time = type { i32 }

@RADIUS_CODE_ACCOUNTING_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not create new RADIUS packet\00", align 1
@RADIUS_ATTR_ACCT_STATUS_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not add Acct-Status-Type\00", align 1
@RADIUS_ATTR_ACCT_AUTHENTIC = common dso_local global i32 0, align 4
@RADIUS_ACCT_AUTHENTIC_RADIUS = common dso_local global i32 0, align 4
@RADIUS_ACCT_AUTHENTIC_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not add Acct-Authentic\00", align 1
@RADIUS_ADDR_FORMAT = common dso_local global i32 0, align 4
@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not add User-Name\00", align 1
@RADIUS_ATTR_CLASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Could not add Class\00", align 1
@RADIUS_ATTR_CHARGEABLE_USER_IDENTITY = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Could not add CUI\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Could not add CUI from ACL\00", align 1
@RADIUS_ATTR_FRAMED_IP_ADDRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Could not add Framed-IP-Address\00", align 1
@RADIUS_ATTR_EVENT_TIMESTAMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Could not add Event-Timestamp\00", align 1
@RADIUS_ATTR_ACCT_DELAY_TIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Could not add Acct-Delay-Time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_msg* (%struct.hostapd_data*, %struct.sta_info*, i32)* @accounting_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_msg* @accounting_msg(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radius_msg*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.os_time, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @RADIUS_CODE_ACCOUNTING_REQUEST, align 4
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @radius_client_get_id(i32 %18)
  %20 = call %struct.radius_msg* @radius_msg_new(i32 %15, i32 %19)
  store %struct.radius_msg* %20, %struct.radius_msg** %8, align 8
  %21 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %22 = icmp eq %struct.radius_msg* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.radius_msg* null, %struct.radius_msg** %4, align 8
  br label %252

26:                                               ; preds = %3
  %27 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %28 = load i32, i32* @RADIUS_ATTR_ACCT_STATUS_TYPE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %249

35:                                               ; preds = %26
  %36 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %37 = icmp ne %struct.sta_info* %36, null
  br i1 %37, label %38, label %114

38:                                               ; preds = %35
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RADIUS_ATTR_ACCT_AUTHENTIC, align 4
  %45 = call i32 @hostapd_config_get_radius_attr(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %38
  %48 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %49 = load i32, i32* @RADIUS_ATTR_ACCT_AUTHENTIC, align 4
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %51 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @RADIUS_ACCT_AUTHENTIC_RADIUS, align 4
  br label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @RADIUS_ACCT_AUTHENTIC_LOCAL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %48, i32 %49, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = call i32 @wpa_printf(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %249

67:                                               ; preds = %60, %38
  %68 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @ieee802_1x_get_identity(i32 %70, i64* %11)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %88, label %74

74:                                               ; preds = %67
  %75 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %10, align 8
  %84 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @os_strlen(i8* %86)
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %79, %74, %67
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %93 = load i32, i32* @RADIUS_ADDR_FORMAT, align 4
  %94 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %95 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MAC2STR(i32 %96)
  %98 = call i32 @os_snprintf(i8* %92, i32 128, i32 %93, i32 %97)
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %10, align 8
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %102 = call i64 @os_strlen(i8* %101)
  store i64 %102, i64* %11, align 8
  br label %103

103:                                              ; preds = %91, %88
  %104 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %105 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @radius_msg_add_attr(%struct.radius_msg* %104, i32 %105, i32* %106, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @MSG_INFO, align 4
  %112 = call i32 @wpa_printf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %249

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %35
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %117 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %122 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %123 = call i64 @add_common_radius_attr(%struct.hostapd_data* %115, i32 %120, %struct.sta_info* %121, %struct.radius_msg* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %249

126:                                              ; preds = %114
  %127 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %128 = icmp ne %struct.sta_info* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %131 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %132 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %133 = call i64 @add_sqlite_radius_attr(%struct.hostapd_data* %130, %struct.sta_info* %131, %struct.radius_msg* %132, i32 1)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %249

136:                                              ; preds = %129, %126
  %137 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %138 = icmp ne %struct.sta_info* %137, null
  br i1 %138, label %139, label %224

139:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %160, %139
  %141 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32* @ieee802_1x_get_radius_class(i32 %143, i64* %11, i32 %144)
  store i32* %145, i32** %10, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %163

149:                                              ; preds = %140
  %150 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %151 = load i32, i32* @RADIUS_ATTR_CLASS, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @radius_msg_add_attr(%struct.radius_msg* %150, i32 %151, i32* %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* @MSG_INFO, align 4
  %158 = call i32 @wpa_printf(i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %249

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %140

163:                                              ; preds = %148
  %164 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %165 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.wpabuf* @ieee802_1x_get_radius_cui(i32 %166)
  store %struct.wpabuf* %167, %struct.wpabuf** %13, align 8
  %168 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %169 = icmp ne %struct.wpabuf* %168, null
  br i1 %169, label %170, label %182

170:                                              ; preds = %163
  %171 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %172 = load i32, i32* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 4
  %173 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %174 = call i32* @wpabuf_head(%struct.wpabuf* %173)
  %175 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %176 = call i64 @wpabuf_len(%struct.wpabuf* %175)
  %177 = call i32 @radius_msg_add_attr(%struct.radius_msg* %171, i32 %172, i32* %174, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %170
  %180 = load i32, i32* @MSG_ERROR, align 4
  %181 = call i32 @wpa_printf(i32 %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %249

182:                                              ; preds = %170, %163
  %183 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %184 = icmp ne %struct.wpabuf* %183, null
  br i1 %184, label %206, label %185

185:                                              ; preds = %182
  %186 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %187 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %185
  %191 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %192 = load i32, i32* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 4
  %193 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %194 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %198 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @os_strlen(i8* %199)
  %201 = call i32 @radius_msg_add_attr(%struct.radius_msg* %191, i32 %192, i32* %196, i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %190
  %204 = load i32, i32* @MSG_ERROR, align 4
  %205 = call i32 @wpa_printf(i32 %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %249

206:                                              ; preds = %190, %185, %182
  %207 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %208 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %213 = load i32, i32* @RADIUS_ATTR_FRAMED_IP_ADDRESS, align 4
  %214 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %215 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @be_to_host32(i64 %216)
  %218 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %212, i32 %213, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %211
  %221 = load i32, i32* @MSG_ERROR, align 4
  %222 = call i32 @wpa_printf(i32 %221, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %249

223:                                              ; preds = %211, %206
  br label %224

224:                                              ; preds = %223, %136
  %225 = call i32 @os_get_time(%struct.os_time* %14)
  %226 = getelementptr inbounds %struct.os_time, %struct.os_time* %14, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 1000000000
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %231 = load i32, i32* @RADIUS_ATTR_EVENT_TIMESTAMP, align 4
  %232 = getelementptr inbounds %struct.os_time, %struct.os_time* %14, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %230, i32 %231, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %229
  %237 = load i32, i32* @MSG_INFO, align 4
  %238 = call i32 @wpa_printf(i32 %237, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %249

239:                                              ; preds = %229, %224
  %240 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %241 = load i32, i32* @RADIUS_ATTR_ACCT_DELAY_TIME, align 4
  %242 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %240, i32 %241, i32 0)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @MSG_INFO, align 4
  %246 = call i32 @wpa_printf(i32 %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %249

247:                                              ; preds = %239
  %248 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  store %struct.radius_msg* %248, %struct.radius_msg** %4, align 8
  br label %252

249:                                              ; preds = %244, %236, %220, %203, %179, %156, %135, %125, %110, %64, %32
  %250 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %251 = call i32 @radius_msg_free(%struct.radius_msg* %250)
  store %struct.radius_msg* null, %struct.radius_msg** %4, align 8
  br label %252

252:                                              ; preds = %249, %247, %23
  %253 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  ret %struct.radius_msg* %253
}

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #1

declare dso_local i32 @radius_client_get_id(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i32) #1

declare dso_local i32 @hostapd_config_get_radius_attr(i32, i32) #1

declare dso_local i32* @ieee802_1x_get_identity(i32, i64*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @MAC2STR(i32) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i64) #1

declare dso_local i64 @add_common_radius_attr(%struct.hostapd_data*, i32, %struct.sta_info*, %struct.radius_msg*) #1

declare dso_local i64 @add_sqlite_radius_attr(%struct.hostapd_data*, %struct.sta_info*, %struct.radius_msg*, i32) #1

declare dso_local i32* @ieee802_1x_get_radius_class(i32, i64*, i32) #1

declare dso_local %struct.wpabuf* @ieee802_1x_get_radius_cui(i32) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @be_to_host32(i64) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
