; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ie_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ie_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ie_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[%s-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"?]\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%sEAP\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%sPSK\00", align 1
@WPA_KEY_MGMT_WPA_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%sNone\00", align 1
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%sSAE\00", align 1
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%sOSEN\00", align 1
@WPA_CAPABILITY_PREAUTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"-preauth\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32*, i64)* @wpa_supplicant_ie_txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_supplicant_ie_txt(i8* %0, i8* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpa_ie_data, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %15, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %14, align 4
  %31 = call i64 @os_snprintf_error(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %6, align 8
  br label %313

35:                                               ; preds = %5
  %36 = load i32, i32* %14, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @wpa_parse_wpa_ie(i32* %40, i64 %41, %struct.wpa_ie_data* %12)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %45, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %14, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @os_snprintf_error(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %6, align 8
  br label %313

64:                                               ; preds = %44
  %65 = load i32, i32* %14, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %6, align 8
  br label %313

70:                                               ; preds = %35
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %13, align 8
  %72 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = icmp eq i8* %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %90 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %78, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @os_snprintf_error(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %6, align 8
  br label %313

102:                                              ; preds = %77
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %7, align 8
  br label %107

107:                                              ; preds = %102, %70
  %108 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = icmp eq i8* %121, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %126 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %114, i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* %14, align 4
  %134 = call i64 @os_snprintf_error(i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %113
  %137 = load i8*, i8** %7, align 8
  store i8* %137, i8** %6, align 8
  br label %313

138:                                              ; preds = %113
  %139 = load i32, i32* %14, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %7, align 8
  br label %143

143:                                              ; preds = %138, %107
  %144 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @WPA_KEY_MGMT_WPA_NONE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %179

149:                                              ; preds = %143
  %150 = load i8*, i8** %7, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = icmp eq i8* %157, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %162 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %150, i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %161)
  store i32 %162, i32* %14, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* %14, align 4
  %170 = call i64 @os_snprintf_error(i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %149
  %173 = load i8*, i8** %7, align 8
  store i8* %173, i8** %6, align 8
  br label %313

174:                                              ; preds = %149
  %175 = load i32, i32* %14, align 4
  %176 = load i8*, i8** %7, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %7, align 8
  br label %179

179:                                              ; preds = %174, %143
  %180 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %179
  %186 = load i8*, i8** %7, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = icmp eq i8* %193, %194
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %198 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %186, i32 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %197)
  store i32 %198, i32* %14, align 4
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* %14, align 4
  %206 = call i64 @os_snprintf_error(i32 %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %185
  %209 = load i8*, i8** %7, align 8
  store i8* %209, i8** %6, align 8
  br label %313

210:                                              ; preds = %185
  %211 = load i32, i32* %14, align 4
  %212 = load i8*, i8** %7, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %7, align 8
  br label %215

215:                                              ; preds = %210, %179
  %216 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @WPA_KEY_MGMT_OSEN, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %251

221:                                              ; preds = %215
  %222 = load i8*, i8** %7, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load i8*, i8** %7, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = load i8*, i8** %7, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = icmp eq i8* %229, %230
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %234 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %222, i32 %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %233)
  store i32 %234, i32* %14, align 4
  %235 = load i8*, i8** %8, align 8
  %236 = load i8*, i8** %7, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = load i32, i32* %14, align 4
  %242 = call i64 @os_snprintf_error(i32 %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %221
  %245 = load i8*, i8** %7, align 8
  store i8* %245, i8** %6, align 8
  br label %313

246:                                              ; preds = %221
  %247 = load i32, i32* %14, align 4
  %248 = load i8*, i8** %7, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %7, align 8
  br label %251

251:                                              ; preds = %246, %215
  %252 = load i8*, i8** %7, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @wpa_supplicant_cipher_txt(i8* %252, i8* %253, i32 %255)
  store i8* %256, i8** %7, align 8
  %257 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %12, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @WPA_CAPABILITY_PREAUTH, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %287

262:                                              ; preds = %251
  %263 = load i8*, i8** %7, align 8
  %264 = load i8*, i8** %8, align 8
  %265 = load i8*, i8** %7, align 8
  %266 = ptrtoint i8* %264 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  %269 = trunc i64 %268 to i32
  %270 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %263, i32 %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %270, i32* %14, align 4
  %271 = load i8*, i8** %8, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = ptrtoint i8* %271 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  %276 = trunc i64 %275 to i32
  %277 = load i32, i32* %14, align 4
  %278 = call i64 @os_snprintf_error(i32 %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %262
  %281 = load i8*, i8** %7, align 8
  store i8* %281, i8** %6, align 8
  br label %313

282:                                              ; preds = %262
  %283 = load i32, i32* %14, align 4
  %284 = load i8*, i8** %7, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %7, align 8
  br label %287

287:                                              ; preds = %282, %251
  %288 = load i8*, i8** %7, align 8
  %289 = load i8*, i8** %8, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = ptrtoint i8* %289 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = trunc i64 %293 to i32
  %295 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %288, i32 %294, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %295, i32* %14, align 4
  %296 = load i8*, i8** %8, align 8
  %297 = load i8*, i8** %7, align 8
  %298 = ptrtoint i8* %296 to i64
  %299 = ptrtoint i8* %297 to i64
  %300 = sub i64 %298, %299
  %301 = trunc i64 %300 to i32
  %302 = load i32, i32* %14, align 4
  %303 = call i64 @os_snprintf_error(i32 %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %287
  %306 = load i8*, i8** %7, align 8
  store i8* %306, i8** %6, align 8
  br label %313

307:                                              ; preds = %287
  %308 = load i32, i32* %14, align 4
  %309 = load i8*, i8** %7, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %7, align 8
  %312 = load i8*, i8** %7, align 8
  store i8* %312, i8** %6, align 8
  br label %313

313:                                              ; preds = %307, %305, %280, %244, %208, %172, %136, %100, %64, %62, %33
  %314 = load i8*, i8** %6, align 8
  ret i8* %314
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @wpa_parse_wpa_ie(i32*, i64, %struct.wpa_ie_data*) #1

declare dso_local i8* @wpa_supplicant_cipher_txt(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
