; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_parse_subscribe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_parse_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32 }
%struct.http_request = type { i32 }
%struct.wpabuf = type { i32 }
%struct.subscription = type { i32* }

@UUID_LEN = common dso_local global i32 0, align 4
@HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS UPnP: HTTP SUBSCRIBE\00", align 1
@UPNP_WPS_DEVICE_EVENT_FILE = common dso_local global i32 0, align 4
@HTTP_PRECONDITION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"WPS UPnP: HTTP SUBSCRIBE for event\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NT:\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"upnp:event\00", align 1
@HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"CALLBACK:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SID:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"uuid:\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"WPS UPnP: Subscription renewal\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"WPS UPnP: Could not find SID %s\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"WPS UPnP: New subscription\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@http_server_hdr = common dso_local global i8* null, align 8
@http_connection_close = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"Content-Length: 0\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"SID: uuid:\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"WPS UPnP: Assigned SID %s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Timeout: Second-%d\0D\0A\00", align 1
@UPNP_SUBSCRIBE_SEC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"WPS UPnP: SUBSCRIBE failed - return %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upnp_wps_device_sm*, %struct.http_request*, i8*)* @web_connection_parse_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_connection_parse_subscribe(%struct.upnp_wps_device_sm* %0, %struct.http_request* %1, i8* %2) #0 {
  %4 = alloca %struct.upnp_wps_device_sm*, align 8
  %5 = alloca %struct.http_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.subscription*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [80 x i8], align 16
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %4, align 8
  store %struct.http_request* %1, %struct.http_request** %5, align 8
  store i8* %2, i8** %6, align 8
  %24 = load %struct.http_request*, %struct.http_request** %5, align 8
  %25 = call i8* @http_request_get_hdr(%struct.http_request* %24)
  store i8* %25, i8** %9, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* @UUID_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store %struct.subscription* null, %struct.subscription** %20, align 8
  %30 = load i32, i32* @HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %30, i32* %21, align 4
  %31 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %31, %struct.wpabuf** %7, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %33 = icmp eq %struct.wpabuf* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.http_request*, %struct.http_request** %5, align 8
  %36 = call i32 @http_request_deinit(%struct.http_request* %35)
  store i32 1, i32* %22, align 4
  br label %334

