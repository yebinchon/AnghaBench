; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_sd_req_asp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_sd_req_asp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.p2ps_advertisement = type { i8, i64, i64, i32, i32, %struct.p2ps_advertisement* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"P2P: SD Request for ASP\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"P2P: ASP protocol not available\00", align 1
@P2P_SERV_P2PS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"P2P: ASP bad request\00", align 1
@P2P_SD_SUCCESS = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"P2P: Add Svc: %s info: %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"P2P: Add Svc: %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"P2P: ASP service not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpabuf*, i8, i8*, i64)* @wpas_sd_req_asp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_sd_req_asp(%struct.wpa_supplicant* %0, %struct.wpabuf* %1, i8 signext %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.p2ps_advertisement*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i64
  store i64 %26, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @wpa_hexdump(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %29)
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %41 = load i8, i8* @P2P_SERV_P2PS, align 1
  %42 = load i8, i8* %8, align 1
  %43 = call i32 @wpas_sd_add_proto_not_avail(%struct.wpabuf* %40, i8 signext %41, i8 signext %42)
  br label %269

44:                                               ; preds = %5
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, 1
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %13, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i64
  store i64 %56, i64* %15, align 8
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 2
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i64 [ %63, %61 ], [ 1, %64 ]
  %67 = add i64 %58, %66
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %74 = load i8, i8* @P2P_SERV_P2PS, align 1
  %75 = load i8, i8* %8, align 1
  %76 = call i32 @wpas_sd_add_bad_request(%struct.wpabuf* %73, i8 signext %74, i8 signext %75)
  br label %269

77:                                               ; preds = %65
  %78 = load i64, i64* %14, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %14, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 42
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  store i32 1, i32* %16, align 4
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %88, %80, %77
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.p2ps_advertisement* @p2p_get_p2ps_adv_list(i32 %96)
  store %struct.p2ps_advertisement* %97, %struct.p2ps_advertisement** %11, align 8
  br label %98

98:                                               ; preds = %255, %91
  %99 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %100 = icmp ne %struct.p2ps_advertisement* %99, null
  br i1 %100, label %101, label %259

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %107 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @os_strlen(i64 %108)
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %255

112:                                              ; preds = %104, %101
  %113 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %114 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call i64 @os_memcmp(i64 %115, i8* %116, i64 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %254

120:                                              ; preds = %112
  %121 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call i64 @find_p2ps_substr(%struct.p2ps_advertisement* %121, i8* %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %254

126:                                              ; preds = %120
  %127 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %128 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @os_strlen(i64 %129)
  store i64 %130, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %131 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %132 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %137 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @os_strlen(i64 %138)
  store i64 %139, i64* %20, align 8
  br label %140

140:                                              ; preds = %135, %126
  %141 = load i64, i64* %19, align 8
  %142 = icmp ugt i64 %141, 255
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %20, align 8
  %145 = icmp ugt i64 %144, 65535
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %140
  br label %269

147:                                              ; preds = %143
  %148 = load i8*, i8** %18, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %177, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %17, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %177, label %153

153:                                              ; preds = %150
  %154 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %155 = call i64 @wpabuf_tailroom(%struct.wpabuf* %154)
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %20, align 8
  %158 = add i64 %156, %157
  %159 = add i64 %158, 16
  %160 = icmp ult i64 %155, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %269

162:                                              ; preds = %153
  %163 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %164 = call i8* @wpabuf_put(%struct.wpabuf* %163, i32 2)
  store i8* %164, i8** %18, align 8
  %165 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %166 = load i8, i8* @P2P_SERV_P2PS, align 1
  %167 = call i32 @wpabuf_put_u8(%struct.wpabuf* %165, i8 signext %166)
  %168 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %169 = load i8, i8* %8, align 1
  %170 = call i32 @wpabuf_put_u8(%struct.wpabuf* %168, i8 signext %169)
  %171 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %172 = load i8, i8* @P2P_SD_SUCCESS, align 1
  %173 = call i32 @wpabuf_put_u8(%struct.wpabuf* %171, i8 signext %172)
  %174 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %175 = call i8* @wpabuf_put(%struct.wpabuf* %174, i32 1)
  store i8* %175, i8** %17, align 8
  %176 = load i8*, i8** %17, align 8
  store i8 0, i8* %176, align 1
  br label %187

177:                                              ; preds = %150, %147
  %178 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %179 = call i64 @wpabuf_tailroom(%struct.wpabuf* %178)
  %180 = load i64, i64* %19, align 8
  %181 = load i64, i64* %20, align 8
  %182 = add i64 %180, %181
  %183 = add i64 %182, 10
  %184 = icmp ult i64 %179, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %269

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %162
  %188 = load i64, i64* %20, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32, i32* @MSG_DEBUG, align 4
  %192 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %193 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %196 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %194, i64 %197)
  br label %205

199:                                              ; preds = %187
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %202 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %203)
  br label %205

205:                                              ; preds = %199, %190
  %206 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %207 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %208 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @wpabuf_put_le32(%struct.wpabuf* %206, i32 %209)
  %211 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %212 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %213 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @wpabuf_put_be16(%struct.wpabuf* %211, i32 %214)
  %216 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %217 = load i64, i64* %19, align 8
  %218 = trunc i64 %217 to i8
  %219 = call i32 @wpabuf_put_u8(%struct.wpabuf* %216, i8 signext %218)
  %220 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %221 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %222 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %19, align 8
  %225 = call i32 @wpabuf_put_data(%struct.wpabuf* %220, i64 %223, i64 %224)
  %226 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %227 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %228 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %227, i32 0, i32 0
  %229 = load i8, i8* %228, align 8
  %230 = call i32 @wpabuf_put_u8(%struct.wpabuf* %226, i8 signext %229)
  %231 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %232 = load i64, i64* %20, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @wpabuf_put_le16(%struct.wpabuf* %231, i32 %233)
  %235 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %236 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %237 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %20, align 8
  %240 = call i32 @wpabuf_put_data(%struct.wpabuf* %235, i64 %238, i64 %239)
  %241 = load i8*, i8** %17, align 8
  %242 = load i8, i8* %241, align 1
  %243 = add i8 %242, 1
  store i8 %243, i8* %241, align 1
  %244 = load i8*, i8** %18, align 8
  %245 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %246 = call i8* @wpabuf_put(%struct.wpabuf* %245, i32 0)
  %247 = load i8*, i8** %18, align 8
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sub nsw i64 %250, 2
  %252 = trunc i64 %251 to i32
  %253 = call i32 @WPA_PUT_LE16(i8* %244, i32 %252)
  br label %254

254:                                              ; preds = %205, %120, %112
  br label %255

255:                                              ; preds = %254, %111
  %256 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %257 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %256, i32 0, i32 5
  %258 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %257, align 8
  store %struct.p2ps_advertisement* %258, %struct.p2ps_advertisement** %11, align 8
  br label %98

259:                                              ; preds = %98
  %260 = load i8*, i8** %17, align 8
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %269

262:                                              ; preds = %259
  %263 = load i32, i32* @MSG_DEBUG, align 4
  %264 = call i32 (i32, i8*, ...) @wpa_printf(i32 %263, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %265 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %266 = load i8, i8* @P2P_SERV_P2PS, align 1
  %267 = load i8, i8* %8, align 1
  %268 = call i32 @wpas_sd_add_not_found(%struct.wpabuf* %265, i8 signext %266, i8 signext %267)
  br label %269

269:                                              ; preds = %37, %70, %146, %161, %185, %262, %259
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_sd_add_proto_not_avail(%struct.wpabuf*, i8 signext, i8 signext) #1

declare dso_local i32 @wpas_sd_add_bad_request(%struct.wpabuf*, i8 signext, i8 signext) #1

declare dso_local %struct.p2ps_advertisement* @p2p_get_p2ps_adv_list(i32) #1

declare dso_local i64 @os_strlen(i64) #1

declare dso_local i64 @os_memcmp(i64, i8*, i64) #1

declare dso_local i64 @find_p2ps_substr(%struct.p2ps_advertisement*, i8*, i64) #1

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

declare dso_local i32 @wpabuf_put_le32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i8*, i32) #1

declare dso_local i32 @wpas_sd_add_not_found(%struct.wpabuf*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
