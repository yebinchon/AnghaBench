; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_loc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_loc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_INVALID_STR = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_loc_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -2147483648, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 2, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 6, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 3, i32* %19, align 4
  store double 0.000000e+00, double* %20, align 8
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %23, align 8
  %25 = load i8*, i8** %23, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i8*, i8** %23, align 8
  %31 = call i64 @strtol(i8* %30, i8** %23, i32 10)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %34, i32* %4, align 4
  br label %354

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %41, %35
  %37 = load i8*, i8** %23, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isblank(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %23, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %23, align 8
  br label %36

44:                                               ; preds = %36
  %45 = load i8*, i8** %23, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isdigit(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8*, i8** %23, align 8
  %51 = call i64 @strtol(i8* %50, i8** %23, i32 10)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  br label %66

53:                                               ; preds = %44
  %54 = load i8*, i8** %23, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 78
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %23, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 83
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %53
  br label %93

64:                                               ; preds = %58
  %65 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %65, i32* %4, align 4
  br label %354

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i8*, i8** %23, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isblank(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %23, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %23, align 8
  br label %67

75:                                               ; preds = %67
  %76 = load i8*, i8** %23, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isdigit(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %23, align 8
  %82 = call double @strtod(i8* %81, i8** %23)
  store double %82, double* %20, align 8
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %89, %83
  %85 = load i8*, i8** %23, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isblank(i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %23, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %23, align 8
  br label %84

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i8*, i8** %23, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 78
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %21, align 4
  br label %108

99:                                               ; preds = %93
  %100 = load i8*, i8** %23, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 83
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %21, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %106, i32* %4, align 4
  br label %354

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i8*, i8** %23, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %23, align 8
  %111 = load double, double* %20, align 8
  %112 = fmul double 1.000000e+03, %111
  store double %112, double* %20, align 8
  %113 = load double, double* %20, align 8
  %114 = fadd double %113, 5.000000e-04
  store double %114, double* %20, align 8
  %115 = load double, double* %20, align 8
  %116 = fptosi double %115 to i32
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %13, align 4
  %118 = mul nsw i32 60000, %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 3600000, %121
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %21, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %108
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %8, align 4
  br label %135

131:                                              ; preds = %108
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %141, %135
  %137 = load i8*, i8** %23, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i64 @isblank(i8 zeroext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i8*, i8** %23, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %23, align 8
  br label %136

144:                                              ; preds = %136
  %145 = load i8*, i8** %23, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @isdigit(i8 zeroext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i8*, i8** %23, align 8
  %151 = call i64 @strtol(i8* %150, i8** %23, i32 10)
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %12, align 4
  br label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %154, i32* %4, align 4
  br label %354

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %161, %155
  %157 = load i8*, i8** %23, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @isblank(i8 zeroext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %23, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %23, align 8
  br label %156

164:                                              ; preds = %156
  %165 = load i8*, i8** %23, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @isdigit(i8 zeroext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i8*, i8** %23, align 8
  %171 = call i64 @strtol(i8* %170, i8** %23, i32 10)
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %13, align 4
  br label %186

173:                                              ; preds = %164
  %174 = load i8*, i8** %23, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 69
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load i8*, i8** %23, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 87
  br i1 %182, label %183, label %184

183:                                              ; preds = %178, %173
  br label %213

184:                                              ; preds = %178
  %185 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %185, i32* %4, align 4
  br label %354

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %192, %186
  %188 = load i8*, i8** %23, align 8
  %189 = load i8, i8* %188, align 1
  %190 = call i64 @isblank(i8 zeroext %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i8*, i8** %23, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %23, align 8
  br label %187

195:                                              ; preds = %187
  %196 = load i8*, i8** %23, align 8
  %197 = load i8, i8* %196, align 1
  %198 = call i64 @isdigit(i8 zeroext %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i8*, i8** %23, align 8
  %202 = call double @strtod(i8* %201, i8** %23)
  store double %202, double* %20, align 8
  br label %203

203:                                              ; preds = %200, %195
  br label %204

204:                                              ; preds = %209, %203
  %205 = load i8*, i8** %23, align 8
  %206 = load i8, i8* %205, align 1
  %207 = call i64 @isblank(i8 zeroext %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i8*, i8** %23, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %23, align 8
  br label %204

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212, %183
  %214 = load i8*, i8** %23, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 69
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 1, i32* %22, align 4
  br label %228

219:                                              ; preds = %213
  %220 = load i8*, i8** %23, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 87
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 0, i32* %22, align 4
  br label %227

225:                                              ; preds = %219
  %226 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %226, i32* %4, align 4
  br label %354

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %227, %218
  %229 = load i8*, i8** %23, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %23, align 8
  %231 = load double, double* %20, align 8
  %232 = fmul double %231, 1.000000e+03
  store double %232, double* %20, align 8
  %233 = load double, double* %20, align 8
  %234 = fadd double %233, 5.000000e-04
  store double %234, double* %20, align 8
  %235 = load double, double* %20, align 8
  %236 = fptosi double %235 to i32
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %13, align 4
  %238 = mul nsw i32 60000, %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %12, align 4
  %242 = mul nsw i32 3600000, %241
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %22, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %228
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %9, align 4
  br label %255

251:                                              ; preds = %228
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %9, align 4
  %254 = sub nsw i32 %252, %253
  store i32 %254, i32* %9, align 4
  br label %255

255:                                              ; preds = %251, %247
  %256 = load i8*, i8** %23, align 8
  %257 = call double @strtod(i8* %256, i8** %23)
  %258 = fmul double %257, 1.000000e+02
  %259 = fadd double %258, 1.000000e+07
  %260 = fadd double %259, 5.000000e-01
  %261 = fptosi double %260 to i32
  store i32 %261, i32* %10, align 4
  %262 = load i8*, i8** %23, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 109
  br i1 %265, label %271, label %266

266:                                              ; preds = %255
  %267 = load i8*, i8** %23, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 77
  br i1 %270, label %271, label %274

271:                                              ; preds = %266, %255
  %272 = load i8*, i8** %23, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %23, align 8
  br label %274

274:                                              ; preds = %271, %266
  %275 = load i8*, i8** %23, align 8
  %276 = call i64 @strlen(i8* %275)
  %277 = icmp sgt i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %274
  %279 = load i8*, i8** %23, align 8
  %280 = call i32 @loc_parse_cm(i8* %279, i8** %23, i32* %14, i32* %15)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %283, i32* %4, align 4
  br label %354

284:                                              ; preds = %278
  br label %285

285:                                              ; preds = %284, %274
  %286 = load i8*, i8** %23, align 8
  %287 = call i64 @strlen(i8* %286)
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %285
  %290 = load i8*, i8** %23, align 8
  %291 = call i32 @loc_parse_cm(i8* %290, i8** %23, i32* %16, i32* %17)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  %294 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %294, i32* %4, align 4
  br label %354

295:                                              ; preds = %289
  br label %296

296:                                              ; preds = %295, %285
  %297 = load i8*, i8** %23, align 8
  %298 = call i64 @strlen(i8* %297)
  %299 = icmp sgt i64 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %296
  %301 = load i8*, i8** %23, align 8
  %302 = call i32 @loc_parse_cm(i8* %301, i8** %23, i32* %18, i32* %19)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %305, i32* %4, align 4
  br label %354

306:                                              ; preds = %300
  br label %307

307:                                              ; preds = %306, %296
  %308 = load i64*, i64** %7, align 8
  %309 = load i64, i64* %308, align 8
  %310 = icmp ult i64 %309, 16
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %312, i32* %4, align 4
  br label %354

313:                                              ; preds = %307
  %314 = load i32*, i32** %6, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  store i32 0, i32* %315, align 4
  %316 = load i32, i32* %14, align 4
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 240
  %319 = load i32, i32* %15, align 4
  %320 = and i32 %319, 15
  %321 = or i32 %318, %320
  %322 = load i32*, i32** %6, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* %16, align 4
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 240
  %327 = load i32, i32* %17, align 4
  %328 = and i32 %327, 15
  %329 = or i32 %326, %328
  %330 = load i32*, i32** %6, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 2
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* %18, align 4
  %333 = shl i32 %332, 4
  %334 = and i32 %333, 240
  %335 = load i32, i32* %19, align 4
  %336 = and i32 %335, 15
  %337 = or i32 %334, %336
  %338 = load i32*, i32** %6, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 3
  store i32 %337, i32* %339, align 4
  %340 = load i32*, i32** %6, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 4
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @sldns_write_uint32(i32* %341, i32 %342)
  %344 = load i32*, i32** %6, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 8
  %346 = load i32, i32* %9, align 4
  %347 = call i32 @sldns_write_uint32(i32* %345, i32 %346)
  %348 = load i32*, i32** %6, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 12
  %350 = load i32, i32* %10, align 4
  %351 = call i32 @sldns_write_uint32(i32* %349, i32 %350)
  %352 = load i64*, i64** %7, align 8
  store i64 16, i64* %352, align 8
  %353 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %353, i32* %4, align 4
  br label %354

354:                                              ; preds = %313, %311, %304, %293, %282, %225, %184, %153, %105, %64, %33
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @isblank(i8 zeroext) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @loc_parse_cm(i8*, i8**, i32*, i32*) #1

declare dso_local i32 @sldns_write_uint32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
