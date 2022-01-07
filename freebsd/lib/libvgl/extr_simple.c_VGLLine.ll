; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLLine(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %23, align 4
  %31 = call i32 @SL_ABSOLUTE(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %24, align 4
  %35 = call i32 @SL_ABSOLUTE(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* %24, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  store i32 1, i32* %25, align 4
  br label %41

40:                                               ; preds = %6
  store i32 -1, i32* %25, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @SL_SWAP(i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @SL_SWAP(i32 %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @SL_SWAP(i32 %52, i32 %53)
  store i32 1, i32* %26, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %26, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %19, align 4
  br label %68

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sdiv i32 %70, 4
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, 1
  %74 = srem i32 %73, 4
  store i32 %74, i32* %22, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %26, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @plot(i32* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %22, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %591

84:                                               ; preds = %68
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @plot(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 4, %91
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 2, %93
  %95 = sub nsw i32 %92, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %330

98:                                               ; preds = %84
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 2, %99
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = mul nsw i32 2, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %17, align 4
  store i32 0, i32* %27, align 4
  br label %106

106:                                              ; preds = %218, %98
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %221

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %110
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @plot(i32* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @plot(i32* %124, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @plot(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @plot(i32* %137, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %17, align 4
  br label %217

147:                                              ; preds = %110
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %21, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %147
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @plot(i32* %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %26, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @plot(i32* %158, i32 %160, i32 %163, i32 %164, i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @plot(i32* %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @plot(i32* %173, i32 %175, i32 %178, i32 %179, i32 %180)
  br label %213

182:                                              ; preds = %147
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %25, align 4
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @plot(i32* %183, i32 %184, i32 %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @plot(i32* %191, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %25, align 4
  %201 = load i32, i32* %9, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @plot(i32* %198, i32 %199, i32 %202, i32 %203, i32 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @plot(i32* %206, i32 %208, i32 %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %182, %151
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %17, align 4
  br label %217

217:                                              ; preds = %213, %117
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %27, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %27, align 4
  br label %106

221:                                              ; preds = %106
  %222 = load i32, i32* %22, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %329

224:                                              ; preds = %221
  %225 = load i32, i32* %17, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %224
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @plot(i32* %228, i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %22, align 4
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %245

237:                                              ; preds = %227
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* %18, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @plot(i32* %238, i32 %240, i32 %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %237, %227
  %246 = load i32, i32* %22, align 4
  %247 = icmp sgt i32 %246, 2
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = load i32*, i32** %7, align 8
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %26, align 4
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @plot(i32* %249, i32 %251, i32 %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %248, %245
  br label %328

257:                                              ; preds = %224
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %21, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %293

261:                                              ; preds = %257
  %262 = load i32*, i32** %7, align 8
  %263 = load i32, i32* %18, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %26, align 4
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @plot(i32* %262, i32 %264, i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %22, align 4
  %270 = icmp sgt i32 %269, 1
  br i1 %270, label %271, label %281

271:                                              ; preds = %261
  %272 = load i32*, i32** %7, align 8
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %18, align 4
  %275 = load i32, i32* %25, align 4
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %26, align 4
  %279 = load i32, i32* %12, align 4
  %280 = call i32 @plot(i32* %272, i32 %274, i32 %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %271, %261
  %282 = load i32, i32* %22, align 4
  %283 = icmp sgt i32 %282, 2
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = load i32*, i32** %7, align 8
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, -1
  store i32 %287, i32* %8, align 4
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %26, align 4
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @plot(i32* %285, i32 %287, i32 %288, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %284, %281
  br label %327

293:                                              ; preds = %257
  %294 = load i32*, i32** %7, align 8
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %18, align 4
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %19, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %19, align 4
  %300 = load i32, i32* %26, align 4
  %301 = load i32, i32* %12, align 4
  %302 = call i32 @plot(i32* %294, i32 %296, i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* %22, align 4
  %304 = icmp sgt i32 %303, 1
  br i1 %304, label %305, label %313

305:                                              ; preds = %293
  %306 = load i32*, i32** %7, align 8
  %307 = load i32, i32* %18, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %18, align 4
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* %26, align 4
  %311 = load i32, i32* %12, align 4
  %312 = call i32 @plot(i32* %306, i32 %308, i32 %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %305, %293
  %314 = load i32, i32* %22, align 4
  %315 = icmp sgt i32 %314, 2
  br i1 %315, label %316, label %326

316:                                              ; preds = %313
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %8, align 4
  %320 = load i32, i32* %25, align 4
  %321 = load i32, i32* %9, align 4
  %322 = sub nsw i32 %321, %320
  store i32 %322, i32* %9, align 4
  %323 = load i32, i32* %26, align 4
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @plot(i32* %317, i32 %319, i32 %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %316, %313
  br label %327

327:                                              ; preds = %326, %292
  br label %328

328:                                              ; preds = %327, %256
  br label %329

329:                                              ; preds = %328, %221
  br label %591

330:                                              ; preds = %84
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %13, align 4
  %333 = sub nsw i32 %331, %332
  %334 = mul nsw i32 2, %333
  store i32 %334, i32* %21, align 4
  %335 = load i32, i32* %21, align 4
  %336 = mul nsw i32 2, %335
  store i32 %336, i32* %15, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %337, %338
  store i32 %339, i32* %17, align 4
  store i32 0, i32* %27, align 4
  br label %340

340:                                              ; preds = %460, %330
  %341 = load i32, i32* %27, align 4
  %342 = load i32, i32* %20, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %463

344:                                              ; preds = %340
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %18, align 4
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %8, align 4
  %349 = load i32, i32* %17, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %344
  %352 = load i32*, i32** %7, align 8
  %353 = load i32, i32* %18, align 4
  %354 = load i32, i32* %25, align 4
  %355 = load i32, i32* %19, align 4
  %356 = add nsw i32 %355, %354
  store i32 %356, i32* %19, align 4
  %357 = load i32, i32* %26, align 4
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @plot(i32* %352, i32 %353, i32 %356, i32 %357, i32 %358)
  %360 = load i32*, i32** %7, align 8
  %361 = load i32, i32* %18, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %25, align 4
  %364 = load i32, i32* %19, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %19, align 4
  %366 = load i32, i32* %26, align 4
  %367 = load i32, i32* %12, align 4
  %368 = call i32 @plot(i32* %360, i32 %362, i32 %365, i32 %366, i32 %367)
  %369 = load i32*, i32** %7, align 8
  %370 = load i32, i32* %8, align 4
  %371 = load i32, i32* %25, align 4
  %372 = load i32, i32* %9, align 4
  %373 = sub nsw i32 %372, %371
  store i32 %373, i32* %9, align 4
  %374 = load i32, i32* %26, align 4
  %375 = load i32, i32* %12, align 4
  %376 = call i32 @plot(i32* %369, i32 %370, i32 %373, i32 %374, i32 %375)
  %377 = load i32*, i32** %7, align 8
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %8, align 4
  %380 = load i32, i32* %25, align 4
  %381 = load i32, i32* %9, align 4
  %382 = sub nsw i32 %381, %380
  store i32 %382, i32* %9, align 4
  %383 = load i32, i32* %26, align 4
  %384 = load i32, i32* %12, align 4
  %385 = call i32 @plot(i32* %377, i32 %379, i32 %382, i32 %383, i32 %384)
  %386 = load i32, i32* %15, align 4
  %387 = load i32, i32* %17, align 4
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %17, align 4
  br label %459

389:                                              ; preds = %344
  %390 = load i32, i32* %17, align 4
  %391 = load i32, i32* %21, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %424

393:                                              ; preds = %389
  %394 = load i32*, i32** %7, align 8
  %395 = load i32, i32* %18, align 4
  %396 = load i32, i32* %19, align 4
  %397 = load i32, i32* %26, align 4
  %398 = load i32, i32* %12, align 4
  %399 = call i32 @plot(i32* %394, i32 %395, i32 %396, i32 %397, i32 %398)
  %400 = load i32*, i32** %7, align 8
  %401 = load i32, i32* %18, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %18, align 4
  %403 = load i32, i32* %25, align 4
  %404 = load i32, i32* %19, align 4
  %405 = add nsw i32 %404, %403
  store i32 %405, i32* %19, align 4
  %406 = load i32, i32* %26, align 4
  %407 = load i32, i32* %12, align 4
  %408 = call i32 @plot(i32* %400, i32 %402, i32 %405, i32 %406, i32 %407)
  %409 = load i32*, i32** %7, align 8
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %9, align 4
  %412 = load i32, i32* %26, align 4
  %413 = load i32, i32* %12, align 4
  %414 = call i32 @plot(i32* %409, i32 %410, i32 %411, i32 %412, i32 %413)
  %415 = load i32*, i32** %7, align 8
  %416 = load i32, i32* %8, align 4
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* %8, align 4
  %418 = load i32, i32* %25, align 4
  %419 = load i32, i32* %9, align 4
  %420 = sub nsw i32 %419, %418
  store i32 %420, i32* %9, align 4
  %421 = load i32, i32* %26, align 4
  %422 = load i32, i32* %12, align 4
  %423 = call i32 @plot(i32* %415, i32 %417, i32 %420, i32 %421, i32 %422)
  br label %455

424:                                              ; preds = %389
  %425 = load i32*, i32** %7, align 8
  %426 = load i32, i32* %18, align 4
  %427 = load i32, i32* %25, align 4
  %428 = load i32, i32* %19, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %19, align 4
  %430 = load i32, i32* %26, align 4
  %431 = load i32, i32* %12, align 4
  %432 = call i32 @plot(i32* %425, i32 %426, i32 %429, i32 %430, i32 %431)
  %433 = load i32*, i32** %7, align 8
  %434 = load i32, i32* %18, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %18, align 4
  %436 = load i32, i32* %19, align 4
  %437 = load i32, i32* %26, align 4
  %438 = load i32, i32* %12, align 4
  %439 = call i32 @plot(i32* %433, i32 %435, i32 %436, i32 %437, i32 %438)
  %440 = load i32*, i32** %7, align 8
  %441 = load i32, i32* %8, align 4
  %442 = load i32, i32* %25, align 4
  %443 = load i32, i32* %9, align 4
  %444 = sub nsw i32 %443, %442
  store i32 %444, i32* %9, align 4
  %445 = load i32, i32* %26, align 4
  %446 = load i32, i32* %12, align 4
  %447 = call i32 @plot(i32* %440, i32 %441, i32 %444, i32 %445, i32 %446)
  %448 = load i32*, i32** %7, align 8
  %449 = load i32, i32* %8, align 4
  %450 = add nsw i32 %449, -1
  store i32 %450, i32* %8, align 4
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %26, align 4
  %453 = load i32, i32* %12, align 4
  %454 = call i32 @plot(i32* %448, i32 %450, i32 %451, i32 %452, i32 %453)
  br label %455

455:                                              ; preds = %424, %393
  %456 = load i32, i32* %16, align 4
  %457 = load i32, i32* %17, align 4
  %458 = add nsw i32 %457, %456
  store i32 %458, i32* %17, align 4
  br label %459

459:                                              ; preds = %455, %351
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %27, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %27, align 4
  br label %340

463:                                              ; preds = %340
  %464 = load i32, i32* %22, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %590

466:                                              ; preds = %463
  %467 = load i32, i32* %17, align 4
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %505

469:                                              ; preds = %466
  %470 = load i32*, i32** %7, align 8
  %471 = load i32, i32* %18, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %18, align 4
  %473 = load i32, i32* %25, align 4
  %474 = load i32, i32* %19, align 4
  %475 = add nsw i32 %474, %473
  store i32 %475, i32* %19, align 4
  %476 = load i32, i32* %26, align 4
  %477 = load i32, i32* %12, align 4
  %478 = call i32 @plot(i32* %470, i32 %472, i32 %475, i32 %476, i32 %477)
  %479 = load i32, i32* %22, align 4
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %481, label %491

481:                                              ; preds = %469
  %482 = load i32*, i32** %7, align 8
  %483 = load i32, i32* %18, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %18, align 4
  %485 = load i32, i32* %25, align 4
  %486 = load i32, i32* %19, align 4
  %487 = add nsw i32 %486, %485
  store i32 %487, i32* %19, align 4
  %488 = load i32, i32* %26, align 4
  %489 = load i32, i32* %12, align 4
  %490 = call i32 @plot(i32* %482, i32 %484, i32 %487, i32 %488, i32 %489)
  br label %491

491:                                              ; preds = %481, %469
  %492 = load i32, i32* %22, align 4
  %493 = icmp sgt i32 %492, 2
  br i1 %493, label %494, label %504

494:                                              ; preds = %491
  %495 = load i32*, i32** %7, align 8
  %496 = load i32, i32* %8, align 4
  %497 = add nsw i32 %496, -1
  store i32 %497, i32* %8, align 4
  %498 = load i32, i32* %25, align 4
  %499 = load i32, i32* %9, align 4
  %500 = sub nsw i32 %499, %498
  store i32 %500, i32* %9, align 4
  %501 = load i32, i32* %26, align 4
  %502 = load i32, i32* %12, align 4
  %503 = call i32 @plot(i32* %495, i32 %497, i32 %500, i32 %501, i32 %502)
  br label %504

504:                                              ; preds = %494, %491
  br label %589

505:                                              ; preds = %466
  %506 = load i32, i32* %17, align 4
  %507 = load i32, i32* %21, align 4
  %508 = icmp slt i32 %506, %507
  br i1 %508, label %509, label %541

509:                                              ; preds = %505
  %510 = load i32*, i32** %7, align 8
  %511 = load i32, i32* %18, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %18, align 4
  %513 = load i32, i32* %19, align 4
  %514 = load i32, i32* %26, align 4
  %515 = load i32, i32* %12, align 4
  %516 = call i32 @plot(i32* %510, i32 %512, i32 %513, i32 %514, i32 %515)
  %517 = load i32, i32* %22, align 4
  %518 = icmp sgt i32 %517, 1
  br i1 %518, label %519, label %529

519:                                              ; preds = %509
  %520 = load i32*, i32** %7, align 8
  %521 = load i32, i32* %18, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %18, align 4
  %523 = load i32, i32* %25, align 4
  %524 = load i32, i32* %19, align 4
  %525 = add nsw i32 %524, %523
  store i32 %525, i32* %19, align 4
  %526 = load i32, i32* %26, align 4
  %527 = load i32, i32* %12, align 4
  %528 = call i32 @plot(i32* %520, i32 %522, i32 %525, i32 %526, i32 %527)
  br label %529

529:                                              ; preds = %519, %509
  %530 = load i32, i32* %22, align 4
  %531 = icmp sgt i32 %530, 2
  br i1 %531, label %532, label %540

532:                                              ; preds = %529
  %533 = load i32*, i32** %7, align 8
  %534 = load i32, i32* %8, align 4
  %535 = add nsw i32 %534, -1
  store i32 %535, i32* %8, align 4
  %536 = load i32, i32* %9, align 4
  %537 = load i32, i32* %26, align 4
  %538 = load i32, i32* %12, align 4
  %539 = call i32 @plot(i32* %533, i32 %535, i32 %536, i32 %537, i32 %538)
  br label %540

540:                                              ; preds = %532, %529
  br label %588

541:                                              ; preds = %505
  %542 = load i32*, i32** %7, align 8
  %543 = load i32, i32* %18, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %18, align 4
  %545 = load i32, i32* %25, align 4
  %546 = load i32, i32* %19, align 4
  %547 = add nsw i32 %546, %545
  store i32 %547, i32* %19, align 4
  %548 = load i32, i32* %26, align 4
  %549 = load i32, i32* %12, align 4
  %550 = call i32 @plot(i32* %542, i32 %544, i32 %547, i32 %548, i32 %549)
  %551 = load i32, i32* %22, align 4
  %552 = icmp sgt i32 %551, 1
  br i1 %552, label %553, label %561

553:                                              ; preds = %541
  %554 = load i32*, i32** %7, align 8
  %555 = load i32, i32* %18, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %18, align 4
  %557 = load i32, i32* %19, align 4
  %558 = load i32, i32* %26, align 4
  %559 = load i32, i32* %12, align 4
  %560 = call i32 @plot(i32* %554, i32 %556, i32 %557, i32 %558, i32 %559)
  br label %561

561:                                              ; preds = %553, %541
  %562 = load i32, i32* %22, align 4
  %563 = icmp sgt i32 %562, 2
  br i1 %563, label %564, label %587

564:                                              ; preds = %561
  %565 = load i32, i32* %17, align 4
  %566 = load i32, i32* %21, align 4
  %567 = icmp sgt i32 %565, %566
  br i1 %567, label %568, label %578

568:                                              ; preds = %564
  %569 = load i32*, i32** %7, align 8
  %570 = load i32, i32* %8, align 4
  %571 = add nsw i32 %570, -1
  store i32 %571, i32* %8, align 4
  %572 = load i32, i32* %25, align 4
  %573 = load i32, i32* %9, align 4
  %574 = sub nsw i32 %573, %572
  store i32 %574, i32* %9, align 4
  %575 = load i32, i32* %26, align 4
  %576 = load i32, i32* %12, align 4
  %577 = call i32 @plot(i32* %569, i32 %571, i32 %574, i32 %575, i32 %576)
  br label %586

578:                                              ; preds = %564
  %579 = load i32*, i32** %7, align 8
  %580 = load i32, i32* %8, align 4
  %581 = add nsw i32 %580, -1
  store i32 %581, i32* %8, align 4
  %582 = load i32, i32* %9, align 4
  %583 = load i32, i32* %26, align 4
  %584 = load i32, i32* %12, align 4
  %585 = call i32 @plot(i32* %579, i32 %581, i32 %582, i32 %583, i32 %584)
  br label %586

586:                                              ; preds = %578, %568
  br label %587

587:                                              ; preds = %586, %561
  br label %588

588:                                              ; preds = %587, %540
  br label %589

589:                                              ; preds = %588, %504
  br label %590

590:                                              ; preds = %589, %463
  br label %591

591:                                              ; preds = %83, %590, %329
  ret void
}

declare dso_local i32 @SL_ABSOLUTE(i32, i32, i32) #1

declare dso_local i32 @SL_SWAP(i32, i32) #1

declare dso_local i32 @plot(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
