; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_core_ed25519.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_core_ed25519.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_core_ed25519_UNIFORMBYTES = common dso_local global i64 0, align 8
@crypto_core_ed25519_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"crypto_core_ed25519_from_uniform() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"crypto_core_ed25519_from_uniform() returned an invalid point\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"crypto_core_add() returned an invalid point\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"crypto_core_add() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"crypto_core_add() or crypto_core_sub() failed\0A\00", align 1
@crypto_scalarmult_ed25519_SCALARBYTES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"crypto_scalarmult_ed25519() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"crypto_scalarmult_ed25519() is inconsistent with crypto_core_ed25519_add()\0A\00", align 1
@max_canonical_p = common dso_local global i8* null, align 8
@non_canonical_invalid_p = common dso_local global i8* null, align 8
@non_canonical_p = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i64, i64* @crypto_core_ed25519_UNIFORMBYTES, align 8
  %10 = call i64 @sodium_malloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %2, align 8
  %12 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %13 = call i64 @sodium_malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %3, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %0
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* @crypto_core_ed25519_UNIFORMBYTES, align 8
  %21 = call i32 @randombytes_buf(i8* %19, i64 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @crypto_core_ed25519_from_uniform(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @crypto_core_ed25519_is_valid_point(i8* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %40 = call i64 @sodium_malloc(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %4, align 8
  %42 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %43 = call i64 @sodium_malloc(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = load i64, i64* @crypto_core_ed25519_UNIFORMBYTES, align 8
  %47 = call i32 @randombytes_buf(i8* %45, i64 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @crypto_core_ed25519_from_uniform(i8* %48, i8* %49)
  %51 = call i64 @randombytes_uniform(i32 100)
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %8, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %57 = call i32 @memcpy(i8* %54, i8* %55, i64 %56)
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %73, %38
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @crypto_core_ed25519_add(i8* %63, i8* %64, i8* %65)
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @crypto_core_ed25519_is_valid_point(i8* %67)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %80 = call i64 @memcmp(i8* %77, i8* %78, i64 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** %3, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @crypto_core_ed25519_sub(i8* %90, i8* %91, i8* %92)
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load i8*, i8** %3, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %101 = call i64 @memcmp(i8* %98, i8* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %97
  %106 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %107 = call i64 @sodium_malloc(i64 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %111 = call i32 @memset(i8* %109, i32 0, i64 %110)
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 8, i8* %113, align 1
  %114 = load i8*, i8** %4, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %117 = call i32 @memcpy(i8* %114, i8* %115, i64 %116)
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %3, align 8
  %120 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %121 = call i32 @memcpy(i8* %118, i8* %119, i64 %120)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %130, %105
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 254
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i8*, i8** %4, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @crypto_core_ed25519_add(i8* %126, i8* %127, i8* %128)
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %122

133:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %142, %133
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 8
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8*, i8** %4, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = call i32 @crypto_core_ed25519_add(i8* %138, i8* %139, i8* %140)
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %134

145:                                              ; preds = %134
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = call i64 @crypto_scalarmult_ed25519(i8* %146, i8* %147, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %145
  %154 = load i8*, i8** %4, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %157 = call i64 @memcmp(i8* %154, i8* %155, i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %153
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 @crypto_core_ed25519_is_valid_point(i8* %162)
  %164 = icmp eq i32 %163, 1
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i8*, i8** %3, align 8
  %168 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %169 = call i32 @memset(i8* %167, i32 0, i64 %168)
  %170 = load i8*, i8** %3, align 8
  %171 = call i32 @crypto_core_ed25519_is_valid_point(i8* %170)
  %172 = icmp eq i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load i8*, i8** %3, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 1, i8* %176, align 1
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 @crypto_core_ed25519_is_valid_point(i8* %177)
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  store i8 2, i8* %183, align 1
  %184 = load i8*, i8** %3, align 8
  %185 = call i32 @crypto_core_ed25519_is_valid_point(i8* %184)
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i8*, i8** %3, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  store i8 9, i8* %190, align 1
  %191 = load i8*, i8** %3, align 8
  %192 = call i32 @crypto_core_ed25519_is_valid_point(i8* %191)
  %193 = icmp eq i32 %192, 1
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load i8*, i8** @max_canonical_p, align 8
  %197 = call i32 @crypto_core_ed25519_is_valid_point(i8* %196)
  %198 = icmp eq i32 %197, 1
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i8*, i8** @non_canonical_invalid_p, align 8
  %202 = call i32 @crypto_core_ed25519_is_valid_point(i8* %201)
  %203 = icmp eq i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i8*, i8** @non_canonical_p, align 8
  %207 = call i32 @crypto_core_ed25519_is_valid_point(i8* %206)
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i8*, i8** %4, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %214 = call i32 @memcpy(i8* %211, i8* %212, i64 %213)
  %215 = load i8*, i8** %4, align 8
  %216 = call i32 @add_P(i8* %215)
  %217 = load i8*, i8** %5, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = load i8*, i8** %4, align 8
  %220 = call i32 @crypto_core_ed25519_add(i8* %217, i8* %218, i8* %219)
  %221 = load i8*, i8** %5, align 8
  %222 = load i8*, i8** %5, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = call i32 @crypto_core_ed25519_sub(i8* %221, i8* %222, i8* %223)
  %225 = load i8*, i8** %4, align 8
  %226 = load i8*, i8** %3, align 8
  %227 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %228 = call i64 @memcmp(i8* %225, i8* %226, i64 %227)
  %229 = icmp ne i64 %228, 0
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load i8*, i8** %5, align 8
  %233 = load i8*, i8** %3, align 8
  %234 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %235 = call i64 @memcmp(i8* %232, i8* %233, i64 %234)
  %236 = icmp eq i64 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  store i8 2, i8* %240, align 1
  %241 = load i8*, i8** %5, align 8
  %242 = load i8*, i8** %4, align 8
  %243 = load i8*, i8** %3, align 8
  %244 = call i32 @crypto_core_ed25519_add(i8* %241, i8* %242, i8* %243)
  %245 = icmp eq i32 %244, -1
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load i8*, i8** %5, align 8
  %249 = load i8*, i8** %4, align 8
  %250 = load i8*, i8** @non_canonical_p, align 8
  %251 = call i32 @crypto_core_ed25519_add(i8* %248, i8* %249, i8* %250)
  %252 = icmp eq i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load i8*, i8** %5, align 8
  %256 = load i8*, i8** %4, align 8
  %257 = load i8*, i8** @non_canonical_invalid_p, align 8
  %258 = call i32 @crypto_core_ed25519_add(i8* %255, i8* %256, i8* %257)
  %259 = icmp eq i32 %258, -1
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i8*, i8** %5, align 8
  %263 = load i8*, i8** %3, align 8
  %264 = load i8*, i8** %5, align 8
  %265 = call i32 @crypto_core_ed25519_add(i8* %262, i8* %263, i8* %264)
  %266 = icmp eq i32 %265, -1
  %267 = zext i1 %266 to i32
  %268 = call i32 @assert(i32 %267)
  %269 = load i8*, i8** %5, align 8
  %270 = load i8*, i8** @non_canonical_p, align 8
  %271 = load i8*, i8** %5, align 8
  %272 = call i32 @crypto_core_ed25519_add(i8* %269, i8* %270, i8* %271)
  %273 = icmp eq i32 %272, 0
  %274 = zext i1 %273 to i32
  %275 = call i32 @assert(i32 %274)
  %276 = load i8*, i8** %5, align 8
  %277 = load i8*, i8** @non_canonical_invalid_p, align 8
  %278 = load i8*, i8** %5, align 8
  %279 = call i32 @crypto_core_ed25519_add(i8* %276, i8* %277, i8* %278)
  %280 = icmp eq i32 %279, -1
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load i8*, i8** %5, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = load i8*, i8** %3, align 8
  %286 = call i32 @crypto_core_ed25519_sub(i8* %283, i8* %284, i8* %285)
  %287 = icmp eq i32 %286, -1
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load i8*, i8** %5, align 8
  %291 = load i8*, i8** %4, align 8
  %292 = load i8*, i8** @non_canonical_p, align 8
  %293 = call i32 @crypto_core_ed25519_sub(i8* %290, i8* %291, i8* %292)
  %294 = icmp eq i32 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i32 @assert(i32 %295)
  %297 = load i8*, i8** %5, align 8
  %298 = load i8*, i8** %4, align 8
  %299 = load i8*, i8** @non_canonical_invalid_p, align 8
  %300 = call i32 @crypto_core_ed25519_sub(i8* %297, i8* %298, i8* %299)
  %301 = icmp eq i32 %300, -1
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load i8*, i8** %5, align 8
  %305 = load i8*, i8** %3, align 8
  %306 = load i8*, i8** %5, align 8
  %307 = call i32 @crypto_core_ed25519_sub(i8* %304, i8* %305, i8* %306)
  %308 = icmp eq i32 %307, -1
  %309 = zext i1 %308 to i32
  %310 = call i32 @assert(i32 %309)
  %311 = load i8*, i8** %5, align 8
  %312 = load i8*, i8** @non_canonical_p, align 8
  %313 = load i8*, i8** %5, align 8
  %314 = call i32 @crypto_core_ed25519_sub(i8* %311, i8* %312, i8* %313)
  %315 = icmp eq i32 %314, 0
  %316 = zext i1 %315 to i32
  %317 = call i32 @assert(i32 %316)
  %318 = load i8*, i8** %5, align 8
  %319 = load i8*, i8** @non_canonical_invalid_p, align 8
  %320 = load i8*, i8** %5, align 8
  %321 = call i32 @crypto_core_ed25519_sub(i8* %318, i8* %319, i8* %320)
  %322 = icmp eq i32 %321, -1
  %323 = zext i1 %322 to i32
  %324 = call i32 @assert(i32 %323)
  %325 = load i8*, i8** %6, align 8
  %326 = call i32 @sodium_free(i8* %325)
  %327 = load i8*, i8** %5, align 8
  %328 = call i32 @sodium_free(i8* %327)
  %329 = load i8*, i8** %4, align 8
  %330 = call i32 @sodium_free(i8* %329)
  %331 = load i8*, i8** %3, align 8
  %332 = call i32 @sodium_free(i8* %331)
  %333 = load i8*, i8** %2, align 8
  %334 = call i32 @sodium_free(i8* %333)
  %335 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %336 = call i64 (...) @crypto_core_ed25519_bytes()
  %337 = icmp eq i64 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load i64, i64* @crypto_core_ed25519_UNIFORMBYTES, align 8
  %341 = call i64 (...) @crypto_core_ed25519_uniformbytes()
  %342 = icmp eq i64 %340, %341
  %343 = zext i1 %342 to i32
  %344 = call i32 @assert(i32 %343)
  %345 = load i64, i64* @crypto_core_ed25519_UNIFORMBYTES, align 8
  %346 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %347 = icmp sge i64 %345, %346
  %348 = zext i1 %347 to i32
  %349 = call i32 @assert(i32 %348)
  %350 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i64 @crypto_core_ed25519_from_uniform(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @crypto_core_ed25519_is_valid_point(i8*) #1

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @crypto_core_ed25519_add(i8*, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @crypto_core_ed25519_sub(i8*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @crypto_scalarmult_ed25519(i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_P(i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i64 @crypto_core_ed25519_bytes(...) #1

declare dso_local i64 @crypto_core_ed25519_uniformbytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
