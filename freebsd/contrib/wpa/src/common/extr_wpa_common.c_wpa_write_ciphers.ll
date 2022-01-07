; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_write_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_write_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%sCCMP-256\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%sGCMP-256\00", align 1
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%sCCMP\00", align 1
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%sGCMP\00", align 1
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%sTKIP\00", align 1
@WPA_CIPHER_AES_128_CMAC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%sAES-128-CMAC\00", align 1
@WPA_CIPHER_BIP_GMAC_128 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"%sBIP-GMAC-128\00", align 1
@WPA_CIPHER_BIP_GMAC_256 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"%sBIP-GMAC-256\00", align 1
@WPA_CIPHER_BIP_CMAC_256 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"%sBIP-CMAC-256\00", align 1
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"%sNONE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_write_ciphers(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %31

29:                                               ; preds = %17
  %30 = load i8*, i8** %9, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %30, %29 ]
  %33 = call i32 @os_snprintf(i8* %18, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @os_snprintf_error(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %389

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %44, %4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %68

66:                                               ; preds = %54
  %67 = load i8*, i8** %9, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %65 ], [ %67, %66 ]
  %70 = call i32 @os_snprintf(i8* %55, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @os_snprintf_error(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %389

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %81, %49
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %86
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %105

103:                                              ; preds = %91
  %104 = load i8*, i8** %9, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %102 ], [ %104, %103 ]
  %107 = call i32 @os_snprintf(i8* %92, i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @os_snprintf_error(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i32 -1, i32* %5, align 4
  br label %389

118:                                              ; preds = %105
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %10, align 8
  br label %123

123:                                              ; preds = %118, %86
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %123
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = load i8*, i8** %10, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %142

140:                                              ; preds = %128
  %141 = load i8*, i8** %9, align 8
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %139 ], [ %141, %140 ]
  %144 = call i32 @os_snprintf(i8* %129, i32 %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = call i64 @os_snprintf_error(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  store i32 -1, i32* %5, align 4
  br label %389

155:                                              ; preds = %142
  %156 = load i32, i32* %11, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %10, align 8
  br label %160

160:                                              ; preds = %155, %123
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %160
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %179

177:                                              ; preds = %165
  %178 = load i8*, i8** %9, align 8
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %176 ], [ %178, %177 ]
  %181 = call i32 @os_snprintf(i8* %166, i32 %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %180)
  store i32 %181, i32* %11, align 4
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @os_snprintf_error(i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  store i32 -1, i32* %5, align 4
  br label %389

192:                                              ; preds = %179
  %193 = load i32, i32* %11, align 4
  %194 = load i8*, i8** %10, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %10, align 8
  br label %197

197:                                              ; preds = %192, %160
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @WPA_CIPHER_AES_128_CMAC, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %197
  %203 = load i8*, i8** %10, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = load i8*, i8** %10, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = icmp eq i8* %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %216

214:                                              ; preds = %202
  %215 = load i8*, i8** %9, align 8
  br label %216

216:                                              ; preds = %214, %213
  %217 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %213 ], [ %215, %214 ]
  %218 = call i32 @os_snprintf(i8* %203, i32 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %217)
  store i32 %218, i32* %11, align 4
  %219 = load i8*, i8** %7, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = ptrtoint i8* %219 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* %11, align 4
  %226 = call i64 @os_snprintf_error(i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  store i32 -1, i32* %5, align 4
  br label %389

229:                                              ; preds = %216
  %230 = load i32, i32* %11, align 4
  %231 = load i8*, i8** %10, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  store i8* %233, i8** %10, align 8
  br label %234

234:                                              ; preds = %229, %197
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @WPA_CIPHER_BIP_GMAC_128, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %271

239:                                              ; preds = %234
  %240 = load i8*, i8** %10, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = ptrtoint i8* %241 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = trunc i64 %245 to i32
  %247 = load i8*, i8** %10, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = icmp eq i8* %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %239
  br label %253

251:                                              ; preds = %239
  %252 = load i8*, i8** %9, align 8
  br label %253

253:                                              ; preds = %251, %250
  %254 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %250 ], [ %252, %251 ]
  %255 = call i32 @os_snprintf(i8* %240, i32 %246, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %254)
  store i32 %255, i32* %11, align 4
  %256 = load i8*, i8** %7, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = ptrtoint i8* %256 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  %261 = trunc i64 %260 to i32
  %262 = load i32, i32* %11, align 4
  %263 = call i64 @os_snprintf_error(i32 %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %253
  store i32 -1, i32* %5, align 4
  br label %389

266:                                              ; preds = %253
  %267 = load i32, i32* %11, align 4
  %268 = load i8*, i8** %10, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %10, align 8
  br label %271

271:                                              ; preds = %266, %234
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @WPA_CIPHER_BIP_GMAC_256, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %308

276:                                              ; preds = %271
  %277 = load i8*, i8** %10, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = load i8*, i8** %10, align 8
  %280 = ptrtoint i8* %278 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = trunc i64 %282 to i32
  %284 = load i8*, i8** %10, align 8
  %285 = load i8*, i8** %6, align 8
  %286 = icmp eq i8* %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %276
  br label %290

288:                                              ; preds = %276
  %289 = load i8*, i8** %9, align 8
  br label %290

290:                                              ; preds = %288, %287
  %291 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %287 ], [ %289, %288 ]
  %292 = call i32 @os_snprintf(i8* %277, i32 %283, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %291)
  store i32 %292, i32* %11, align 4
  %293 = load i8*, i8** %7, align 8
  %294 = load i8*, i8** %10, align 8
  %295 = ptrtoint i8* %293 to i64
  %296 = ptrtoint i8* %294 to i64
  %297 = sub i64 %295, %296
  %298 = trunc i64 %297 to i32
  %299 = load i32, i32* %11, align 4
  %300 = call i64 @os_snprintf_error(i32 %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %290
  store i32 -1, i32* %5, align 4
  br label %389

303:                                              ; preds = %290
  %304 = load i32, i32* %11, align 4
  %305 = load i8*, i8** %10, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8* %307, i8** %10, align 8
  br label %308

308:                                              ; preds = %303, %271
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* @WPA_CIPHER_BIP_CMAC_256, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %345

313:                                              ; preds = %308
  %314 = load i8*, i8** %10, align 8
  %315 = load i8*, i8** %7, align 8
  %316 = load i8*, i8** %10, align 8
  %317 = ptrtoint i8* %315 to i64
  %318 = ptrtoint i8* %316 to i64
  %319 = sub i64 %317, %318
  %320 = trunc i64 %319 to i32
  %321 = load i8*, i8** %10, align 8
  %322 = load i8*, i8** %6, align 8
  %323 = icmp eq i8* %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  br label %327

325:                                              ; preds = %313
  %326 = load i8*, i8** %9, align 8
  br label %327

327:                                              ; preds = %325, %324
  %328 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %324 ], [ %326, %325 ]
  %329 = call i32 @os_snprintf(i8* %314, i32 %320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %328)
  store i32 %329, i32* %11, align 4
  %330 = load i8*, i8** %7, align 8
  %331 = load i8*, i8** %10, align 8
  %332 = ptrtoint i8* %330 to i64
  %333 = ptrtoint i8* %331 to i64
  %334 = sub i64 %332, %333
  %335 = trunc i64 %334 to i32
  %336 = load i32, i32* %11, align 4
  %337 = call i64 @os_snprintf_error(i32 %335, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %327
  store i32 -1, i32* %5, align 4
  br label %389

340:                                              ; preds = %327
  %341 = load i32, i32* %11, align 4
  %342 = load i8*, i8** %10, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  store i8* %344, i8** %10, align 8
  br label %345

345:                                              ; preds = %340, %308
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %382

350:                                              ; preds = %345
  %351 = load i8*, i8** %10, align 8
  %352 = load i8*, i8** %7, align 8
  %353 = load i8*, i8** %10, align 8
  %354 = ptrtoint i8* %352 to i64
  %355 = ptrtoint i8* %353 to i64
  %356 = sub i64 %354, %355
  %357 = trunc i64 %356 to i32
  %358 = load i8*, i8** %10, align 8
  %359 = load i8*, i8** %6, align 8
  %360 = icmp eq i8* %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %350
  br label %364

362:                                              ; preds = %350
  %363 = load i8*, i8** %9, align 8
  br label %364

364:                                              ; preds = %362, %361
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %361 ], [ %363, %362 ]
  %366 = call i32 @os_snprintf(i8* %351, i32 %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %365)
  store i32 %366, i32* %11, align 4
  %367 = load i8*, i8** %7, align 8
  %368 = load i8*, i8** %10, align 8
  %369 = ptrtoint i8* %367 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = trunc i64 %371 to i32
  %373 = load i32, i32* %11, align 4
  %374 = call i64 @os_snprintf_error(i32 %372, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %364
  store i32 -1, i32* %5, align 4
  br label %389

377:                                              ; preds = %364
  %378 = load i32, i32* %11, align 4
  %379 = load i8*, i8** %10, align 8
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i8, i8* %379, i64 %380
  store i8* %381, i8** %10, align 8
  br label %382

382:                                              ; preds = %377, %345
  %383 = load i8*, i8** %10, align 8
  %384 = load i8*, i8** %6, align 8
  %385 = ptrtoint i8* %383 to i64
  %386 = ptrtoint i8* %384 to i64
  %387 = sub i64 %385, %386
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %5, align 4
  br label %389

389:                                              ; preds = %382, %376, %339, %302, %265, %228, %191, %154, %117, %80, %43
  %390 = load i32, i32* %5, align 4
  ret i32 %390
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
