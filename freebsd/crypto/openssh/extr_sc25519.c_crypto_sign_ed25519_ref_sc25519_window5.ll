; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sc25519.c_crypto_sign_ed25519_ref_sc25519_window5.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sc25519.c_crypto_sign_ed25519_ref_sc25519_window5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc25519_window5(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %238, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %10, label %241

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 5, %14
  %16 = add nsw i32 %15, 0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 31
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 8, %23
  %25 = add nsw i32 %24, 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8 %21, i8* %27, align 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 5, %31
  %33 = add nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 5
  %38 = and i32 %37, 31
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 8, %41
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8 %39, i8* %45, align 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 5, %49
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 3
  %56 = and i32 %55, 31
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 8, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = xor i32 %64, %56
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 5, %70
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 2
  %77 = and i32 %76, 31
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 8, %80
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8 %78, i8* %84, align 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 5, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 7
  %95 = and i32 %94, 31
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = mul nsw i32 8, %98
  %100 = add nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  store i8 %96, i8* %102, align 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 5, %106
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 1
  %113 = and i32 %112, 31
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %6, align 4
  %116 = mul nsw i32 8, %115
  %117 = add nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = xor i32 %121, %113
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = mul nsw i32 5, %127
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 4
  %134 = and i32 %133, 31
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %3, align 8
  %137 = load i32, i32* %6, align 4
  %138 = mul nsw i32 8, %137
  %139 = add nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  store i8 %135, i8* %141, align 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = mul nsw i32 5, %145
  %147 = add nsw i32 %146, 3
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 4
  %152 = and i32 %151, 31
  %153 = load i8*, i8** %3, align 8
  %154 = load i32, i32* %6, align 4
  %155 = mul nsw i32 8, %154
  %156 = add nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = xor i32 %160, %152
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %158, align 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = mul nsw i32 5, %166
  %168 = add nsw i32 %167, 3
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 1
  %173 = and i32 %172, 31
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %3, align 8
  %176 = load i32, i32* %6, align 4
  %177 = mul nsw i32 8, %176
  %178 = add nsw i32 %177, 5
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %175, i64 %179
  store i8 %174, i8* %180, align 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = mul nsw i32 5, %184
  %186 = add nsw i32 %185, 3
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 6
  %191 = and i32 %190, 31
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %3, align 8
  %194 = load i32, i32* %6, align 4
  %195 = mul nsw i32 8, %194
  %196 = add nsw i32 %195, 6
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  store i8 %192, i8* %198, align 1
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = mul nsw i32 5, %202
  %204 = add nsw i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 2
  %209 = and i32 %208, 31
  %210 = load i8*, i8** %3, align 8
  %211 = load i32, i32* %6, align 4
  %212 = mul nsw i32 8, %211
  %213 = add nsw i32 %212, 6
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %210, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = xor i32 %217, %209
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %215, align 1
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = mul nsw i32 5, %223
  %225 = add nsw i32 %224, 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 3
  %230 = and i32 %229, 31
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %3, align 8
  %233 = load i32, i32* %6, align 4
  %234 = mul nsw i32 8, %233
  %235 = add nsw i32 %234, 7
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %232, i64 %236
  store i8 %231, i8* %237, align 1
  br label %238

238:                                              ; preds = %10
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %7

241:                                              ; preds = %7
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = mul nsw i32 5, %245
  %247 = add nsw i32 %246, 0
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 31
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** %3, align 8
  %254 = load i32, i32* %6, align 4
  %255 = mul nsw i32 8, %254
  %256 = add nsw i32 %255, 0
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %253, i64 %257
  store i8 %252, i8* %258, align 1
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = mul nsw i32 5, %262
  %264 = add nsw i32 %263, 0
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 5
  %269 = and i32 %268, 31
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %3, align 8
  %272 = load i32, i32* %6, align 4
  %273 = mul nsw i32 8, %272
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %271, i64 %275
  store i8 %270, i8* %276, align 1
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = mul nsw i32 5, %280
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 3
  %287 = and i32 %286, 31
  %288 = load i8*, i8** %3, align 8
  %289 = load i32, i32* %6, align 4
  %290 = mul nsw i32 8, %289
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %288, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = xor i32 %295, %287
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %293, align 1
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %6, align 4
  %302 = mul nsw i32 5, %301
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %300, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = ashr i32 %306, 2
  %308 = and i32 %307, 31
  %309 = trunc i32 %308 to i8
  %310 = load i8*, i8** %3, align 8
  %311 = load i32, i32* %6, align 4
  %312 = mul nsw i32 8, %311
  %313 = add nsw i32 %312, 2
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %310, i64 %314
  store i8 %309, i8* %315, align 1
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %316

316:                                              ; preds = %373, %241
  %317 = load i32, i32* %6, align 4
  %318 = icmp slt i32 %317, 50
  br i1 %318, label %319, label %376

319:                                              ; preds = %316
  %320 = load i8, i8* %5, align 1
  %321 = sext i8 %320 to i32
  %322 = load i8*, i8** %3, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = add nsw i32 %327, %321
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %325, align 1
  %330 = load i8*, i8** %3, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = ashr i32 %335, 5
  %337 = load i8*, i8** %3, align 8
  %338 = load i32, i32* %6, align 4
  %339 = add nsw i32 %338, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = add nsw i32 %343, %336
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %341, align 1
  %346 = load i8*, i8** %3, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = and i32 %351, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %349, align 1
  %354 = load i8*, i8** %3, align 8
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = ashr i32 %359, 4
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %5, align 1
  %362 = load i8, i8* %5, align 1
  %363 = sext i8 %362 to i32
  %364 = shl i32 %363, 5
  %365 = load i8*, i8** %3, align 8
  %366 = load i32, i32* %6, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = sub nsw i32 %370, %364
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %368, align 1
  br label %373

373:                                              ; preds = %319
  %374 = load i32, i32* %6, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %6, align 4
  br label %316

376:                                              ; preds = %316
  %377 = load i8, i8* %5, align 1
  %378 = sext i8 %377 to i32
  %379 = load i8*, i8** %3, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 50
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = add nsw i32 %382, %378
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %380, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
