; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_ige.c_AES_ige_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/aes/extr_aes_ige.c_AES_ige_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@AES_ENCRYPT = common dso_local global i32 0, align 4
@AES_DECRYPT = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@UNALIGNED_MEMOPS_ARE_FAST = common dso_local global i64 0, align 8
@N_WORDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AES_ige_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  %20 = alloca %struct.TYPE_4__, align 8
  %21 = alloca %struct.TYPE_4__, align 8
  %22 = alloca %struct.TYPE_4__, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca %struct.TYPE_4__*, align 8
  %25 = alloca %struct.TYPE_4__, align 8
  %26 = alloca %struct.TYPE_4__*, align 8
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca %struct.TYPE_4__, align 8
  %29 = alloca %struct.TYPE_4__, align 8
  %30 = alloca %struct.TYPE_4__, align 8
  %31 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  br label %507

36:                                               ; preds = %6
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %45, %42, %39, %36
  %49 = phi i1 [ false, %42 ], [ false, %39 ], [ false, %36 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @OPENSSL_assert(i32 %50)
  %52 = load i32, i32* @AES_ENCRYPT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @AES_DECRYPT, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i1 [ true, %48 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @OPENSSL_assert(i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %65 = urem i64 %63, %64
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @OPENSSL_assert(i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %71 = udiv i64 %69, %70
  store i64 %71, i64* %14, align 8
  %72 = load i32, i32* @AES_ENCRYPT, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %293

75:                                               ; preds = %59
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %192

79:                                               ; preds = %75
  %80 = load i64, i64* @UNALIGNED_MEMOPS_ARE_FAST, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load i8*, i8** %8, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = or i64 %84, %86
  %88 = load i8*, i8** %11, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = or i64 %87, %89
  %91 = urem i64 %90, 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %192

93:                                               ; preds = %82, %79
  %94 = load i8*, i8** %11, align 8
  %95 = bitcast i8* %94 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %15, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = bitcast i8* %98 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %16, align 8
  br label %100

100:                                              ; preds = %166, %93
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %177

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  %105 = bitcast i8* %104 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %17, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = bitcast i8* %106 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %18, align 8
  store i64 0, i64* %13, align 8
  br label %108

108:                                              ; preds = %131, %103
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @N_WORDS, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %118, %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %112
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8
  br label %108

134:                                              ; preds = %108
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @AES_encrypt(i8* %138, i8* %142, i32* %143)
  store i64 0, i64* %13, align 8
  br label %145

145:                                              ; preds = %163, %134
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @N_WORDS, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %145
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %13, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, %155
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %149
  %164 = load i64, i64* %13, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %13, align 8
  br label %145

166:                                              ; preds = %145
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %167, %struct.TYPE_4__** %15, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %168, %struct.TYPE_4__** %16, align 8
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %14, align 8
  %171 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %7, align 8
  %174 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 %174
  store i8* %176, i8** %8, align 8
  br label %100

177:                                              ; preds = %100
  %178 = load i8*, i8** %11, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %183 = call i32 @memcpy(i8* %178, i32* %181, i64 %182)
  %184 = load i8*, i8** %11, align 8
  %185 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %191 = call i32 @memcpy(i8* %186, i32* %189, i64 %190)
  br label %292

192:                                              ; preds = %82, %75
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @load_block(i32* %195, i8* %193)
  %197 = load i8*, i8** %11, align 8
  %198 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @load_block(i32* %201, i8* %199)
  br label %203

203:                                              ; preds = %262, %192
  %204 = load i64, i64* %14, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %279

206:                                              ; preds = %203
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @load_block(i32* %209, i8* %207)
  store i64 0, i64* %13, align 8
  br label %211

211:                                              ; preds = %231, %206
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* @N_WORDS, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* %13, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = xor i32 %220, %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %215
  %232 = load i64, i64* %13, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %13, align 8
  br label %211

234:                                              ; preds = %211
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = bitcast i32* %236 to i8*
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = bitcast i32* %239 to i8*
  %241 = load i32*, i32** %10, align 8
  %242 = call i32 @AES_encrypt(i8* %237, i8* %240, i32* %241)
  store i64 0, i64* %13, align 8
  br label %243

243:                                              ; preds = %259, %234
  %244 = load i64, i64* %13, align 8
  %245 = load i64, i64* @N_WORDS, align 8
  %246 = icmp ult i64 %244, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* %13, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* %13, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = xor i32 %257, %252
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %247
  %260 = load i64, i64* %13, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %13, align 8
  br label %243

262:                                              ; preds = %243
  %263 = load i8*, i8** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @store_block(i8* %263, i32* %265)
  %267 = bitcast %struct.TYPE_4__* %21 to i8*
  %268 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 8, i1 false)
  %269 = bitcast %struct.TYPE_4__* %22 to i8*
  %270 = bitcast %struct.TYPE_4__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 8, i1 false)
  %271 = load i64, i64* %14, align 8
  %272 = add i64 %271, -1
  store i64 %272, i64* %14, align 8
  %273 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %274 = load i8*, i8** %7, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 %273
  store i8* %275, i8** %7, align 8
  %276 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %277 = load i8*, i8** %8, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 %276
  store i8* %278, i8** %8, align 8
  br label %203

279:                                              ; preds = %203
  %280 = load i8*, i8** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %284 = call i32 @memcpy(i8* %280, i32* %282, i64 %283)
  %285 = load i8*, i8** %11, align 8
  %286 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %291 = call i32 @memcpy(i8* %287, i32* %289, i64 %290)
  br label %292

292:                                              ; preds = %279, %177
  br label %507

293:                                              ; preds = %59
  %294 = load i8*, i8** %7, align 8
  %295 = load i8*, i8** %8, align 8
  %296 = icmp ne i8* %294, %295
  br i1 %296, label %297, label %408

297:                                              ; preds = %293
  %298 = load i64, i64* @UNALIGNED_MEMOPS_ARE_FAST, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %311, label %300

300:                                              ; preds = %297
  %301 = load i8*, i8** %7, align 8
  %302 = ptrtoint i8* %301 to i64
  %303 = load i8*, i8** %8, align 8
  %304 = ptrtoint i8* %303 to i64
  %305 = or i64 %302, %304
  %306 = load i8*, i8** %11, align 8
  %307 = ptrtoint i8* %306 to i64
  %308 = or i64 %305, %307
  %309 = urem i64 %308, 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %408

311:                                              ; preds = %300, %297
  %312 = load i8*, i8** %11, align 8
  %313 = bitcast i8* %312 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %313, %struct.TYPE_4__** %23, align 8
  %314 = load i8*, i8** %11, align 8
  %315 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = bitcast i8* %316 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %317, %struct.TYPE_4__** %24, align 8
  br label %318

318:                                              ; preds = %382, %311
  %319 = load i64, i64* %14, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %393

321:                                              ; preds = %318
  %322 = load i8*, i8** %7, align 8
  %323 = bitcast i8* %322 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %323, %struct.TYPE_4__** %26, align 8
  %324 = load i8*, i8** %8, align 8
  %325 = bitcast i8* %324 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %325, %struct.TYPE_4__** %27, align 8
  store i64 0, i64* %13, align 8
  br label %326

326:                                              ; preds = %348, %321
  %327 = load i64, i64* %13, align 8
  %328 = load i64, i64* @N_WORDS, align 8
  %329 = icmp ult i64 %327, %328
  br i1 %329, label %330, label %351

330:                                              ; preds = %326
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = load i64, i64* %13, align 8
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i64, i64* %13, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = xor i32 %336, %342
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* %13, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32 %343, i32* %347, align 4
  br label %348

348:                                              ; preds = %330
  %349 = load i64, i64* %13, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %13, align 8
  br label %326

351:                                              ; preds = %326
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = bitcast i32* %353 to i8*
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = bitcast i32* %357 to i8*
  %359 = load i32*, i32** %10, align 8
  %360 = call i32 @AES_decrypt(i8* %354, i8* %358, i32* %359)
  store i64 0, i64* %13, align 8
  br label %361

361:                                              ; preds = %379, %351
  %362 = load i64, i64* %13, align 8
  %363 = load i64, i64* @N_WORDS, align 8
  %364 = icmp ult i64 %362, %363
  br i1 %364, label %365, label %382

365:                                              ; preds = %361
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i64, i64* %13, align 8
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load i64, i64* %13, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = xor i32 %377, %371
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %365
  %380 = load i64, i64* %13, align 8
  %381 = add i64 %380, 1
  store i64 %381, i64* %13, align 8
  br label %361

382:                                              ; preds = %361
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %383, %struct.TYPE_4__** %23, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %384, %struct.TYPE_4__** %24, align 8
  %385 = load i64, i64* %14, align 8
  %386 = add i64 %385, -1
  store i64 %386, i64* %14, align 8
  %387 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %388 = load i8*, i8** %7, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 %387
  store i8* %389, i8** %7, align 8
  %390 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %391 = load i8*, i8** %8, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 %390
  store i8* %392, i8** %8, align 8
  br label %318

393:                                              ; preds = %318
  %394 = load i8*, i8** %11, align 8
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %399 = call i32 @memcpy(i8* %394, i32* %397, i64 %398)
  %400 = load i8*, i8** %11, align 8
  %401 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %402 = getelementptr inbounds i8, i8* %400, i64 %401
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %407 = call i32 @memcpy(i8* %402, i32* %405, i64 %406)
  br label %506

408:                                              ; preds = %300, %293
  %409 = load i8*, i8** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @load_block(i32* %411, i8* %409)
  %413 = load i8*, i8** %11, align 8
  %414 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %415 = getelementptr inbounds i8, i8* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = call i32 @load_block(i32* %417, i8* %415)
  br label %419

419:                                              ; preds = %476, %408
  %420 = load i64, i64* %14, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %493

422:                                              ; preds = %419
  %423 = load i8*, i8** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = call i32 @load_block(i32* %425, i8* %423)
  %427 = bitcast %struct.TYPE_4__* %29 to i8*
  %428 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %427, i8* align 8 %428, i64 8, i1 false)
  store i64 0, i64* %13, align 8
  br label %429

429:                                              ; preds = %445, %422
  %430 = load i64, i64* %13, align 8
  %431 = load i64, i64* @N_WORDS, align 8
  %432 = icmp ult i64 %430, %431
  br i1 %432, label %433, label %448

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = load i64, i64* %13, align 8
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = load i64, i64* %13, align 8
  %442 = getelementptr inbounds i32, i32* %440, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = xor i32 %443, %438
  store i32 %444, i32* %442, align 4
  br label %445

445:                                              ; preds = %433
  %446 = load i64, i64* %13, align 8
  %447 = add i64 %446, 1
  store i64 %447, i64* %13, align 8
  br label %429

448:                                              ; preds = %429
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %450 = load i32*, i32** %449, align 8
  %451 = bitcast i32* %450 to i8*
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = bitcast i32* %453 to i8*
  %455 = load i32*, i32** %10, align 8
  %456 = call i32 @AES_decrypt(i8* %451, i8* %454, i32* %455)
  store i64 0, i64* %13, align 8
  br label %457

457:                                              ; preds = %473, %448
  %458 = load i64, i64* %13, align 8
  %459 = load i64, i64* @N_WORDS, align 8
  %460 = icmp ult i64 %458, %459
  br i1 %460, label %461, label %476

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %463 = load i32*, i32** %462, align 8
  %464 = load i64, i64* %13, align 8
  %465 = getelementptr inbounds i32, i32* %463, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %468 = load i32*, i32** %467, align 8
  %469 = load i64, i64* %13, align 8
  %470 = getelementptr inbounds i32, i32* %468, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = xor i32 %471, %466
  store i32 %472, i32* %470, align 4
  br label %473

473:                                              ; preds = %461
  %474 = load i64, i64* %13, align 8
  %475 = add i64 %474, 1
  store i64 %475, i64* %13, align 8
  br label %457

476:                                              ; preds = %457
  %477 = load i8*, i8** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = call i32 @store_block(i8* %477, i32* %479)
  %481 = bitcast %struct.TYPE_4__* %30 to i8*
  %482 = bitcast %struct.TYPE_4__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %481, i8* align 8 %482, i64 8, i1 false)
  %483 = bitcast %struct.TYPE_4__* %31 to i8*
  %484 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %483, i8* align 8 %484, i64 8, i1 false)
  %485 = load i64, i64* %14, align 8
  %486 = add i64 %485, -1
  store i64 %486, i64* %14, align 8
  %487 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %488 = load i8*, i8** %7, align 8
  %489 = getelementptr inbounds i8, i8* %488, i64 %487
  store i8* %489, i8** %7, align 8
  %490 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %491 = load i8*, i8** %8, align 8
  %492 = getelementptr inbounds i8, i8* %491, i64 %490
  store i8* %492, i8** %8, align 8
  br label %419

493:                                              ; preds = %419
  %494 = load i8*, i8** %11, align 8
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %496 = load i32*, i32** %495, align 8
  %497 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %498 = call i32 @memcpy(i8* %494, i32* %496, i64 %497)
  %499 = load i8*, i8** %11, align 8
  %500 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %501 = getelementptr inbounds i8, i8* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %503 = load i32*, i32** %502, align 8
  %504 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %505 = call i32 @memcpy(i8* %501, i32* %503, i64 %504)
  br label %506

506:                                              ; preds = %493, %393
  br label %507

507:                                              ; preds = %35, %506, %292
  ret void
}

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @AES_encrypt(i8*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @load_block(i32*, i8*) #1

declare dso_local i32 @store_block(i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AES_decrypt(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