37:                                               ; preds = %3
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @os_strlen(i8* %41)
  %43 = call i32 @wpa_hexdump_ascii(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %40, i32 %42)
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @UPNP_WPS_DEVICE_EVENT_FILE, align 4
  %47 = call i64 @os_strcasecmp(i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @HTTP_PRECONDITION_FAILED, align 4
  store i32 %50, i32* %21, align 4
  br label %322

51:                                               ; preds = %37
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @os_strchr(i8* %54, i8 signext 10)
  store i8* %55, i8** %13, align 8
  br label %56

56:                                               ; preds = %234, %233, %168, %105, %51
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %235

59:                                               ; preds = %56
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @os_strchr(i8* %62, i8 signext 10)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %235

67:                                               ; preds = %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @os_strlen(i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @os_strncasecmp(i8* %70, i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %67
  %76 = load i32, i32* %12, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %92, %75
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 32
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 9
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ true, %80 ], [ %89, %85 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %10, align 8
  br label %80

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @os_strlen(i8* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @os_strncasecmp(i8* %98, i8* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %104, i32* %21, align 4
  br label %322

105:                                              ; preds = %95
  store i32 1, i32* %15, align 4
  br label %56

106:                                              ; preds = %67
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @os_strlen(i8* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @os_strncasecmp(i8* %109, i8* %110, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %169

114:                                              ; preds = %106
  %115 = load i32, i32* %12, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %131, %114
  %120 = load i8*, i8** %10, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 9
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ true, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %10, align 8
  br label %119

134:                                              ; preds = %129
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %14, align 4
  %141 = load i8*, i8** %19, align 8
  %142 = call i32 @os_free(i8* %141)
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i8* @dup_binstr(i8* %143, i32 %144)
  store i8* %145, i8** %19, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %134
  %149 = load i32, i32* @HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %149, i32* %21, align 4
  br label %322

150:                                              ; preds = %134
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load i8*, i8** %19, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 13
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load i8*, i8** %19, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 0, i8* %167, align 1
  br label %168

168:                                              ; preds = %162, %153, %150
  br label %56

169:                                              ; preds = %106
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @os_strlen(i8* %170)
  store i32 %171, i32* %12, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i64 @os_strncasecmp(i8* %172, i8* %173, i32 %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %234

177:                                              ; preds = %169
  %178 = load i32, i32* %12, align 4
  %179 = load i8*, i8** %10, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %10, align 8
  br label %182

182:                                              ; preds = %194, %177
  %183 = load i8*, i8** %10, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 32
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load i8*, i8** %10, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 9
  br label %192

192:                                              ; preds = %187, %182
  %193 = phi i1 [ true, %182 ], [ %191, %187 ]
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %10, align 8
  br label %182

197:                                              ; preds = %192
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 @os_strlen(i8* %198)
  store i32 %199, i32* %12, align 4
  %200 = load i8*, i8** %10, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i64 @os_strncasecmp(i8* %200, i8* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %206, i32* %21, align 4
  br label %322

207:                                              ; preds = %197
  %208 = load i32, i32* %12, align 4
  %209 = load i8*, i8** %10, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %10, align 8
  br label %212

212:                                              ; preds = %224, %207
  %213 = load i8*, i8** %10, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 32
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load i8*, i8** %10, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 9
  br label %222

222:                                              ; preds = %217, %212
  %223 = phi i1 [ true, %212 ], [ %221, %217 ]
  br i1 %223, label %224, label %227

224:                                              ; preds = %222
  %225 = load i8*, i8** %10, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %10, align 8
  br label %212

227:                                              ; preds = %222
  %228 = load i8*, i8** %10, align 8
  %229 = call i64 @uuid_str2bin(i8* %228, i32* %29)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %232, i32* %21, align 4
  br label %322

233:                                              ; preds = %227
  store i32 1, i32* %18, align 4
  br label %56

234:                                              ; preds = %169
  br label %56

235:                                              ; preds = %66, %56
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %235
  %239 = load i32, i32* @MSG_DEBUG, align 4
  %240 = call i32 (i32, i8*, ...) @wpa_printf(i32 %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %241 = load i8*, i8** %19, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %244, i32* %21, align 4
  br label %322

245:                                              ; preds = %238
  %246 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %247 = call %struct.subscription* @subscription_renew(%struct.upnp_wps_device_sm* %246, i32* %29)
  store %struct.subscription* %247, %struct.subscription** %20, align 8
  %248 = load %struct.subscription*, %struct.subscription** %20, align 8
  %249 = icmp eq %struct.subscription* %248, null
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %252 = call i32 @uuid_bin2str(i32* %29, i8* %251, i32 80)
  %253 = load i32, i32* @MSG_DEBUG, align 4
  %254 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %255 = call i32 (i32, i8*, ...) @wpa_printf(i32 %253, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %254)
  %256 = load i32, i32* @HTTP_PRECONDITION_FAILED, align 4
  store i32 %256, i32* %21, align 4
  br label %322

257:                                              ; preds = %245
  br label %280

258:                                              ; preds = %235
  %259 = load i8*, i8** %19, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %277

261:                                              ; preds = %258
  %262 = load i32, i32* @MSG_DEBUG, align 4
  %263 = call i32 (i32, i8*, ...) @wpa_printf(i32 %262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %261
  %267 = load i32, i32* @HTTP_PRECONDITION_FAILED, align 4
  store i32 %267, i32* %21, align 4
  br label %322

268:                                              ; preds = %261
  %269 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %270 = load i8*, i8** %19, align 8
  %271 = call %struct.subscription* @subscription_start(%struct.upnp_wps_device_sm* %269, i8* %270)
  store %struct.subscription* %271, %struct.subscription** %20, align 8
  %272 = load %struct.subscription*, %struct.subscription** %20, align 8
  %273 = icmp eq %struct.subscription* %272, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32, i32* @HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %275, i32* %21, align 4
  br label %322

276:                                              ; preds = %268
  br label %279

277:                                              ; preds = %258
  %278 = load i32, i32* @HTTP_PRECONDITION_FAILED, align 4
  store i32 %278, i32* %21, align 4
  br label %322

279:                                              ; preds = %276
  br label %280

280:                                              ; preds = %279, %257
  %281 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %282 = load i32, i32* @HTTP_OK, align 4
  %283 = call i32 @http_put_reply_code(%struct.wpabuf* %281, i32 %282)
  %284 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %285 = load i8*, i8** @http_server_hdr, align 8
  %286 = call i32 @wpabuf_put_str(%struct.wpabuf* %284, i8* %285)
  %287 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %288 = load i8*, i8** @http_connection_close, align 8
  %289 = call i32 @wpabuf_put_str(%struct.wpabuf* %287, i8* %288)
  %290 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %291 = call i32 @wpabuf_put_str(%struct.wpabuf* %290, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %292 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %293 = call i32 @wpabuf_put_str(%struct.wpabuf* %292, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %294 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %295 = call i8* @wpabuf_put(%struct.wpabuf* %294, i32 0)
  store i8* %295, i8** %8, align 8
  %296 = load %struct.subscription*, %struct.subscription** %20, align 8
  %297 = getelementptr inbounds %struct.subscription, %struct.subscription* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i8*, i8** %8, align 8
  %300 = call i32 @uuid_bin2str(i32* %298, i8* %299, i32 80)
  %301 = load i32, i32* @MSG_DEBUG, align 4
  %302 = load i8*, i8** %8, align 8
  %303 = call i32 (i32, i8*, ...) @wpa_printf(i32 %301, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %302)
  %304 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %305 = load i8*, i8** %8, align 8
  %306 = call i32 @os_strlen(i8* %305)
  %307 = call i8* @wpabuf_put(%struct.wpabuf* %304, i32 %306)
  %308 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %309 = call i32 @wpabuf_put_str(%struct.wpabuf* %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %310 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %311 = load i32, i32* @UPNP_SUBSCRIBE_SEC, align 4
  %312 = call i32 @wpabuf_printf(%struct.wpabuf* %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %311)
  %313 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %314 = call i32 @http_put_date(%struct.wpabuf* %313)
  %315 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %316 = call i32 @wpabuf_put_str(%struct.wpabuf* %315, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %317 = load i8*, i8** %19, align 8
  %318 = call i32 @os_free(i8* %317)
  %319 = load %struct.http_request*, %struct.http_request** %5, align 8
  %320 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %321 = call i32 @http_request_send_and_deinit(%struct.http_request* %319, %struct.wpabuf* %320)
  store i32 1, i32* %22, align 4
  br label %334

322:                                              ; preds = %277, %274, %266, %250, %243, %231, %205, %148, %103, %49
  %323 = load i32, i32* @MSG_DEBUG, align 4
  %324 = load i32, i32* %21, align 4
  %325 = call i32 (i32, i8*, ...) @wpa_printf(i32 %323, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %324)
  %326 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %327 = load i32, i32* %21, align 4
  %328 = call i32 @http_put_empty(%struct.wpabuf* %326, i32 %327)
  %329 = load %struct.http_request*, %struct.http_request** %5, align 8
  %330 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %331 = call i32 @http_request_send_and_deinit(%struct.http_request* %329, %struct.wpabuf* %330)
  %332 = load i8*, i8** %19, align 8
  %333 = call i32 @os_free(i8* %332)
  store i32 0, i32* %22, align 4
  br label %334

334:                                              ; preds = %322, %280, %34
  %335 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %335)
  %336 = load i32, i32* %22, align 4
  switch i32 %336, label %338 [
    i32 0, label %337
    i32 1, label %337
  ]

337:                                              ; preds = %334, %334
  ret void

338:                                              ; preds = %334
  unreachable
}

declare dso_local i8* @http_request_get_hdr(%struct.http_request*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @dup_binstr(i8*, i32) #1

declare dso_local i64 @uuid_str2bin(i8*, i32*) #1

declare dso_local %struct.subscription* @subscription_renew(%struct.upnp_wps_device_sm*, i32*) #1

declare dso_local i32 @uuid_bin2str(i32*, i8*, i32) #1

declare dso_local %struct.subscription* @subscription_start(%struct.upnp_wps_device_sm*, i8*) #1

declare dso_local i32 @http_put_reply_code(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @http_put_date(%struct.wpabuf*) #1

declare dso_local i32 @http_request_send_and_deinit(%struct.http_request*, %struct.wpabuf*) #1

declare dso_local i32 @http_put_empty(%struct.wpabuf*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
