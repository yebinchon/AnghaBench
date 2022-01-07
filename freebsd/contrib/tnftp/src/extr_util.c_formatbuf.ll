; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_formatbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_formatbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connected = common dso_local global i32 0, align 4
@remotecwd = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hostname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@username = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @formatbuf(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %425, %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %428

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 37
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %28, 1
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %429

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %34, i8* %38, align 1
  br label %39

39:                                               ; preds = %32
  br label %425

40:                                               ; preds = %20
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %11, align 4
  switch i32 %45, label %397 [
    i32 47, label %46
    i32 46, label %46
    i32 99, label %46
    i32 77, label %310
    i32 109, label %310
    i32 110, label %353
    i32 37, label %384
  ]

46:                                               ; preds = %40, %40, %40
  %47 = load i32, i32* @connected, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8*, i8** @remotecwd, align 8
  br label %52

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %51 ]
  store i8* %53, i8** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 99
  br i1 %58, label %59, label %152

59:                                               ; preds = %56, %52
  %60 = load i8*, i8** %8, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %74, %59
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %65
  br label %61

75:                                               ; preds = %61
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 48
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 49
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 57
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sub nsw i32 %100, 48
  store i32 %101, i32* %14, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  br label %105

104:                                              ; preds = %90, %84
  store i32 1, i32* %14, align 4
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %138, %105
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %14, align 4
  %112 = icmp sgt i32 %110, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %125, %113
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = icmp ugt i8* %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i8*, i8** %8, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 47
  br label %123

123:                                              ; preds = %118, %114
  %124 = phi i1 [ false, %114 ], [ %122, %118 ]
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 -1
  store i8* %127, i8** %8, align 8
  br label %114

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ugt i8* %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %8, align 8
  br label %138

138:                                              ; preds = %135, %131, %128
  br label %109

139:                                              ; preds = %109
  %140 = load i8*, i8** %8, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 47
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load i8*, i8** %8, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  br label %151

151:                                              ; preds = %148, %144, %139
  br label %152

152:                                              ; preds = %151, %56
  %153 = load i32, i32* %12, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %286

155:                                              ; preds = %152
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %286

158:                                              ; preds = %155
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %5, align 8
  %161 = sub i64 %160, 5
  %162 = icmp uge i64 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %424

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %165, 46
  br i1 %166, label %167, label %204

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %5, align 8
  %171 = sub i64 %170, 1
  %172 = icmp uge i64 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %429

174:                                              ; preds = %168
  %175 = load i8*, i8** %4, align 8
  %176 = load i64, i64* %10, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %10, align 8
  %178 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 46, i8* %178, align 1
  br label %179

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* %5, align 8
  %183 = sub i64 %182, 1
  %184 = icmp uge i64 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %429

186:                                              ; preds = %180
  %187 = load i8*, i8** %4, align 8
  %188 = load i64, i64* %10, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %10, align 8
  %190 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8 46, i8* %190, align 1
  br label %191

191:                                              ; preds = %186
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* %5, align 8
  %195 = sub i64 %194, 1
  %196 = icmp uge i64 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %429

198:                                              ; preds = %192
  %199 = load i8*, i8** %4, align 8
  %200 = load i64, i64* %10, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %10, align 8
  %202 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8 46, i8* %202, align 1
  br label %203

203:                                              ; preds = %198
  br label %285

204:                                              ; preds = %164
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* %5, align 8
  %208 = sub i64 %207, 1
  %209 = icmp uge i64 %206, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %429

211:                                              ; preds = %205
  %212 = load i8*, i8** %4, align 8
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %10, align 8
  %215 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 47, i8* %215, align 1
  br label %216

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* %5, align 8
  %220 = sub i64 %219, 1
  %221 = icmp uge i64 %218, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %429

223:                                              ; preds = %217
  %224 = load i8*, i8** %4, align 8
  %225 = load i64, i64* %10, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %10, align 8
  %227 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8 60, i8* %227, align 1
  br label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %12, align 4
  %230 = icmp sgt i32 %229, 9
  br i1 %230, label %231, label %256

231:                                              ; preds = %228
  br label %232

