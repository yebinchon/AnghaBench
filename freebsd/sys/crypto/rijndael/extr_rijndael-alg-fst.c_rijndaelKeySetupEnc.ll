; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/rijndael/extr_rijndael-alg-fst.c_rijndaelKeySetupEnc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/rijndael/extr_rijndael-alg-fst.c_rijndaelKeySetupEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Invalid key size (%d).\00", align 1
@Te4 = common dso_local global i32* null, align 8
@rcon = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rijndaelKeySetupEnc(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 192
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 256
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i1 [ true, %12 ], [ true, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @GETU32(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = call i32 @GETU32(i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = call i32 @GETU32(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = call i32 @GETU32(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %130

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %127, %46
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @Te4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -16777216
  %62 = xor i32 %53, %61
  %63 = load i32*, i32** @Te4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 16711680
  %71 = xor i32 %62, %70
  %72 = load i32*, i32** @Te4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65280
  %79 = xor i32 %71, %78
  %80 = load i32*, i32** @Te4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 24
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 255
  %87 = xor i32 %79, %86
  %88 = load i32*, i32** @rcon, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %87, %92
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %98, %101
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %107, %110
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 6
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %116, %119
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 7
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = icmp eq i32 %124, 10
  br i1 %125, label %126, label %127

126:                                              ; preds = %47
  store i32 10, i32* %4, align 4
  br label %412

127:                                              ; preds = %47
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32* %129, i32** %5, align 8
  br label %47

130:                                              ; preds = %18
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 16
  %133 = call i32 @GETU32(i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 20
  %138 = call i32 @GETU32(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 192
  br i1 %142, label %143, label %245

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %224, %143
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 5
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %9, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** @Te4, align 8
  %152 = load i32, i32* %9, align 4
  %153 = ashr i32 %152, 16
  %154 = and i32 %153, 255
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, -16777216
  %159 = xor i32 %150, %158
  %160 = load i32*, i32** @Te4, align 8
  %161 = load i32, i32* %9, align 4
  %162 = ashr i32 %161, 8
  %163 = and i32 %162, 255
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 16711680
  %168 = xor i32 %159, %167
  %169 = load i32*, i32** @Te4, align 8
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 255
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 65280
  %176 = xor i32 %168, %175
  %177 = load i32*, i32** @Te4, align 8
  %178 = load i32, i32* %9, align 4
  %179 = ashr i32 %178, 24
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 255
  %184 = xor i32 %176, %183
  %185 = load i32*, i32** @rcon, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %184, %189
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 6
  store i32 %190, i32* %192, align 4
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 6
  %198 = load i32, i32* %197, align 4
  %199 = xor i32 %195, %198
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 7
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 7
  %207 = load i32, i32* %206, align 4
  %208 = xor i32 %204, %207
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 8
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 8
  %216 = load i32, i32* %215, align 4
  %217 = xor i32 %213, %216
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 9
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %223, label %224

223:                                              ; preds = %144
  store i32 12, i32* %4, align 4
  br label %412

224:                                              ; preds = %144
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 9
  %230 = load i32, i32* %229, align 4
  %231 = xor i32 %227, %230
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 10
  store i32 %231, i32* %233, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 5
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 10
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %236, %239
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 11
  store i32 %240, i32* %242, align 4
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  store i32* %244, i32** %5, align 8
  br label %144

245:                                              ; preds = %130
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 24
  %248 = call i32 @GETU32(i32* %247)
  %249 = load i32*, i32** %5, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 6
  store i32 %248, i32* %250, align 4
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 28
  %253 = call i32 @GETU32(i32* %252)
  %254 = load i32*, i32** %5, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 7
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp eq i32 %256, 256
  br i1 %257, label %258, label %411

258:                                              ; preds = %245
  br label %259

259:                                              ; preds = %339, %258
  %260 = load i32*, i32** %5, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 7
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %9, align 4
  %263 = load i32*, i32** %5, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** @Te4, align 8
  %267 = load i32, i32* %9, align 4
  %268 = ashr i32 %267, 16
  %269 = and i32 %268, 255
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %266, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, -16777216
  %274 = xor i32 %265, %273
  %275 = load i32*, i32** @Te4, align 8
  %276 = load i32, i32* %9, align 4
  %277 = ashr i32 %276, 8
  %278 = and i32 %277, 255
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 16711680
  %283 = xor i32 %274, %282
  %284 = load i32*, i32** @Te4, align 8
  %285 = load i32, i32* %9, align 4
  %286 = and i32 %285, 255
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 65280
  %291 = xor i32 %283, %290
  %292 = load i32*, i32** @Te4, align 8
  %293 = load i32, i32* %9, align 4
  %294 = ashr i32 %293, 24
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 255
  %299 = xor i32 %291, %298
  %300 = load i32*, i32** @rcon, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %299, %304
  %306 = load i32*, i32** %5, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 8
  store i32 %305, i32* %307, align 4
  %308 = load i32*, i32** %5, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %5, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 8
  %313 = load i32, i32* %312, align 4
  %314 = xor i32 %310, %313
  %315 = load i32*, i32** %5, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 9
  store i32 %314, i32* %316, align 4
  %317 = load i32*, i32** %5, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 9
  %322 = load i32, i32* %321, align 4
  %323 = xor i32 %319, %322
  %324 = load i32*, i32** %5, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 10
  store i32 %323, i32* %325, align 4
  %326 = load i32*, i32** %5, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32*, i32** %5, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 10
  %331 = load i32, i32* %330, align 4
  %332 = xor i32 %328, %331
  %333 = load i32*, i32** %5, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 11
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* %8, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %8, align 4
  %337 = icmp eq i32 %336, 7
  br i1 %337, label %338, label %339

338:                                              ; preds = %259
  store i32 14, i32* %4, align 4
  br label %412

339:                                              ; preds = %259
  %340 = load i32*, i32** %5, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 11
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %9, align 4
  %343 = load i32*, i32** %5, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = load i32, i32* %344, align 4
  %346 = load i32*, i32** @Te4, align 8
  %347 = load i32, i32* %9, align 4
  %348 = ashr i32 %347, 24
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, -16777216
  %353 = xor i32 %345, %352
  %354 = load i32*, i32** @Te4, align 8
  %355 = load i32, i32* %9, align 4
  %356 = ashr i32 %355, 16
  %357 = and i32 %356, 255
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %354, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, 16711680
  %362 = xor i32 %353, %361
  %363 = load i32*, i32** @Te4, align 8
  %364 = load i32, i32* %9, align 4
  %365 = ashr i32 %364, 8
  %366 = and i32 %365, 255
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %363, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = and i32 %369, 65280
  %371 = xor i32 %362, %370
  %372 = load i32*, i32** @Te4, align 8
  %373 = load i32, i32* %9, align 4
  %374 = and i32 %373, 255
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %372, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, 255
  %379 = xor i32 %371, %378
  %380 = load i32*, i32** %5, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 12
  store i32 %379, i32* %381, align 4
  %382 = load i32*, i32** %5, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 5
  %384 = load i32, i32* %383, align 4
  %385 = load i32*, i32** %5, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 12
  %387 = load i32, i32* %386, align 4
  %388 = xor i32 %384, %387
  %389 = load i32*, i32** %5, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 13
  store i32 %388, i32* %390, align 4
  %391 = load i32*, i32** %5, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 6
  %393 = load i32, i32* %392, align 4
  %394 = load i32*, i32** %5, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 13
  %396 = load i32, i32* %395, align 4
  %397 = xor i32 %393, %396
  %398 = load i32*, i32** %5, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 14
  store i32 %397, i32* %399, align 4
  %400 = load i32*, i32** %5, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 7
  %402 = load i32, i32* %401, align 4
  %403 = load i32*, i32** %5, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 14
  %405 = load i32, i32* %404, align 4
  %406 = xor i32 %402, %405
  %407 = load i32*, i32** %5, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 15
  store i32 %406, i32* %408, align 4
  %409 = load i32*, i32** %5, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 8
  store i32* %410, i32** %5, align 8
  br label %259

411:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %412

412:                                              ; preds = %411, %338, %223, %126
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GETU32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
