; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/grot/extr_split.c_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/grot/extr_split.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split(i8* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8**, i8*** %7, align 8
  store i8** %22, i8*** %15, align 8
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %11, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ true, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %27

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %10, align 8
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8 32, i8* %12, align 1
  br label %44

43:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %13, align 1
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %364

53:                                               ; preds = %44
  %54 = load i8, i8* %13, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %86, %57
  %60 = load i8*, i8** %10, align 8
  %61 = load i8**, i8*** %15, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %15, align 8
  store i8* %60, i8** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %89

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  %72 = load i8, i8* %70, align 1
  store i8 %72, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load i8, i8* %11, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %5, align 4
  br label %364

85:                                               ; preds = %77
  br label %69

86:                                               ; preds = %69
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 -1
  store i8 0, i8* %88, align 1
  br label %59

89:                                               ; preds = %67
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %107, %89
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %10, align 8
  %95 = load i8, i8* %93, align 1
  store i8 %95, i8* %11, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %12, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %364

106:                                              ; preds = %100
  br label %92

107:                                              ; preds = %92
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %91

110:                                              ; preds = %53
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %283

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %186, %116
  %119 = load i8*, i8** %10, align 8
  %120 = load i8**, i8*** %15, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i32 1
  store i8** %121, i8*** %15, align 8
  store i8* %119, i8** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %161, %118
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %10, align 8
  %127 = load i8, i8* %125, align 1
  store i8 %127, i8* %11, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* %12, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i8, i8* %11, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* %13, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %134, %136
  br label %138

138:                                              ; preds = %132, %124
  %139 = phi i1 [ false, %124 ], [ %137, %132 ]
  br i1 %139, label %140, label %162

140:                                              ; preds = %138
  %141 = load i8, i8* %11, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load i8**, i8*** %15, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 -1
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %154, %147, %144
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %5, align 4
  br label %364

161:                                              ; preds = %140
  br label %124

162:                                              ; preds = %138
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %189

166:                                              ; preds = %162
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 -1
  store i8 0, i8* %168, align 1
  br label %169

169:                                              ; preds = %185, %166
  %170 = load i8*, i8** %10, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %10, align 8
  %172 = load i8, i8* %170, align 1
  store i8 %172, i8* %11, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8, i8* %12, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %169
  %178 = load i8, i8* %11, align 1
  %179 = sext i8 %178 to i32
  %180 = load i8, i8* %13, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %179, %181
  br label %183

183:                                              ; preds = %177, %169
  %184 = phi i1 [ true, %169 ], [ %182, %177 ]
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  br label %169

186:                                              ; preds = %183
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 -1
  store i8* %188, i8** %10, align 8
  br label %118

189:                                              ; preds = %165
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %14, align 4
  br label %191

191:                                              ; preds = %239, %189
  %192 = load i8, i8* %11, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %240

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %212, %195
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %10, align 8
  %199 = load i8, i8* %197, align 1
  store i8 %199, i8* %11, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* %12, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %210, label %204

204:                                              ; preds = %196
  %205 = load i8, i8* %11, align 1
  %206 = sext i8 %205 to i32
  %207 = load i8, i8* %13, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %206, %208
  br label %210

210:                                              ; preds = %204, %196
  %211 = phi i1 [ true, %196 ], [ %209, %204 ]
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  br label %196

213:                                              ; preds = %210
  %214 = load i8*, i8** %10, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 -1
  store i8* %215, i8** %10, align 8
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %218

218:                                              ; preds = %238, %213
  %219 = load i8*, i8** %10, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %10, align 8
  %221 = load i8, i8* %219, align 1
  store i8 %221, i8* %11, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %218
  %225 = load i8, i8* %11, align 1
  %226 = sext i8 %225 to i32
  %227 = load i8, i8* %12, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %226, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i8, i8* %11, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* %13, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %232, %234
  br label %236

236:                                              ; preds = %230, %224, %218
  %237 = phi i1 [ false, %224 ], [ false, %218 ], [ %235, %230 ]
  br i1 %237, label %238, label %239

238:                                              ; preds = %236
  br label %218

239:                                              ; preds = %236
  br label %191

240:                                              ; preds = %191
  %241 = load i32, i32* %17, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %281

243:                                              ; preds = %240
  %244 = load i8*, i8** %10, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 -1
  store i8* %245, i8** %10, align 8
  br label %246

246:                                              ; preds = %262, %243
  %247 = load i8*, i8** %10, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 -1
  store i8* %248, i8** %10, align 8
  %249 = load i8, i8* %248, align 1
  store i8 %249, i8* %11, align 1
  %250 = sext i8 %249 to i32
  %251 = load i8, i8* %12, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %260, label %254

254:                                              ; preds = %246
  %255 = load i8, i8* %11, align 1
  %256 = sext i8 %255 to i32
  %257 = load i8, i8* %13, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %256, %258
  br label %260

260:                                              ; preds = %254, %246
  %261 = phi i1 [ true, %246 ], [ %259, %254 ]
  br i1 %261, label %262, label %263

262:                                              ; preds = %260
  br label %246

263:                                              ; preds = %260
  %264 = load i8*, i8** %10, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %10, align 8
  %266 = load i8*, i8** %10, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %263
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i8*, i8** %10, align 8
  store i8 0, i8* %276, align 1
  br label %277

277:                                              ; preds = %275, %270
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %277, %263
  br label %281

281:                                              ; preds = %280, %240
  %282 = load i32, i32* %14, align 4
  store i32 %282, i32* %5, align 4
  br label %364

283:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %284

284:                                              ; preds = %361, %283
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %8, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load i8*, i8** %10, align 8
  %290 = load i8**, i8*** %15, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i32 1
  store i8** %291, i8*** %15, align 8
  store i8* %289, i8** %290, align 8
  br label %292

292:                                              ; preds = %288, %284
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %14, align 4
  br label %295

295:                                              ; preds = %326, %292
  %296 = load i8*, i8** %10, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %10, align 8
  %298 = load i8, i8* %296, align 1
  store i8 %298, i8* %11, align 1
  %299 = load i8, i8* %11, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = load i32, i32* %14, align 4
  store i32 %303, i32* %5, align 4
  br label %364

304:                                              ; preds = %295
  %305 = load i8*, i8** %9, align 8
  store i8* %305, i8** %16, align 8
  br label %306

306:                                              ; preds = %320, %304
  %307 = load i8*, i8** %16, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %16, align 8
  %309 = load i8, i8* %307, align 1
  store i8 %309, i8* %12, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %306
  %313 = load i8, i8* %12, align 1
  %314 = sext i8 %313 to i32
  %315 = load i8, i8* %11, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp ne i32 %314, %316
  br label %318

318:                                              ; preds = %312, %306
  %319 = phi i1 [ false, %306 ], [ %317, %312 ]
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  br label %306

321:                                              ; preds = %318
  %322 = load i8, i8* %12, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %327

326:                                              ; preds = %321
  br label %295

327:                                              ; preds = %325
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %8, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %327
  %332 = load i8*, i8** %10, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 -1
  store i8 0, i8* %333, align 1
  br label %334

334:                                              ; preds = %331, %327
  br label %335

335:                                              ; preds = %360, %334
  %336 = load i8*, i8** %10, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %337, i8** %10, align 8
  %338 = load i8, i8* %336, align 1
  store i8 %338, i8* %11, align 1
  %339 = load i8*, i8** %9, align 8
  store i8* %339, i8** %16, align 8
  br label %340

340:                                              ; preds = %354, %335
  %341 = load i8*, i8** %16, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %16, align 8
  %343 = load i8, i8* %341, align 1
  store i8 %343, i8* %12, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = load i8, i8* %12, align 1
  %348 = sext i8 %347 to i32
  %349 = load i8, i8* %11, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp ne i32 %348, %350
  br label %352

352:                                              ; preds = %346, %340
  %353 = phi i1 [ false, %340 ], [ %351, %346 ]
  br i1 %353, label %354, label %355

354:                                              ; preds = %352
  br label %340

355:                                              ; preds = %352
  %356 = load i8, i8* %12, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %355
  br label %361

360:                                              ; preds = %355
  br label %335

361:                                              ; preds = %359
  %362 = load i8*, i8** %10, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 -1
  store i8* %363, i8** %10, align 8
  br label %284

364:                                              ; preds = %302, %281, %157, %104, %81, %52
  %365 = load i32, i32* %5, align 4
  ret i32 %365
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