232:                                              ; preds = %231
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %5, align 8
  %235 = sub i64 %234, 1
  %236 = icmp uge i64 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %429

238:                                              ; preds = %232
  %239 = load i8*, i8** %4, align 8
  %240 = load i64, i64* %10, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %10, align 8
  %242 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 57, i8* %242, align 1
  br label %243

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* %5, align 8
  %247 = sub i64 %246, 1
  %248 = icmp uge i64 %245, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %429

250:                                              ; preds = %244
  %251 = load i8*, i8** %4, align 8
  %252 = load i64, i64* %10, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %10, align 8
  %254 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8 43, i8* %254, align 1
  br label %255

255:                                              ; preds = %250
  br label %272

256:                                              ; preds = %228
  br label %257

257:                                              ; preds = %256
  %258 = load i64, i64* %10, align 8
  %259 = load i64, i64* %5, align 8
  %260 = sub i64 %259, 1
  %261 = icmp uge i64 %258, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %429

263:                                              ; preds = %257
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 48, %264
  %266 = trunc i32 %265 to i8
  %267 = load i8*, i8** %4, align 8
  %268 = load i64, i64* %10, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %10, align 8
  %270 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8 %266, i8* %270, align 1
  br label %271

271:                                              ; preds = %263
  br label %272

272:                                              ; preds = %271, %255
  br label %273

273:                                              ; preds = %272
  %274 = load i64, i64* %10, align 8
  %275 = load i64, i64* %5, align 8
  %276 = sub i64 %275, 1
  %277 = icmp uge i64 %274, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  br label %429

279:                                              ; preds = %273
  %280 = load i8*, i8** %4, align 8
  %281 = load i64, i64* %10, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %10, align 8
  %283 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8 62, i8* %283, align 1
  br label %284

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284, %203
  br label %286

286:                                              ; preds = %285, %155, %152
  br label %287

287:                                              ; preds = %306, %286
  %288 = load i8*, i8** %8, align 8
  %289 = load i8, i8* %288, align 1
  %290 = icmp ne i8 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291
  %293 = load i64, i64* %10, align 8
  %294 = load i64, i64* %5, align 8
  %295 = sub i64 %294, 1
  %296 = icmp uge i64 %293, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %429

298:                                              ; preds = %292
  %299 = load i8*, i8** %8, align 8
  %300 = load i8, i8* %299, align 1
  %301 = load i8*, i8** %4, align 8
  %302 = load i64, i64* %10, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %10, align 8
  %304 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8 %300, i8* %304, align 1
  br label %305

305:                                              ; preds = %298
  br label %306

306:                                              ; preds = %305
  %307 = load i8*, i8** %8, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %8, align 8
  br label %287

309:                                              ; preds = %287
  br label %424

310:                                              ; preds = %40, %40
  %311 = load i32, i32* @connected, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load i8*, i8** @hostname, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = load i8*, i8** @hostname, align 8
  br label %319

318:                                              ; preds = %313, %310
  br label %319

319:                                              ; preds = %318, %316
  %320 = phi i8* [ %317, %316 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %318 ]
  store i8* %320, i8** %8, align 8
  br label %321

321:                                              ; preds = %349, %319
  %322 = load i8*, i8** %8, align 8
  %323 = load i8, i8* %322, align 1
  %324 = icmp ne i8 %323, 0
  br i1 %324, label %325, label %352

325:                                              ; preds = %321
  %326 = load i32, i32* %11, align 4
  %327 = icmp eq i32 %326, 109
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i8*, i8** %8, align 8
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 46
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %352

334:                                              ; preds = %328, %325
  br label %335

335:                                              ; preds = %334
  %336 = load i64, i64* %10, align 8
  %337 = load i64, i64* %5, align 8
  %338 = sub i64 %337, 1
  %339 = icmp uge i64 %336, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %429

341:                                              ; preds = %335
  %342 = load i8*, i8** %8, align 8
  %343 = load i8, i8* %342, align 1
  %344 = load i8*, i8** %4, align 8
  %345 = load i64, i64* %10, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %10, align 8
  %347 = getelementptr inbounds i8, i8* %344, i64 %345
  store i8 %343, i8* %347, align 1
  br label %348

