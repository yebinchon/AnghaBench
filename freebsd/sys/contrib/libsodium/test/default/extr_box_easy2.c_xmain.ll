; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_box_easy2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_box_easy2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_MACBYTES = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i64 0, align 8
@crypto_box_SECRETKEYBYTES = common dso_local global i64 0, align 8
@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_box_BEFORENMBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"open() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"short open() should have failed\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"crypto_box_open_easy() failed\0A\00", align 1
@small_order_p = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"crypto_box_easy_afternm() with a null ciphertext should have worked\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"crypto_box_open_easy_afternm() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"crypto_box_open_easy_afternm() with a huge ciphertext should have failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"crypto_box_open_detached() with a weak key passed\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"crypto_box_open_detached() failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"crypto_box_open_detached_afternm() failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %19 = call i64 @randombytes_uniform(i32 1000)
  %20 = add i64 7, %19
  store i64 %20, i64* %15, align 8
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* @crypto_box_MACBYTES, align 8
  %22 = load i64, i64* %15, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i64 @sodium_malloc(i64 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %10, align 8
  %27 = load i64, i64* %16, align 8
  %28 = call i64 @sodium_malloc(i64 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %11, align 8
  %30 = load i64, i64* %17, align 8
  %31 = call i64 @sodium_malloc(i64 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %12, align 8
  %33 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %34 = call i64 @sodium_malloc(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %2, align 8
  %36 = load i64, i64* @crypto_box_SECRETKEYBYTES, align 8
  %37 = call i64 @sodium_malloc(i64 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %3, align 8
  %39 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %40 = call i64 @sodium_malloc(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %4, align 8
  %42 = load i64, i64* @crypto_box_SECRETKEYBYTES, align 8
  %43 = call i64 @sodium_malloc(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %5, align 8
  %45 = load i64, i64* @crypto_box_MACBYTES, align 8
  %46 = call i64 @sodium_malloc(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %6, align 8
  %48 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %49 = call i64 @sodium_malloc(i64 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %7, align 8
  %51 = load i64, i64* @crypto_box_BEFORENMBYTES, align 8
  %52 = call i64 @sodium_malloc(i64 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %8, align 8
  %54 = load i64, i64* @crypto_box_BEFORENMBYTES, align 8
  %55 = call i64 @sodium_malloc(i64 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %2, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @crypto_box_keypair(i8* %57, i8* %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @crypto_box_keypair(i8* %60, i8* %61)
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @randombytes_uniform(i32 %64)
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @randombytes_buf(i8* %67, i64 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %72 = call i32 @randombytes_buf(i8* %70, i64 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @crypto_box_easy(i8* %73, i8* %74, i64 %75, i8* %76, i8* %77, i8* %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @crypto_box_MACBYTES, align 8
  %88 = add i64 %86, %87
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %2, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @crypto_box_open_easy(i8* %84, i8* %85, i64 %88, i8* %89, i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %0
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %352

96:                                               ; preds = %0
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @memcmp(i8* %97, i8* %98, i64 %99)
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  store i64 0, i64* %14, align 8
  br label %102

102:                                              ; preds = %121, %96
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @crypto_box_MACBYTES, align 8
  %106 = add i64 %104, %105
  %107 = sub i64 %106, 1
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %2, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @crypto_box_open_easy(i8* %110, i8* %111, i64 %112, i8* %113, i8* %114, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %352

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %102

124:                                              ; preds = %102
  %125 = load i8*, i8** %12, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @memcpy(i8* %125, i8* %126, i64 %127)
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @crypto_box_easy(i8* %129, i8* %130, i64 %131, i8* %132, i8* %133, i8* %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @memcmp(i8* %140, i8* %141, i64 %142)
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i8*, i8** %10, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i64, i64* @crypto_box_MACBYTES, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i64, i64* %13, align 8
  %152 = call i32 @memcmp(i8* %147, i8* %150, i64 %151)
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = load i8*, i8** %12, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @crypto_box_MACBYTES, align 8
  %160 = add i64 %158, %159
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** %2, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = call i64 @crypto_box_open_easy(i8* %156, i8* %157, i64 %160, i8* %161, i8* %162, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %124
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %124
  %169 = load i8*, i8** %8, align 8
  %170 = load i8*, i8** @small_order_p, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @crypto_box_beforenm(i8* %169, i8* %170, i8* %171)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp eq i32 %173, -1
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** @small_order_p, align 8
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 @crypto_box_beforenm(i8* %177, i8* %178, i8* %179)
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp eq i32 %181, -1
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load i8*, i8** %8, align 8
  %186 = load i8*, i8** %2, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = call i32 @crypto_box_beforenm(i8* %185, i8* %186, i8* %187)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = load i8*, i8** %3, align 8
  %196 = call i32 @crypto_box_beforenm(i8* %193, i8* %194, i8* %195)
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %18, align 4
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i8*, i8** %11, align 8
  %202 = load i64, i64* %16, align 8
  %203 = call i32 @memset(i8* %201, i32 0, i64 %202)
  %204 = load i8*, i8** %12, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = call i64 @crypto_box_easy_afternm(i8* %204, i8* %205, i64 0, i8* %206, i8* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %168
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %168
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load i64, i64* %13, align 8
  %216 = load i8*, i8** %7, align 8
  %217 = load i8*, i8** %8, align 8
  %218 = call i64 @crypto_box_easy_afternm(i8* %213, i8* %214, i64 %215, i8* %216, i8* %217)
  %219 = load i8*, i8** %11, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = load i64, i64* %13, align 8
  %222 = load i64, i64* @crypto_box_MACBYTES, align 8
  %223 = add i64 %221, %222
  %224 = load i8*, i8** %7, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @crypto_box_open_easy_afternm(i8* %219, i8* %220, i64 %223, i8* %224, i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %212
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %212
  %231 = load i8*, i8** %10, align 8
  %232 = load i8*, i8** %11, align 8
  %233 = load i64, i64* %13, align 8
  %234 = call i32 @memcmp(i8* %231, i8* %232, i64 %233)
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load i8*, i8** %11, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = load i64, i64* @crypto_box_MACBYTES, align 8
  %239 = sub i64 %238, 1
  %240 = load i8*, i8** %7, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = call i64 @crypto_box_open_easy_afternm(i8* %236, i8* %237, i64 %239, i8* %240, i8* %241)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %230
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %230
  %247 = load i8*, i8** %11, align 8
  %248 = load i64, i64* %16, align 8
  %249 = call i32 @memset(i8* %247, i32 0, i64 %248)
  %250 = load i8*, i8** %12, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = load i8*, i8** %10, align 8
  %253 = load i64, i64* %13, align 8
  %254 = load i8*, i8** %7, align 8
  %255 = load i8*, i8** @small_order_p, align 8
  %256 = load i8*, i8** %5, align 8
  %257 = call i32 @crypto_box_detached(i8* %250, i8* %251, i8* %252, i64 %253, i8* %254, i8* %255, i8* %256)
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp eq i32 %258, -1
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i8*, i8** %12, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = load i64, i64* %13, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = load i8*, i8** %2, align 8
  %268 = load i8*, i8** %5, align 8
  %269 = call i32 @crypto_box_detached(i8* %262, i8* %263, i8* %264, i64 %265, i8* %266, i8* %267, i8* %268)
  store i32 %269, i32* %18, align 4
  %270 = load i32, i32* %18, align 4
  %271 = icmp eq i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load i8*, i8** %11, align 8
  %275 = load i8*, i8** %12, align 8
  %276 = load i8*, i8** %6, align 8
  %277 = load i64, i64* %13, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = load i8*, i8** @small_order_p, align 8
  %280 = load i8*, i8** %3, align 8
  %281 = call i32 @crypto_box_open_detached(i8* %274, i8* %275, i8* %276, i64 %277, i8* %278, i8* %279, i8* %280)
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %285

283:                                              ; preds = %246
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %246
  %286 = load i8*, i8** %11, align 8
  %287 = load i8*, i8** %12, align 8
  %288 = load i8*, i8** %6, align 8
  %289 = load i64, i64* %13, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = load i8*, i8** %4, align 8
  %292 = load i8*, i8** %3, align 8
  %293 = call i32 @crypto_box_open_detached(i8* %286, i8* %287, i8* %288, i64 %289, i8* %290, i8* %291, i8* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %285
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %285
  %298 = load i8*, i8** %10, align 8
  %299 = load i8*, i8** %11, align 8
  %300 = load i64, i64* %13, align 8
  %301 = call i32 @memcmp(i8* %298, i8* %299, i64 %300)
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %301)
  %303 = load i8*, i8** %11, align 8
  %304 = load i64, i64* %16, align 8
  %305 = call i32 @memset(i8* %303, i32 0, i64 %304)
  %306 = load i8*, i8** %12, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = load i8*, i8** %10, align 8
  %309 = load i64, i64* %13, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = load i8*, i8** %8, align 8
  %312 = call i32 @crypto_box_detached_afternm(i8* %306, i8* %307, i8* %308, i64 %309, i8* %310, i8* %311)
  %313 = load i8*, i8** %11, align 8
  %314 = load i8*, i8** %12, align 8
  %315 = load i8*, i8** %6, align 8
  %316 = load i64, i64* %13, align 8
  %317 = load i8*, i8** %7, align 8
  %318 = load i8*, i8** %9, align 8
  %319 = call i64 @crypto_box_open_detached_afternm(i8* %313, i8* %314, i8* %315, i64 %316, i8* %317, i8* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %297
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %323

323:                                              ; preds = %321, %297
  %324 = load i8*, i8** %10, align 8
  %325 = load i8*, i8** %11, align 8
  %326 = load i64, i64* %13, align 8
  %327 = call i32 @memcmp(i8* %324, i8* %325, i64 %326)
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %327)
  %329 = load i8*, i8** %2, align 8
  %330 = call i32 @sodium_free(i8* %329)
  %331 = load i8*, i8** %3, align 8
  %332 = call i32 @sodium_free(i8* %331)
  %333 = load i8*, i8** %4, align 8
  %334 = call i32 @sodium_free(i8* %333)
  %335 = load i8*, i8** %5, align 8
  %336 = call i32 @sodium_free(i8* %335)
  %337 = load i8*, i8** %6, align 8
  %338 = call i32 @sodium_free(i8* %337)
  %339 = load i8*, i8** %7, align 8
  %340 = call i32 @sodium_free(i8* %339)
  %341 = load i8*, i8** %8, align 8
  %342 = call i32 @sodium_free(i8* %341)
  %343 = load i8*, i8** %9, align 8
  %344 = call i32 @sodium_free(i8* %343)
  %345 = load i8*, i8** %10, align 8
  %346 = call i32 @sodium_free(i8* %345)
  %347 = load i8*, i8** %11, align 8
  %348 = call i32 @sodium_free(i8* %347)
  %349 = load i8*, i8** %12, align 8
  %350 = call i32 @sodium_free(i8* %349)
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %352

352:                                              ; preds = %323, %118, %94
  %353 = load i32, i32* %1, align 4
  ret i32 %353
}

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @crypto_box_keypair(i8*, i8*) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_box_easy(i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_box_open_easy(i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @crypto_box_beforenm(i8*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @crypto_box_easy_afternm(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_box_open_easy_afternm(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @crypto_box_detached(i8*, i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @crypto_box_open_detached(i8*, i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @crypto_box_detached_afternm(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_box_open_detached_afternm(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
