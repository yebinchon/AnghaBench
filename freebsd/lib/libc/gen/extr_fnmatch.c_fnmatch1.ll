; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fnmatch.c_fnmatch1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fnmatch.c_fnmatch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@FNM_NOMATCH = common dso_local global i32 0, align 4
@FNM_LEADING_DIR = common dso_local global i32 0, align 4
@FNM_PATHNAME = common dso_local global i32 0, align 4
@FNM_PERIOD = common dso_local global i32 0, align 4
@FNM_NOESCAPE = common dso_local global i32 0, align 4
@FNM_CASEFOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32)* @fnmatch1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnmatch1(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  br label %24

24:                                               ; preds = %332, %6
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @MB_LEN_MAX, align 4
  %27 = call i64 @mbrtowc(i32* %20, i8* %25, i32 %26, i32* %12)
  store i64 %27, i64* %22, align 8
  %28 = load i64, i64* %22, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %22, align 8
  %32 = icmp eq i64 %31, -2
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %34, i32* %7, align 4
  br label %333

35:                                               ; preds = %30
  %36 = load i64, i64* %22, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @MB_LEN_MAX, align 4
  %41 = call i64 @mbrtowc(i32* %21, i8* %39, i32 %40, i32* %13)
  store i64 %41, i64* %23, align 8
  %42 = load i64, i64* %23, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %23, align 8
  %46 = icmp eq i64 %45, -2
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %35
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %21, align 4
  store i64 1, i64* %23, align 8
  %51 = call i32 @memset(i32* %13, i32 0, i32 4)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %20, align 4
  switch i32 %53, label %266 [
    i32 131, label %54
    i32 63, label %68
    i32 42, label %110
    i32 91, label %191
    i32 92, label %242
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @FNM_LEADING_DIR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %21, align 4
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %333

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %21, align 4
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %333

67:                                               ; preds = %63
  br label %288

68:                                               ; preds = %52
  %69 = load i32, i32* %21, align 4
  %70 = icmp eq i32 %69, 131
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %72, i32* %7, align 4
  br label %333

73:                                               ; preds = %68
  %74 = load i32, i32* %21, align 4
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @FNM_PATHNAME, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %288

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %21, align 4
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @FNM_PERIOD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @FNM_PATHNAME, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 -1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 47
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %90
  br label %288

106:                                              ; preds = %99, %94, %85, %82
  %107 = load i64, i64* %23, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %9, align 8
  br label %332

110:                                              ; preds = %52
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %19, align 1
  br label %113

113:                                              ; preds = %117, %110
  %114 = load i8, i8* %19, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 42
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %19, align 1
  br label %113

121:                                              ; preds = %113
  %122 = load i32, i32* %21, align 4
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @FNM_PERIOD, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @FNM_PATHNAME, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 -1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 47
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %129
  br label %288

145:                                              ; preds = %138, %133, %124, %121
  %146 = load i8, i8* %19, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 131
  br i1 %148, label %149, label %169

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @FNM_PATHNAME, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @FNM_LEADING_DIR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %9, align 8
  %161 = call i8* @strchr(i8* %160, i8 signext 47)
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %154
  br label %166

164:                                              ; preds = %159
  %165 = load i32, i32* @FNM_NOMATCH, align 4
  br label %166

166:                                              ; preds = %164, %163
  %167 = phi i32 [ 0, %163 ], [ %165, %164 ]
  store i32 %167, i32* %7, align 4
  br label %333

168:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  br label %333

169:                                              ; preds = %145
  %170 = load i8, i8* %19, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 47
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @FNM_PATHNAME, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load i8*, i8** %9, align 8
  %180 = call i8* @strchr(i8* %179, i8 signext 47)
  store i8* %180, i8** %9, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %183, i32* %7, align 4
  br label %333

184:                                              ; preds = %178
  br label %332

185:                                              ; preds = %173, %169
  br label %186

186:                                              ; preds = %185
  %187 = load i8*, i8** %8, align 8
  store i8* %187, i8** %14, align 8
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %16, align 4
  %189 = load i8*, i8** %9, align 8
  store i8* %189, i8** %15, align 8
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %17, align 4
  br label %332

191:                                              ; preds = %52
  %192 = load i32, i32* %21, align 4
  %193 = icmp eq i32 %192, 131
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %195, i32* %7, align 4
  br label %333

196:                                              ; preds = %191
  %197 = load i32, i32* %21, align 4
  %198 = icmp eq i32 %197, 47
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @FNM_PATHNAME, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %288

205:                                              ; preds = %199, %196
  %206 = load i32, i32* %21, align 4
  %207 = icmp eq i32 %206, 46
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @FNM_PERIOD, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %208
  %214 = load i8*, i8** %9, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = icmp eq i8* %214, %215
  br i1 %216, label %228, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @FNM_PATHNAME, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 -1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 47
  br i1 %227, label %228, label %229

228:                                              ; preds = %222, %213
  br label %288

229:                                              ; preds = %222, %217, %208, %205
  %230 = load i8*, i8** %8, align 8
  %231 = load i32, i32* %21, align 4
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @rangematch(i8* %230, i32 %231, i32 %232, i8** %18, i32* %12)
  switch i32 %233, label %238 [
    i32 130, label %234
    i32 129, label %235
    i32 128, label %237
  ]

234:                                              ; preds = %229
  br label %267

235:                                              ; preds = %229
  %236 = load i8*, i8** %18, align 8
  store i8* %236, i8** %8, align 8
  br label %238

237:                                              ; preds = %229
  br label %288

238:                                              ; preds = %229, %235
  %239 = load i64, i64* %23, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 %239
  store i8* %241, i8** %9, align 8
  br label %332

242:                                              ; preds = %52
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @FNM_NOESCAPE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %242
  %248 = load i8*, i8** %8, align 8
  %249 = load i32, i32* @MB_LEN_MAX, align 4
  %250 = call i64 @mbrtowc(i32* %20, i8* %248, i32 %249, i32* %12)
  store i64 %250, i64* %22, align 8
  %251 = load i64, i64* %22, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = load i64, i64* %22, align 8
  %255 = icmp eq i64 %254, -1
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i64, i64* %22, align 8
  %258 = icmp eq i64 %257, -2
  br i1 %258, label %259, label %261

259:                                              ; preds = %256, %253, %247
  %260 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %260, i32* %7, align 4
  br label %333

261:                                              ; preds = %256
  %262 = load i64, i64* %22, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 %262
  store i8* %264, i8** %8, align 8
  br label %265

265:                                              ; preds = %261, %242
  br label %266

266:                                              ; preds = %52, %265
  br label %267

267:                                              ; preds = %266, %234
  %268 = load i64, i64* %23, align 8
  %269 = load i8*, i8** %9, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 %268
  store i8* %270, i8** %9, align 8
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %21, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %331

275:                                              ; preds = %267
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @FNM_CASEFOLD, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load i32, i32* %20, align 4
  %282 = call i32 @towlower(i32 %281)
  %283 = load i32, i32* %21, align 4
  %284 = call i32 @towlower(i32 %283)
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  br label %330

287:                                              ; preds = %280, %275
  br label %288

288:                                              ; preds = %287, %237, %228, %204, %144, %105, %81, %67
  %289 = load i8*, i8** %14, align 8
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %292, i32* %7, align 4
  br label %333

293:                                              ; preds = %288
  %294 = load i8*, i8** %15, align 8
  %295 = load i32, i32* @MB_LEN_MAX, align 4
  %296 = call i64 @mbrtowc(i32* %21, i8* %294, i32 %295, i32* %17)
  store i64 %296, i64* %23, align 8
  %297 = load i64, i64* %23, align 8
  %298 = icmp eq i64 %297, -1
  br i1 %298, label %302, label %299

299:                                              ; preds = %293
  %300 = load i64, i64* %23, align 8
  %301 = icmp eq i64 %300, -2
  br i1 %301, label %302, label %307

302:                                              ; preds = %299, %293
  %303 = load i8*, i8** %15, align 8
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  store i32 %305, i32* %21, align 4
  store i64 1, i64* %23, align 8
  %306 = call i32 @memset(i32* %17, i32 0, i32 4)
  br label %307

307:                                              ; preds = %302, %299
  %308 = load i32, i32* %21, align 4
  %309 = icmp eq i32 %308, 131
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %311, i32* %7, align 4
  br label %333

312:                                              ; preds = %307
  %313 = load i32, i32* %21, align 4
  %314 = icmp eq i32 %313, 47
  br i1 %314, label %315, label %322

315:                                              ; preds = %312
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* @FNM_PATHNAME, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %321, i32* %7, align 4
  br label %333

322:                                              ; preds = %315, %312
  %323 = load i64, i64* %23, align 8
  %324 = load i8*, i8** %15, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 %323
  store i8* %325, i8** %15, align 8
  %326 = load i8*, i8** %14, align 8
  store i8* %326, i8** %8, align 8
  %327 = load i32, i32* %16, align 4
  store i32 %327, i32* %12, align 4
  %328 = load i8*, i8** %15, align 8
  store i8* %328, i8** %9, align 8
  %329 = load i32, i32* %17, align 4
  store i32 %329, i32* %13, align 4
  br label %330

330:                                              ; preds = %322, %286
  br label %331

331:                                              ; preds = %330, %274
  br label %332

332:                                              ; preds = %331, %238, %186, %184, %106
  br label %24

333:                                              ; preds = %320, %310, %291, %259, %194, %182, %168, %166, %71, %66, %62, %33
  %334 = load i32, i32* %7, align 4
  ret i32 %334
}

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @rangematch(i8*, i32, i32, i8**, i32*) #1

declare dso_local i32 @towlower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