348:                                              ; preds = %341
  br label %349

349:                                              ; preds = %348
  %350 = load i8*, i8** %8, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %8, align 8
  br label %321

352:                                              ; preds = %333, %321
  br label %424

353:                                              ; preds = %40
  %354 = load i32, i32* @connected, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = load i8*, i8** @username, align 8
  br label %359

358:                                              ; preds = %353
  br label %359

359:                                              ; preds = %358, %356
  %360 = phi i8* [ %357, %356 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %358 ]
  store i8* %360, i8** %8, align 8
  br label %361

361:                                              ; preds = %380, %359
  %362 = load i8*, i8** %8, align 8
  %363 = load i8, i8* %362, align 1
  %364 = icmp ne i8 %363, 0
  br i1 %364, label %365, label %383

365:                                              ; preds = %361
  br label %366

366:                                              ; preds = %365
  %367 = load i64, i64* %10, align 8
  %368 = load i64, i64* %5, align 8
  %369 = sub i64 %368, 1
  %370 = icmp uge i64 %367, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  br label %429

372:                                              ; preds = %366
  %373 = load i8*, i8** %8, align 8
  %374 = load i8, i8* %373, align 1
  %375 = load i8*, i8** %4, align 8
  %376 = load i64, i64* %10, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %10, align 8
  %378 = getelementptr inbounds i8, i8* %375, i64 %376
  store i8 %374, i8* %378, align 1
  br label %379

379:                                              ; preds = %372
  br label %380

380:                                              ; preds = %379
  %381 = load i8*, i8** %8, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %8, align 8
  br label %361

383:                                              ; preds = %361
  br label %424

384:                                              ; preds = %40
  br label %385

385:                                              ; preds = %384
  %386 = load i64, i64* %10, align 8
  %387 = load i64, i64* %5, align 8
  %388 = sub i64 %387, 1
  %389 = icmp uge i64 %386, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %385
  br label %429

391:                                              ; preds = %385
  %392 = load i8*, i8** %4, align 8
  %393 = load i64, i64* %10, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %10, align 8
  %395 = getelementptr inbounds i8, i8* %392, i64 %393
  store i8 37, i8* %395, align 1
  br label %396

396:                                              ; preds = %391
  br label %424

397:                                              ; preds = %40
  br label %398

398:                                              ; preds = %397
  %399 = load i64, i64* %10, align 8
  %400 = load i64, i64* %5, align 8
  %401 = sub i64 %400, 1
  %402 = icmp uge i64 %399, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  br label %429

404:                                              ; preds = %398
  %405 = load i8*, i8** %4, align 8
  %406 = load i64, i64* %10, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %10, align 8
  %408 = getelementptr inbounds i8, i8* %405, i64 %406
  store i8 37, i8* %408, align 1
  br label %409

409:                                              ; preds = %404
  br label %410

410:                                              ; preds = %409
  %411 = load i64, i64* %10, align 8
  %412 = load i64, i64* %5, align 8
  %413 = sub i64 %412, 1
  %414 = icmp uge i64 %411, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %410
  br label %429

416:                                              ; preds = %410
  %417 = load i32, i32* %11, align 4
  %418 = trunc i32 %417 to i8
  %419 = load i8*, i8** %4, align 8
  %420 = load i64, i64* %10, align 8
  %421 = add i64 %420, 1
  store i64 %421, i64* %10, align 8
  %422 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8 %418, i8* %422, align 1
  br label %423

423:                                              ; preds = %416
  br label %424

424:                                              ; preds = %423, %396, %383, %352, %309, %163
  br label %425

425:                                              ; preds = %424, %39
  %426 = load i8*, i8** %7, align 8
  %427 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %427, i8** %7, align 8
  br label %16

428:                                              ; preds = %16
  br label %429

429:                                              ; preds = %428, %415, %403, %390, %371, %340, %297, %278, %262, %249, %237, %222, %210, %197, %185, %173, %31
  %430 = load i8*, i8** %4, align 8
  %431 = load i64, i64* %10, align 8
  %432 = getelementptr inbounds i8, i8* %430, i64 %431
  store i8 0, i8* %432, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
