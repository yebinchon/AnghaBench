; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_b64.c_b64_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_b64.c_b64_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i8*, i32, i32*, i32, i64 }

@B64_DECODE = common dso_local global i64 0, align 8
@B64_BLOCK_SIZE = common dso_local global i32 0, align 4
@BIO_FLAGS_BASE64_NO_NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @b64_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b64_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %562

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @BIO_get_data(i32* %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %17, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @BIO_next(i32* %30)
  store i32* %31, i32** %20, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %33 = icmp eq %struct.TYPE_2__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %20, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %26
  store i32 0, i32* %4, align 4
  br label %562

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @BIO_clear_retry_flags(i32* %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @B64_DECODE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load i64, i64* @B64_DECODE, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @EVP_DecodeInit(i32 %58)
  br label %60

60:                                               ; preds = %46, %38
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %133

65:                                               ; preds = %60
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @OPENSSL_assert(i32 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %65
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %65
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp slt i32 %92, 8
  %94 = zext i1 %93 to i32
  %95 = call i32 @OPENSSL_assert(i32 %94)
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @memcpy(i8* %96, i32* %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %87
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %87
  br label %133

133:                                              ; preds = %132, %60
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %543, %391, %377, %133
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %551

137:                                              ; preds = %134
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %551

143:                                              ; preds = %137
  %144 = load i32*, i32** %20, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 5
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i32, i32* @B64_BLOCK_SIZE, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = sub i64 %153, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @BIO_read(i32* %144, i8* %151, i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %143
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %16, align 4
  %164 = load i32*, i32** %20, align 8
  %165 = call i32 @BIO_should_retry(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %551

176:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %176
  br label %179

178:                                              ; preds = %162
  br label %551

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %143
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %180
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @BIO_get_flags(i32* %197)
  %199 = load i32, i32* @BIO_FLAGS_BASE64_NO_NL, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 3
  store i64 0, i64* %204, align 8
  br label %394

205:                                              ; preds = %196, %180
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %382

210:                                              ; preds = %205
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  store i8* %213, i8** %18, align 8
  store i8* %213, i8** %19, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %314, %210
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %317

218:                                              ; preds = %214
  %219 = load i8*, i8** %19, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %19, align 8
  %221 = load i8, i8* %219, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp ne i32 %222, 10
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %314

225:                                              ; preds = %218
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load i8*, i8** %19, align 8
  store i8* %231, i8** %18, align 8
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 6
  store i32 0, i32* %233, align 8
  br label %314

234:                                              ; preds = %225
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = bitcast i32* %240 to i8*
  %242 = load i8*, i8** %18, align 8
  %243 = load i8*, i8** %19, align 8
  %244 = load i8*, i8** %18, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = trunc i64 %247 to i32
  %249 = call i32 @EVP_DecodeUpdate(i32 %237, i8* %241, i32* %15, i8* %242, i32 %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp sle i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %234
  %253 = load i32, i32* %15, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %252
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 9
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @EVP_DecodeInit(i32 %263)
  br label %312

265:                                              ; preds = %255, %252, %234
  %266 = load i8*, i8** %18, align 8
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 5
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 0
  %271 = icmp ne i8* %266, %270
  br i1 %271, label %272, label %305

272:                                              ; preds = %265
  %273 = load i8*, i8** %18, align 8
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 5
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  %278 = ptrtoint i8* %273 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = sub nsw i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %285

285:                                              ; preds = %301, %272
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %304

289:                                              ; preds = %285
  %290 = load i8*, i8** %18, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 5
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  store i8 %294, i8* %300, align 1
  br label %301

301:                                              ; preds = %289
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %13, align 4
  br label %285

304:                                              ; preds = %285
  br label %305

305:                                              ; preds = %304, %265
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @EVP_DecodeInit(i32 %308)
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 9
  store i64 0, i64* %311, align 8
  br label %317

312:                                              ; preds = %260
  %313 = load i8*, i8** %19, align 8
  store i8* %313, i8** %18, align 8
  br label %314

314:                                              ; preds = %312, %230, %224
  %315 = load i32, i32* %11, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %11, align 4
  br label %214

317:                                              ; preds = %305, %214
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* %9, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %378

321:                                              ; preds = %317
  %322 = load i32, i32* %15, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %378

324:                                              ; preds = %321
  %325 = load i8*, i8** %18, align 8
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 5
  %328 = load i8*, i8** %327, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 0
  %330 = icmp eq i8* %325, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %324
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* @B64_BLOCK_SIZE, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %331
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 6
  store i32 1, i32* %337, align 8
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 3
  store i64 0, i64* %339, align 8
  br label %340

340:                                              ; preds = %335, %331
  br label %377

341:                                              ; preds = %324
  %342 = load i8*, i8** %18, align 8
  %343 = load i8*, i8** %19, align 8
  %344 = icmp ne i8* %342, %343
  br i1 %344, label %345, label %376

345:                                              ; preds = %341
  %346 = load i8*, i8** %19, align 8
  %347 = load i8*, i8** %18, align 8
  %348 = ptrtoint i8* %346 to i64
  %349 = ptrtoint i8* %347 to i64
  %350 = sub i64 %348, %349
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %352

352:                                              ; preds = %368, %345
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %371

356:                                              ; preds = %352
  %357 = load i8*, i8** %18, align 8
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %357, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 5
  %364 = load i8*, i8** %363, align 8
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %364, i64 %366
  store i8 %361, i8* %367, align 1
  br label %368

368:                                              ; preds = %356
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %10, align 4
  br label %352

371:                                              ; preds = %352
  %372 = load i32, i32* %14, align 4
  %373 = sext i32 %372 to i64
  %374 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 3
  store i64 %373, i64* %375, align 8
  br label %376

376:                                              ; preds = %371, %341
  br label %377

377:                                              ; preds = %376, %340
  br label %134

378:                                              ; preds = %321, %317
  %379 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 3
  store i64 0, i64* %380, align 8
  br label %381

381:                                              ; preds = %378
  br label %393

382:                                              ; preds = %205
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* @B64_BLOCK_SIZE, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %392

386:                                              ; preds = %382
  %387 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  br label %134

392:                                              ; preds = %386, %382
  br label %393

393:                                              ; preds = %392, %381
  br label %394

394:                                              ; preds = %393, %202
  %395 = load i32*, i32** %5, align 8
  %396 = call i32 @BIO_get_flags(i32* %395)
  %397 = load i32, i32* @BIO_FLAGS_BASE64_NO_NL, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %478

400:                                              ; preds = %394
  %401 = load i32, i32* %9, align 4
  %402 = and i32 %401, -4
  store i32 %402, i32* %22, align 4
  %403 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 7
  %405 = load i32*, i32** %404, align 8
  %406 = bitcast i32* %405 to i8*
  %407 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 5
  %409 = load i8*, i8** %408, align 8
  %410 = load i32, i32* %22, align 4
  %411 = call i32 @EVP_DecodeBlock(i8* %406, i8* %409, i32 %410)
  store i32 %411, i32* %21, align 4
  %412 = load i32, i32* %22, align 4
  %413 = icmp sgt i32 %412, 2
  br i1 %413, label %414, label %443

414:                                              ; preds = %400
  %415 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 5
  %417 = load i8*, i8** %416, align 8
  %418 = load i32, i32* %22, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %417, i64 %420
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = icmp eq i32 %423, 61
  br i1 %424, label %425, label %442

425:                                              ; preds = %414
  %426 = load i32, i32* %21, align 4
  %427 = add nsw i32 %426, -1
  store i32 %427, i32* %21, align 4
  %428 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 5
  %430 = load i8*, i8** %429, align 8
  %431 = load i32, i32* %22, align 4
  %432 = sub nsw i32 %431, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, i8* %430, i64 %433
  %435 = load i8, i8* %434, align 1
  %436 = zext i8 %435 to i32
  %437 = icmp eq i32 %436, 61
  br i1 %437, label %438, label %441

438:                                              ; preds = %425
  %439 = load i32, i32* %21, align 4
  %440 = add nsw i32 %439, -1
  store i32 %440, i32* %21, align 4
  br label %441

441:                                              ; preds = %438, %425
  br label %442

442:                                              ; preds = %441, %414
  br label %443

443:                                              ; preds = %442, %400
  %444 = load i32, i32* %22, align 4
  %445 = load i32, i32* %9, align 4
  %446 = icmp ne i32 %444, %445
  br i1 %446, label %447, label %467

447:                                              ; preds = %443
  %448 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i32 0, i32 5
  %450 = load i8*, i8** %449, align 8
  %451 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 5
  %453 = load i8*, i8** %452, align 8
  %454 = load i32, i32* %22, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, i8* %453, i64 %455
  %457 = load i32, i32* %9, align 4
  %458 = load i32, i32* %22, align 4
  %459 = sub nsw i32 %457, %458
  %460 = call i32 @memmove(i8* %450, i8* %456, i32 %459)
  %461 = load i32, i32* %9, align 4
  %462 = load i32, i32* %22, align 4
  %463 = sub nsw i32 %461, %462
  %464 = sext i32 %463 to i64
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %466 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i32 0, i32 3
  store i64 %464, i64* %466, align 8
  br label %467

467:                                              ; preds = %447, %443
  %468 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 1
  store i32 0, i32* %469, align 8
  %470 = load i32, i32* %21, align 4
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = load i32, i32* %21, align 4
  %474 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 8
  br label %476

476:                                              ; preds = %472, %467
  %477 = load i32, i32* %21, align 4
  store i32 %477, i32* %9, align 4
  br label %495

478:                                              ; preds = %394
  %479 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %480 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %479, i32 0, i32 8
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %483 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i32 0, i32 7
  %484 = load i32*, i32** %483, align 8
  %485 = bitcast i32* %484 to i8*
  %486 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 1
  %488 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 5
  %490 = load i8*, i8** %489, align 8
  %491 = load i32, i32* %9, align 4
  %492 = call i32 @EVP_DecodeUpdate(i32 %481, i8* %485, i32* %487, i8* %490, i32 %491)
  store i32 %492, i32* %9, align 4
  %493 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %493, i32 0, i32 3
  store i64 0, i64* %494, align 8
  br label %495

495:                                              ; preds = %478, %476
  %496 = load i32, i32* %9, align 4
  %497 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %498 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %497, i32 0, i32 4
  store i32 %496, i32* %498, align 8
  %499 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %500 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %499, i32 0, i32 2
  store i32 0, i32* %500, align 4
  %501 = load i32, i32* %9, align 4
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %495
  store i32 0, i32* %16, align 4
  %504 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %505 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %504, i32 0, i32 1
  store i32 0, i32* %505, align 8
  br label %551

506:                                              ; preds = %495
  %507 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %508 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* %7, align 4
  %511 = icmp sle i32 %509, %510
  br i1 %511, label %512, label %516

512:                                              ; preds = %506
  %513 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %514 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 8
  store i32 %515, i32* %9, align 4
  br label %518

516:                                              ; preds = %506
  %517 = load i32, i32* %7, align 4
  store i32 %517, i32* %9, align 4
  br label %518

518:                                              ; preds = %516, %512
  %519 = load i8*, i8** %6, align 8
  %520 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %521 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %520, i32 0, i32 7
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %9, align 4
  %524 = call i32 @memcpy(i8* %519, i32* %522, i32 %523)
  %525 = load i32, i32* %9, align 4
  %526 = load i32, i32* %8, align 4
  %527 = add nsw i32 %526, %525
  store i32 %527, i32* %8, align 4
  %528 = load i32, i32* %9, align 4
  %529 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %530 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %529, i32 0, i32 2
  store i32 %528, i32* %530, align 4
  %531 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %532 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %535 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 8
  %537 = icmp eq i32 %533, %536
  br i1 %537, label %538, label %543

538:                                              ; preds = %518
  %539 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %539, i32 0, i32 1
  store i32 0, i32* %540, align 8
  %541 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %542 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %541, i32 0, i32 2
  store i32 0, i32* %542, align 4
  br label %543

543:                                              ; preds = %538, %518
  %544 = load i32, i32* %9, align 4
  %545 = load i32, i32* %7, align 4
  %546 = sub nsw i32 %545, %544
  store i32 %546, i32* %7, align 4
  %547 = load i32, i32* %9, align 4
  %548 = load i8*, i8** %6, align 8
  %549 = sext i32 %547 to i64
  %550 = getelementptr inbounds i8, i8* %548, i64 %549
  store i8* %550, i8** %6, align 8
  br label %134

551:                                              ; preds = %503, %178, %175, %142, %134
  %552 = load i32*, i32** %5, align 8
  %553 = call i32 @BIO_copy_next_retry(i32* %552)
  %554 = load i32, i32* %8, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %551
  %557 = load i32, i32* %16, align 4
  br label %560

558:                                              ; preds = %551
  %559 = load i32, i32* %8, align 4
  br label %560

560:                                              ; preds = %558, %556
  %561 = phi i32 [ %557, %556 ], [ %559, %558 ]
  store i32 %561, i32* %4, align 4
  br label %562

562:                                              ; preds = %560, %37, %25
  %563 = load i32, i32* %4, align 4
  ret i32 %563
}

declare dso_local i64 @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @EVP_DecodeInit(i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_should_retry(i32*) #1

declare dso_local i32 @BIO_get_flags(i32*) #1

declare dso_local i32 @EVP_DecodeUpdate(i32, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_DecodeBlock(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
