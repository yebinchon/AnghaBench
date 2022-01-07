; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ccm128.c_CRYPTO_ccm128_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ccm128.c_CRYPTO_ccm128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i32 (i8*, i8*, i8*)* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i32* }
%union.anon = type { [2 x i32], [8 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_ccm128_encrypt(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32 (i8*, i8*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %union.anon, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %13, align 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %24, align 8
  store i32 (i8*, i8*, i8*)* %25, i32 (i8*, i8*, i8*)** %14, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  %29 = load i8, i8* %13, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 64
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %4
  %34 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 %34(i8* %38, i8* %42, i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %33, %4
  %50 = load i8, i8* %13, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 7
  store i32 %52, i32* %12, align 4
  %53 = trunc i32 %52 to i8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %53, i8* %58, align 1
  store i64 0, i64* %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sub i32 15, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %85, %49
  %62 = load i32, i32* %11, align 4
  %63 = icmp ult i32 %62, 15
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = load i64, i64* %10, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %10, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i64, i64* %10, align 8
  %84 = shl i64 %83, 8
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %61

88:                                               ; preds = %61
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 15
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = load i64, i64* %10, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %10, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 15
  store i8 1, i8* %102, align 1
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %337

107:                                              ; preds = %88
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 15
  %110 = lshr i64 %109, 3
  %111 = or i64 %110, 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @U64(i32 1)
  %122 = shl i32 %121, 61
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %107
  store i32 -2, i32* %5, align 4
  br label %337

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %129, %125
  %127 = load i64, i64* %9, align 8
  %128 = icmp uge i64 %127, 16
  br i1 %128, label %129, label %205

129:                                              ; preds = %126
  %130 = load i8*, i8** %7, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, %133
  store i32 %140, i32* %138, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, %144
  store i32 %151, i32* %149, align 4
  %152 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = call i32 %152(i8* %156, i8* %160, i8* %161)
  %163 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = bitcast %union.anon* %16 to [16 x i8]*
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %168, i64 0, i64 0
  %170 = load i8*, i8** %15, align 8
  %171 = call i32 %163(i8* %167, i8* %169, i8* %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @ctr64_inc(i8* %175)
  %177 = bitcast %union.anon* %16 to [2 x i32]*
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %177, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** %7, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = xor i32 %179, %183
  %185 = load i8*, i8** %8, align 8
  %186 = bitcast i8* %185 to i32*
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 %184, i32* %187, align 4
  %188 = bitcast %union.anon* %16 to [2 x i32]*
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %188, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = load i8*, i8** %7, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = xor i32 %190, %194
  %196 = load i8*, i8** %8, align 8
  %197 = bitcast i8* %196 to i32*
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %195, i32* %198, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 16
  store i8* %200, i8** %7, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 16
  store i8* %202, i8** %8, align 8
  %203 = load i64, i64* %9, align 8
  %204 = sub i64 %203, 16
  store i64 %204, i64* %9, align 8
  br label %126

205:                                              ; preds = %126
  %206 = load i64, i64* %9, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %284

208:                                              ; preds = %205
  store i32 0, i32* %11, align 4
  br label %209

209:                                              ; preds = %232, %208
  %210 = load i32, i32* %11, align 4
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* %9, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %209
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* %11, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = xor i32 %229, %220
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %227, align 1
  br label %232

232:                                              ; preds = %214
  %233 = load i32, i32* %11, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %209

235:                                              ; preds = %209
  %236 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** %15, align 8
  %246 = call i32 %236(i8* %240, i8* %244, i8* %245)
  %247 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = bitcast %union.anon* %16 to [16 x i8]*
  %253 = getelementptr inbounds [16 x i8], [16 x i8]* %252, i64 0, i64 0
  %254 = load i8*, i8** %15, align 8
  %255 = call i32 %247(i8* %251, i8* %253, i8* %254)
  store i32 0, i32* %11, align 4
  br label %256

256:                                              ; preds = %280, %235
  %257 = load i32, i32* %11, align 4
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %9, align 8
  %260 = icmp ult i64 %258, %259
  br i1 %260, label %261, label %283

261:                                              ; preds = %256
  %262 = bitcast %union.anon* %16 to [16 x i8]*
  %263 = load i32, i32* %11, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [16 x i8], [16 x i8]* %262, i64 0, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8*, i8** %7, align 8
  %269 = load i32, i32* %11, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = xor i32 %267, %273
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %8, align 8
  %277 = load i32, i32* %11, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  store i8 %275, i8* %279, align 1
  br label %280

280:                                              ; preds = %261
  %281 = load i32, i32* %11, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %11, align 4
  br label %256

283:                                              ; preds = %256
  br label %284

284:                                              ; preds = %283, %205
  %285 = load i32, i32* %12, align 4
  %286 = sub i32 15, %285
  store i32 %286, i32* %11, align 4
  br label %287

287:                                              ; preds = %298, %284
  %288 = load i32, i32* %11, align 4
  %289 = icmp ult i32 %288, 16
  br i1 %289, label %290, label %301

290:                                              ; preds = %287
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  store i8 0, i8* %297, align 1
  br label %298

298:                                              ; preds = %290
  %299 = load i32, i32* %11, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %11, align 4
  br label %287

301:                                              ; preds = %287
  %302 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = bitcast %union.anon* %16 to [16 x i8]*
  %308 = getelementptr inbounds [16 x i8], [16 x i8]* %307, i64 0, i64 0
  %309 = load i8*, i8** %15, align 8
  %310 = call i32 %302(i8* %306, i8* %308, i8* %309)
  %311 = bitcast %union.anon* %16 to [2 x i32]*
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %311, i64 0, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = xor i32 %319, %313
  store i32 %320, i32* %318, align 4
  %321 = bitcast %union.anon* %16 to [2 x i32]*
  %322 = getelementptr inbounds [2 x i32], [2 x i32]* %321, i64 0, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = xor i32 %329, %323
  store i32 %330, i32* %328, align 4
  %331 = load i8, i8* %13, align 1
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 0
  store i8 %331, i8* %336, align 1
  store i32 0, i32* %5, align 4
  br label %337

337:                                              ; preds = %301, %124, %106
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local i32 @U64(i32) #1

declare dso_local i32 @ctr64_inc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
