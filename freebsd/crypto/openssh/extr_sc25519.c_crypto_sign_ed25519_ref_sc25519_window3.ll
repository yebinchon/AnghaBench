; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sc25519.c_crypto_sign_ed25519_ref_sc25519_window3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sc25519.c_crypto_sign_ed25519_ref_sc25519_window3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc25519_window3(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %196, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %199

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 3, %14
  %16 = add nsw i32 %15, 0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
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
  %32 = mul nsw i32 3, %31
  %33 = add nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 3
  %38 = and i32 %37, 7
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
  %50 = mul nsw i32 3, %49
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 6
  %56 = and i32 %55, 7
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 8, %59
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8 %57, i8* %63, align 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 3, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 2
  %74 = and i32 %73, 7
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 8, %76
  %78 = add nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = xor i32 %82, %74
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 3, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 1
  %95 = and i32 %94, 7
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
  %107 = mul nsw i32 3, %106
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 4
  %113 = and i32 %112, 7
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 8, %116
  %118 = add nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  store i8 %114, i8* %120, align 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = mul nsw i32 3, %124
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 7
  %131 = and i32 %130, 7
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = mul nsw i32 8, %134
  %136 = add nsw i32 %135, 5
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  store i8 %132, i8* %138, align 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 3, %142
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 1
  %149 = and i32 %148, 7
  %150 = load i8*, i8** %3, align 8
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 8, %151
  %153 = add nsw i32 %152, 5
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = xor i32 %157, %149
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = mul nsw i32 3, %163
  %165 = add nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 2
  %170 = and i32 %169, 7
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %6, align 4
  %174 = mul nsw i32 8, %173
  %175 = add nsw i32 %174, 6
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  store i8 %171, i8* %177, align 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = mul nsw i32 3, %181
  %183 = add nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 5
  %188 = and i32 %187, 7
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %3, align 8
  %191 = load i32, i32* %6, align 4
  %192 = mul nsw i32 8, %191
  %193 = add nsw i32 %192, 7
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  store i8 %189, i8* %195, align 1
  br label %196

196:                                              ; preds = %10
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %7

199:                                              ; preds = %7
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = mul nsw i32 3, %203
  %205 = add nsw i32 %204, 0
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 7
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %3, align 8
  %212 = load i32, i32* %6, align 4
  %213 = mul nsw i32 8, %212
  %214 = add nsw i32 %213, 0
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  store i8 %210, i8* %216, align 1
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = mul nsw i32 3, %220
  %222 = add nsw i32 %221, 0
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 3
  %227 = and i32 %226, 7
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %3, align 8
  %230 = load i32, i32* %6, align 4
  %231 = mul nsw i32 8, %230
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %229, i64 %233
  store i8 %228, i8* %234, align 1
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = mul nsw i32 3, %238
  %240 = add nsw i32 %239, 0
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 6
  %245 = and i32 %244, 7
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %3, align 8
  %248 = load i32, i32* %6, align 4
  %249 = mul nsw i32 8, %248
  %250 = add nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %247, i64 %251
  store i8 %246, i8* %252, align 1
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = mul nsw i32 3, %256
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 2
  %263 = and i32 %262, 7
  %264 = load i8*, i8** %3, align 8
  %265 = load i32, i32* %6, align 4
  %266 = mul nsw i32 8, %265
  %267 = add nsw i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %264, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = xor i32 %271, %263
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %269, align 1
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = mul nsw i32 3, %277
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = ashr i32 %282, 1
  %284 = and i32 %283, 7
  %285 = trunc i32 %284 to i8
  %286 = load i8*, i8** %3, align 8
  %287 = load i32, i32* %6, align 4
  %288 = mul nsw i32 8, %287
  %289 = add nsw i32 %288, 3
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %286, i64 %290
  store i8 %285, i8* %291, align 1
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = mul nsw i32 3, %295
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = ashr i32 %300, 4
  %302 = and i32 %301, 7
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %3, align 8
  %305 = load i32, i32* %6, align 4
  %306 = mul nsw i32 8, %305
  %307 = add nsw i32 %306, 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %304, i64 %308
  store i8 %303, i8* %309, align 1
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %310

310:                                              ; preds = %367, %199
  %311 = load i32, i32* %6, align 4
  %312 = icmp slt i32 %311, 84
  br i1 %312, label %313, label %370

313:                                              ; preds = %310
  %314 = load i8, i8* %5, align 1
  %315 = sext i8 %314 to i32
  %316 = load i8*, i8** %3, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = add nsw i32 %321, %315
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %319, align 1
  %324 = load i8*, i8** %3, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = ashr i32 %329, 3
  %331 = load i8*, i8** %3, align 8
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = add nsw i32 %337, %330
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %335, align 1
  %340 = load i8*, i8** %3, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = and i32 %345, 7
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %343, align 1
  %348 = load i8*, i8** %3, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %348, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = ashr i32 %353, 2
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %5, align 1
  %356 = load i8, i8* %5, align 1
  %357 = sext i8 %356 to i32
  %358 = shl i32 %357, 3
  %359 = load i8*, i8** %3, align 8
  %360 = load i32, i32* %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = sub nsw i32 %364, %358
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %362, align 1
  br label %367

367:                                              ; preds = %313
  %368 = load i32, i32* %6, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %6, align 4
  br label %310

370:                                              ; preds = %310
  %371 = load i8, i8* %5, align 1
  %372 = sext i8 %371 to i32
  %373 = load i8*, i8** %3, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 84
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = add nsw i32 %376, %372
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %374, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
