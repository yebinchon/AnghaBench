; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_rijndael.c_rijndaelKeySetupEnc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_rijndael.c_rijndaelKeySetupEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Te2 = common dso_local global i32* null, align 8
@Te3 = common dso_local global i32* null, align 8
@Te0 = common dso_local global i32* null, align 8
@Te1 = common dso_local global i32* null, align 8
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
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @GETU32(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = call i32 @GETU32(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  %21 = call i32 @GETU32(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  %26 = call i32 @GETU32(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %115

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %112, %31
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @Te2, align 8
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -16777216
  %47 = xor i32 %38, %46
  %48 = load i32*, i32** @Te3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 16711680
  %56 = xor i32 %47, %55
  %57 = load i32*, i32** @Te0, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 65280
  %64 = xor i32 %56, %63
  %65 = load i32*, i32** @Te1, align 8
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 24
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = xor i32 %64, %71
  %73 = load i32*, i32** @rcon, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %72, %77
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %83, %86
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %92, %95
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %101, %104
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %112

111:                                              ; preds = %32
  store i32 10, i32* %4, align 4
  br label %397

112:                                              ; preds = %32
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32* %114, i32** %5, align 8
  br label %32

115:                                              ; preds = %3
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 16
  %118 = call i32 @GETU32(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 20
  %123 = call i32 @GETU32(i32* %122)
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 192
  br i1 %127, label %128, label %230

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %209, %128
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @Te2, align 8
  %137 = load i32, i32* %9, align 4
  %138 = ashr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, -16777216
  %144 = xor i32 %135, %143
  %145 = load i32*, i32** @Te3, align 8
  %146 = load i32, i32* %9, align 4
  %147 = ashr i32 %146, 8
  %148 = and i32 %147, 255
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 16711680
  %153 = xor i32 %144, %152
  %154 = load i32*, i32** @Te0, align 8
  %155 = load i32, i32* %9, align 4
  %156 = and i32 %155, 255
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 65280
  %161 = xor i32 %153, %160
  %162 = load i32*, i32** @Te1, align 8
  %163 = load i32, i32* %9, align 4
  %164 = ashr i32 %163, 24
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 255
  %169 = xor i32 %161, %168
  %170 = load i32*, i32** @rcon, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = xor i32 %169, %174
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 6
  store i32 %175, i32* %177, align 4
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 6
  %183 = load i32, i32* %182, align 4
  %184 = xor i32 %180, %183
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 7
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 7
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %189, %192
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 8
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %5, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 8
  %201 = load i32, i32* %200, align 4
  %202 = xor i32 %198, %201
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 9
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %209

208:                                              ; preds = %129
  store i32 12, i32* %4, align 4
  br label %397

209:                                              ; preds = %129
  %210 = load i32*, i32** %5, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 9
  %215 = load i32, i32* %214, align 4
  %216 = xor i32 %212, %215
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 10
  store i32 %216, i32* %218, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %5, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 10
  %224 = load i32, i32* %223, align 4
  %225 = xor i32 %221, %224
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 11
  store i32 %225, i32* %227, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 6
  store i32* %229, i32** %5, align 8
  br label %129

230:                                              ; preds = %115
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 24
  %233 = call i32 @GETU32(i32* %232)
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 6
  store i32 %233, i32* %235, align 4
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 28
  %238 = call i32 @GETU32(i32* %237)
  %239 = load i32*, i32** %5, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 7
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 256
  br i1 %242, label %243, label %396

243:                                              ; preds = %230
  br label %244

244:                                              ; preds = %324, %243
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 7
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %9, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** @Te2, align 8
  %252 = load i32, i32* %9, align 4
  %253 = ashr i32 %252, 16
  %254 = and i32 %253, 255
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, -16777216
  %259 = xor i32 %250, %258
  %260 = load i32*, i32** @Te3, align 8
  %261 = load i32, i32* %9, align 4
  %262 = ashr i32 %261, 8
  %263 = and i32 %262, 255
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 16711680
  %268 = xor i32 %259, %267
  %269 = load i32*, i32** @Te0, align 8
  %270 = load i32, i32* %9, align 4
  %271 = and i32 %270, 255
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, 65280
  %276 = xor i32 %268, %275
  %277 = load i32*, i32** @Te1, align 8
  %278 = load i32, i32* %9, align 4
  %279 = ashr i32 %278, 24
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 255
  %284 = xor i32 %276, %283
  %285 = load i32*, i32** @rcon, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = xor i32 %284, %289
  %291 = load i32*, i32** %5, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 8
  store i32 %290, i32* %292, align 4
  %293 = load i32*, i32** %5, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %5, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 8
  %298 = load i32, i32* %297, align 4
  %299 = xor i32 %295, %298
  %300 = load i32*, i32** %5, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 9
  store i32 %299, i32* %301, align 4
  %302 = load i32*, i32** %5, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %5, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 9
  %307 = load i32, i32* %306, align 4
  %308 = xor i32 %304, %307
  %309 = load i32*, i32** %5, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 10
  store i32 %308, i32* %310, align 4
  %311 = load i32*, i32** %5, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %5, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 10
  %316 = load i32, i32* %315, align 4
  %317 = xor i32 %313, %316
  %318 = load i32*, i32** %5, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 11
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %8, align 4
  %322 = icmp eq i32 %321, 7
  br i1 %322, label %323, label %324

323:                                              ; preds = %244
  store i32 14, i32* %4, align 4
  br label %397

324:                                              ; preds = %244
  %325 = load i32*, i32** %5, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 11
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %9, align 4
  %328 = load i32*, i32** %5, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 4
  %330 = load i32, i32* %329, align 4
  %331 = load i32*, i32** @Te2, align 8
  %332 = load i32, i32* %9, align 4
  %333 = ashr i32 %332, 24
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = and i32 %336, -16777216
  %338 = xor i32 %330, %337
  %339 = load i32*, i32** @Te3, align 8
  %340 = load i32, i32* %9, align 4
  %341 = ashr i32 %340, 16
  %342 = and i32 %341, 255
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %345, 16711680
  %347 = xor i32 %338, %346
  %348 = load i32*, i32** @Te0, align 8
  %349 = load i32, i32* %9, align 4
  %350 = ashr i32 %349, 8
  %351 = and i32 %350, 255
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %348, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 65280
  %356 = xor i32 %347, %355
  %357 = load i32*, i32** @Te1, align 8
  %358 = load i32, i32* %9, align 4
  %359 = and i32 %358, 255
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = and i32 %362, 255
  %364 = xor i32 %356, %363
  %365 = load i32*, i32** %5, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 12
  store i32 %364, i32* %366, align 4
  %367 = load i32*, i32** %5, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 5
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %5, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 12
  %372 = load i32, i32* %371, align 4
  %373 = xor i32 %369, %372
  %374 = load i32*, i32** %5, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 13
  store i32 %373, i32* %375, align 4
  %376 = load i32*, i32** %5, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 6
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %5, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 13
  %381 = load i32, i32* %380, align 4
  %382 = xor i32 %378, %381
  %383 = load i32*, i32** %5, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 14
  store i32 %382, i32* %384, align 4
  %385 = load i32*, i32** %5, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 7
  %387 = load i32, i32* %386, align 4
  %388 = load i32*, i32** %5, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 14
  %390 = load i32, i32* %389, align 4
  %391 = xor i32 %387, %390
  %392 = load i32*, i32** %5, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 15
  store i32 %391, i32* %393, align 4
  %394 = load i32*, i32** %5, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 8
  store i32* %395, i32** %5, align 8
  br label %244

396:                                              ; preds = %230
  store i32 0, i32* %4, align 4
  br label %397

397:                                              ; preds = %396, %323, %208, %111
  %398 = load i32, i32* %4, align 4
  ret i32 %398
}

declare dso_local i32 @GETU32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
