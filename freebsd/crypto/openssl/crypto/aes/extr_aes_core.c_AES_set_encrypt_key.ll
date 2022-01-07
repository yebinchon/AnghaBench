; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_core.c_AES_set_encrypt_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_core.c_AES_set_encrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@Te2 = common dso_local global i32* null, align 8
@Te3 = common dso_local global i32* null, align 8
@Te0 = common dso_local global i32* null, align 8
@Te1 = common dso_local global i32* null, align 8
@rcon = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AES_set_encrypt_key(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %434

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 192
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 256
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -2, i32* %4, align 4
  br label %434

27:                                               ; preds = %23, %20, %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 10, i32* %35, align 8
  br label %46

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 192
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 12, i32* %41, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 14, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @GETU32(i8* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = call i32 @GETU32(i8* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = call i32 @GETU32(i8* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 12
  %63 = call i32 @GETU32(i8* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %152

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %149
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @Te2, align 8
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 16
  %79 = and i32 %78, 255
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -16777216
  %84 = xor i32 %75, %83
  %85 = load i32*, i32** @Te3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 16711680
  %93 = xor i32 %84, %92
  %94 = load i32*, i32** @Te0, align 8
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 255
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 65280
  %101 = xor i32 %93, %100
  %102 = load i32*, i32** @Te1, align 8
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %103, 24
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 255
  %109 = xor i32 %101, %108
  %110 = load i32*, i32** @rcon, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %109, %114
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %120, %123
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %129, %132
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 6
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 6
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %138, %141
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  %147 = icmp eq i32 %146, 10
  br i1 %147, label %148, label %149

148:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %434

149:                                              ; preds = %69
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %8, align 8
  br label %69

152:                                              ; preds = %46
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 16
  %155 = call i32 @GETU32(i8* %154)
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  store i32 %155, i32* %157, align 4
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 20
  %160 = call i32 @GETU32(i8* %159)
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, 192
  br i1 %164, label %165, label %267

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %246
  %167 = load i32*, i32** %8, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 5
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %10, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** @Te2, align 8
  %174 = load i32, i32* %10, align 4
  %175 = ashr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, -16777216
  %181 = xor i32 %172, %180
  %182 = load i32*, i32** @Te3, align 8
  %183 = load i32, i32* %10, align 4
  %184 = ashr i32 %183, 8
  %185 = and i32 %184, 255
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 16711680
  %190 = xor i32 %181, %189
  %191 = load i32*, i32** @Te0, align 8
  %192 = load i32, i32* %10, align 4
  %193 = and i32 %192, 255
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 65280
  %198 = xor i32 %190, %197
  %199 = load i32*, i32** @Te1, align 8
  %200 = load i32, i32* %10, align 4
  %201 = ashr i32 %200, 24
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 255
  %206 = xor i32 %198, %205
  %207 = load i32*, i32** @rcon, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %206, %211
  %213 = load i32*, i32** %8, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 6
  store i32 %212, i32* %214, align 4
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %8, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 6
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %217, %220
  %222 = load i32*, i32** %8, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 7
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 7
  %229 = load i32, i32* %228, align 4
  %230 = xor i32 %226, %229
  %231 = load i32*, i32** %8, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 8
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 8
  %238 = load i32, i32* %237, align 4
  %239 = xor i32 %235, %238
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 9
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  %244 = icmp eq i32 %243, 8
  br i1 %244, label %245, label %246

245:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %434

246:                                              ; preds = %166
  %247 = load i32*, i32** %8, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %8, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 9
  %252 = load i32, i32* %251, align 4
  %253 = xor i32 %249, %252
  %254 = load i32*, i32** %8, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 10
  store i32 %253, i32* %255, align 4
  %256 = load i32*, i32** %8, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 5
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %8, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 10
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %258, %261
  %263 = load i32*, i32** %8, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 11
  store i32 %262, i32* %264, align 4
  %265 = load i32*, i32** %8, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 6
  store i32* %266, i32** %8, align 8
  br label %166

267:                                              ; preds = %152
  %268 = load i8*, i8** %5, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 24
  %270 = call i32 @GETU32(i8* %269)
  %271 = load i32*, i32** %8, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 6
  store i32 %270, i32* %272, align 4
  %273 = load i8*, i8** %5, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 28
  %275 = call i32 @GETU32(i8* %274)
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 7
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %6, align 4
  %279 = icmp eq i32 %278, 256
  br i1 %279, label %280, label %433

280:                                              ; preds = %267
  br label %281

281:                                              ; preds = %280, %361
  %282 = load i32*, i32** %8, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 7
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %10, align 4
  %285 = load i32*, i32** %8, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** @Te2, align 8
  %289 = load i32, i32* %10, align 4
  %290 = ashr i32 %289, 16
  %291 = and i32 %290, 255
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %288, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, -16777216
  %296 = xor i32 %287, %295
  %297 = load i32*, i32** @Te3, align 8
  %298 = load i32, i32* %10, align 4
  %299 = ashr i32 %298, 8
  %300 = and i32 %299, 255
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 16711680
  %305 = xor i32 %296, %304
  %306 = load i32*, i32** @Te0, align 8
  %307 = load i32, i32* %10, align 4
  %308 = and i32 %307, 255
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 65280
  %313 = xor i32 %305, %312
  %314 = load i32*, i32** @Te1, align 8
  %315 = load i32, i32* %10, align 4
  %316 = ashr i32 %315, 24
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, 255
  %321 = xor i32 %313, %320
  %322 = load i32*, i32** @rcon, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = xor i32 %321, %326
  %328 = load i32*, i32** %8, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 8
  store i32 %327, i32* %329, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 8
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %332, %335
  %337 = load i32*, i32** %8, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 9
  store i32 %336, i32* %338, align 4
  %339 = load i32*, i32** %8, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = load i32, i32* %340, align 4
  %342 = load i32*, i32** %8, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 9
  %344 = load i32, i32* %343, align 4
  %345 = xor i32 %341, %344
  %346 = load i32*, i32** %8, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 10
  store i32 %345, i32* %347, align 4
  %348 = load i32*, i32** %8, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 3
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %8, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 10
  %353 = load i32, i32* %352, align 4
  %354 = xor i32 %350, %353
  %355 = load i32*, i32** %8, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 11
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  %359 = icmp eq i32 %358, 7
  br i1 %359, label %360, label %361

360:                                              ; preds = %281
  store i32 0, i32* %4, align 4
  br label %434

361:                                              ; preds = %281
  %362 = load i32*, i32** %8, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 11
  %364 = load i32, i32* %363, align 4
  store i32 %364, i32* %10, align 4
  %365 = load i32*, i32** %8, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 4
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** @Te2, align 8
  %369 = load i32, i32* %10, align 4
  %370 = ashr i32 %369, 24
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %373, -16777216
  %375 = xor i32 %367, %374
  %376 = load i32*, i32** @Te3, align 8
  %377 = load i32, i32* %10, align 4
  %378 = ashr i32 %377, 16
  %379 = and i32 %378, 255
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %376, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, 16711680
  %384 = xor i32 %375, %383
  %385 = load i32*, i32** @Te0, align 8
  %386 = load i32, i32* %10, align 4
  %387 = ashr i32 %386, 8
  %388 = and i32 %387, 255
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 65280
  %393 = xor i32 %384, %392
  %394 = load i32*, i32** @Te1, align 8
  %395 = load i32, i32* %10, align 4
  %396 = and i32 %395, 255
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = and i32 %399, 255
  %401 = xor i32 %393, %400
  %402 = load i32*, i32** %8, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 12
  store i32 %401, i32* %403, align 4
  %404 = load i32*, i32** %8, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 5
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %8, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 12
  %409 = load i32, i32* %408, align 4
  %410 = xor i32 %406, %409
  %411 = load i32*, i32** %8, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 13
  store i32 %410, i32* %412, align 4
  %413 = load i32*, i32** %8, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 6
  %415 = load i32, i32* %414, align 4
  %416 = load i32*, i32** %8, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 13
  %418 = load i32, i32* %417, align 4
  %419 = xor i32 %415, %418
  %420 = load i32*, i32** %8, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 14
  store i32 %419, i32* %421, align 4
  %422 = load i32*, i32** %8, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 7
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %8, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 14
  %427 = load i32, i32* %426, align 4
  %428 = xor i32 %424, %427
  %429 = load i32*, i32** %8, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 15
  store i32 %428, i32* %430, align 4
  %431 = load i32*, i32** %8, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 8
  store i32* %432, i32** %8, align 8
  br label %281

433:                                              ; preds = %267
  store i32 0, i32* %4, align 4
  br label %434

434:                                              ; preds = %433, %360, %245, %148, %26, %16
  %435 = load i32, i32* %4, align 4
  ret i32 %435
}

declare dso_local i32 @GETU32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
