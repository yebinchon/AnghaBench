; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_xchacha20.c_tv_box_xchacha20poly1305.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_xchacha20.c_tv_box_xchacha20poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES = common dso_local global i64 0, align 8
@crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES = common dso_local global i64 0, align 8
@crypto_box_curve25519xchacha20poly1305_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_box_curve25519xchacha20poly1305_MACBYTES = common dso_local global i64 0, align 8
@crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES = common dso_local global i64 0, align 8
@small_order_p = common dso_local global i8* null, align 8
@crypto_box_curve25519xchacha20poly1305_SEEDBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"4701d08488451f545a409fb58ae3e58581ca40ac3f7f114698cd71deac73ca01\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"3d94eea49c580aef816935762be049559d6d1440dede12e6a125f1841fff8e6f\00", align 1
@crypto_box_curve25519xchacha20poly1305_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"tv_box_xchacha20poly1305: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv_box_xchacha20poly1305 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_box_xchacha20poly1305() #0 {
  %1 = alloca [65 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES, align 8
  %14 = call i64 @sodium_malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %2, align 8
  %16 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES, align 8
  %17 = call i64 @sodium_malloc(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %3, align 8
  %19 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_NONCEBYTES, align 8
  %20 = call i64 @sodium_malloc(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %7, align 8
  %22 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %23 = call i64 @sodium_malloc(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %6, align 8
  %25 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES, align 8
  %26 = call i64 @sodium_malloc(i64 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %286, %0
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %289

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31
  %36 = call i64 @randombytes_uniform(i32 150)
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i64 [ 0, %34 ], [ %36, %35 ]
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @sodium_malloc(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %4, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @sodium_malloc(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %5, align 8
  %45 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %45, %46
  %48 = call i64 @sodium_malloc(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_NONCEBYTES, align 8
  %52 = call i32 @randombytes_buf(i8* %50, i64 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @randombytes_buf(i8* %53, i64 %54)
  %56 = load i8*, i8** %2, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @crypto_box_curve25519xchacha20poly1305_keypair(i8* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @crypto_box_curve25519xchacha20poly1305_easy(i8* %62, i8* %63, i64 0, i8* %64, i8* %65, i8* %66)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %2, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @crypto_box_curve25519xchacha20poly1305_easy(i8* %71, i8* %72, i64 %73, i8* %74, i8* %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %83, %84
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** @small_order_p, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy(i8* %81, i8* %82, i64 %85, i8* %86, i8* %87, i8* %88)
  %90 = icmp eq i32 %89, -1
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %96 = sub i64 %95, 1
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %2, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy(i8* %93, i8* %94, i64 %96, i8* %97, i8* %98, i8* %99)
  %101 = icmp eq i32 %100, -1
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i8*, i8** %5, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8*, i8** %2, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy(i8* %104, i8* %105, i64 0, i8* %106, i8* %107, i8* %108)
  %110 = icmp eq i32 %109, -1
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %115, %116
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy(i8* %113, i8* %114, i64 %117, i8* %118, i8* %119, i8* %120)
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @memcmp(i8* %125, i8* %126, i64 %127)
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @sodium_free(i8* %132)
  %134 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %134, %135
  %137 = call i64 @sodium_malloc(i64 %136)
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** @small_order_p, align 8
  %141 = load i8*, i8** %3, align 8
  %142 = call i32 @crypto_box_curve25519xchacha20poly1305_beforenm(i8* %139, i8* %140, i8* %141)
  %143 = icmp eq i32 %142, -1
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %2, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 @crypto_box_curve25519xchacha20poly1305_beforenm(i8* %146, i8* %147, i8* %148)
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = call i64 @crypto_box_curve25519xchacha20poly1305_easy_afternm(i8* %153, i8* %154, i64 0, i8* %155, i8* %156)
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i8*, i8** %8, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i64 @crypto_box_curve25519xchacha20poly1305_easy_afternm(i8* %161, i8* %162, i64 %163, i8* %164, i8* %165)
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i8*, i8** %5, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %173 = sub i64 %172, 1
  %174 = load i8*, i8** %7, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy_afternm(i8* %170, i8* %171, i64 %173, i8* %174, i8* %175)
  %177 = icmp eq i32 %176, -1
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load i8*, i8** %5, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy_afternm(i8* %180, i8* %181, i64 0, i8* %182, i8* %183)
  %185 = icmp eq i32 %184, -1
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i8*, i8** %5, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %191 = load i64, i64* %11, align 8
  %192 = add i64 %190, %191
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @crypto_box_curve25519xchacha20poly1305_open_easy_afternm(i8* %188, i8* %189, i64 %192, i8* %193, i8* %194)
  %196 = icmp eq i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i8*, i8** %5, align 8
  %200 = load i8*, i8** %4, align 8
  %201 = load i64, i64* %11, align 8
  %202 = call i64 @memcmp(i8* %199, i8* %200, i64 %201)
  %203 = icmp eq i64 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 @sodium_free(i8* %206)
  %208 = load i64, i64* %11, align 8
  %209 = call i64 @sodium_malloc(i64 %208)
  %210 = inttoptr i64 %209 to i8*
  store i8* %210, i8** %8, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** @small_order_p, align 8
  %217 = load i8*, i8** %3, align 8
  %218 = call i64 @crypto_box_curve25519xchacha20poly1305_detached(i8* %211, i8* %212, i8* %213, i64 %214, i8* %215, i8* %216, i8* %217)
  %219 = icmp eq i64 %218, -1
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i8*, i8** %8, align 8
  %223 = load i8*, i8** %6, align 8
  %224 = load i8*, i8** %4, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = load i8*, i8** %2, align 8
  %228 = load i8*, i8** %3, align 8
  %229 = call i64 @crypto_box_curve25519xchacha20poly1305_detached(i8* %222, i8* %223, i8* %224, i64 %225, i8* %226, i8* %227, i8* %228)
  %230 = icmp eq i64 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load i8*, i8** %5, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = load i8*, i8** @small_order_p, align 8
  %239 = load i8*, i8** %3, align 8
  %240 = call i64 @crypto_box_curve25519xchacha20poly1305_open_detached(i8* %233, i8* %234, i8* %235, i64 %236, i8* %237, i8* %238, i8* %239)
  %241 = icmp eq i64 %240, -1
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = load i8*, i8** %5, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = load i8*, i8** %6, align 8
  %247 = load i64, i64* %11, align 8
  %248 = load i8*, i8** %7, align 8
  %249 = load i8*, i8** %2, align 8
  %250 = load i8*, i8** %3, align 8
  %251 = call i64 @crypto_box_curve25519xchacha20poly1305_open_detached(i8* %244, i8* %245, i8* %246, i64 %247, i8* %248, i8* %249, i8* %250)
  %252 = icmp eq i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load i8*, i8** %8, align 8
  %256 = call i32 @sodium_free(i8* %255)
  %257 = load i64, i64* %11, align 8
  %258 = call i64 @sodium_malloc(i64 %257)
  %259 = inttoptr i64 %258 to i8*
  store i8* %259, i8** %8, align 8
  %260 = load i8*, i8** %8, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = load i8*, i8** %4, align 8
  %263 = load i64, i64* %11, align 8
  %264 = load i8*, i8** %7, align 8
  %265 = load i8*, i8** %9, align 8
  %266 = call i64 @crypto_box_curve25519xchacha20poly1305_detached_afternm(i8* %260, i8* %261, i8* %262, i64 %263, i8* %264, i8* %265)
  %267 = icmp eq i64 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load i8*, i8** %5, align 8
  %271 = load i8*, i8** %8, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = load i64, i64* %11, align 8
  %274 = load i8*, i8** %7, align 8
  %275 = load i8*, i8** %9, align 8
  %276 = call i64 @crypto_box_curve25519xchacha20poly1305_open_detached_afternm(i8* %270, i8* %271, i8* %272, i64 %273, i8* %274, i8* %275)
  %277 = icmp eq i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load i8*, i8** %8, align 8
  %281 = call i32 @sodium_free(i8* %280)
  %282 = load i8*, i8** %5, align 8
  %283 = call i32 @sodium_free(i8* %282)
  %284 = load i8*, i8** %4, align 8
  %285 = call i32 @sodium_free(i8* %284)
  br label %286

286:                                              ; preds = %37
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %12, align 4
  br label %28

289:                                              ; preds = %28
  %290 = load i8*, i8** %9, align 8
  %291 = call i32 @sodium_free(i8* %290)
  %292 = load i8*, i8** %6, align 8
  %293 = call i32 @sodium_free(i8* %292)
  %294 = load i8*, i8** %7, align 8
  %295 = call i32 @sodium_free(i8* %294)
  %296 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_SEEDBYTES, align 8
  %297 = call i64 @sodium_malloc(i64 %296)
  %298 = inttoptr i64 %297 to i8*
  store i8* %298, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %299

299:                                              ; preds = %311, %289
  %300 = load i32, i32* %12, align 4
  %301 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_SEEDBYTES, align 8
  %302 = trunc i64 %301 to i32
  %303 = icmp slt i32 %300, %302
  br i1 %303, label %304, label %314

304:                                              ; preds = %299
  %305 = load i32, i32* %12, align 4
  %306 = trunc i32 %305 to i8
  %307 = load i8*, i8** %10, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  store i8 %306, i8* %310, align 1
  br label %311

311:                                              ; preds = %304
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  br label %299

314:                                              ; preds = %299
  %315 = load i8*, i8** %2, align 8
  %316 = load i8*, i8** %3, align 8
  %317 = load i8*, i8** %10, align 8
  %318 = call i32 @crypto_box_curve25519xchacha20poly1305_seed_keypair(i8* %315, i8* %316, i8* %317)
  %319 = getelementptr inbounds [65 x i8], [65 x i8]* %1, i64 0, i64 0
  %320 = load i8*, i8** %2, align 8
  %321 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES, align 8
  %322 = call i32 @sodium_bin2hex(i8* %319, i32 65, i8* %320, i64 %321)
  %323 = getelementptr inbounds [65 x i8], [65 x i8]* %1, i64 0, i64 0
  %324 = call i64 @strcmp(i8* %323, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %325 = icmp eq i64 %324, 0
  %326 = zext i1 %325 to i32
  %327 = call i32 @assert(i32 %326)
  %328 = getelementptr inbounds [65 x i8], [65 x i8]* %1, i64 0, i64 0
  %329 = load i8*, i8** %3, align 8
  %330 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES, align 8
  %331 = call i32 @sodium_bin2hex(i8* %328, i32 65, i8* %329, i64 %330)
  %332 = getelementptr inbounds [65 x i8], [65 x i8]* %1, i64 0, i64 0
  %333 = call i64 @strcmp(i8* %332, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %334 = icmp eq i64 %333, 0
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  %337 = load i8*, i8** %10, align 8
  %338 = call i32 @sodium_free(i8* %337)
  %339 = load i8*, i8** %3, align 8
  %340 = call i32 @sodium_free(i8* %339)
  %341 = load i8*, i8** %2, align 8
  %342 = call i32 @sodium_free(i8* %341)
  %343 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_seedbytes()
  %344 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_SEEDBYTES, align 8
  %345 = icmp eq i64 %343, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @assert(i32 %346)
  %348 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_publickeybytes()
  %349 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES, align 8
  %350 = icmp eq i64 %348, %349
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  %353 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_secretkeybytes()
  %354 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES, align 8
  %355 = icmp eq i64 %353, %354
  %356 = zext i1 %355 to i32
  %357 = call i32 @assert(i32 %356)
  %358 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_beforenmbytes()
  %359 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES, align 8
  %360 = icmp eq i64 %358, %359
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_noncebytes()
  %364 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_NONCEBYTES, align 8
  %365 = icmp eq i64 %363, %364
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  %368 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_macbytes()
  %369 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MACBYTES, align 8
  %370 = icmp eq i64 %368, %369
  %371 = zext i1 %370 to i32
  %372 = call i32 @assert(i32 %371)
  %373 = call i64 (...) @crypto_box_curve25519xchacha20poly1305_messagebytes_max()
  %374 = load i64, i64* @crypto_box_curve25519xchacha20poly1305_MESSAGEBYTES_MAX, align 8
  %375 = icmp eq i64 %373, %374
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  %378 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_keypair(i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_easy(i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @crypto_box_curve25519xchacha20poly1305_open_easy(i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @crypto_box_curve25519xchacha20poly1305_beforenm(i8*, i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_easy_afternm(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @crypto_box_curve25519xchacha20poly1305_open_easy_afternm(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_detached(i8*, i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_open_detached(i8*, i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_detached_afternm(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_open_detached_afternm(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @crypto_box_curve25519xchacha20poly1305_seed_keypair(i8*, i8*, i8*) #1

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_seedbytes(...) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_publickeybytes(...) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_secretkeybytes(...) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_beforenmbytes(...) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_noncebytes(...) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_macbytes(...) #1

declare dso_local i64 @crypto_box_curve25519xchacha20poly1305_messagebytes_max(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
