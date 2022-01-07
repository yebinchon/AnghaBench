; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/hsalsa20/ref2/extr_core_hsalsa20_ref2.c_crypto_core_hsalsa20.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/hsalsa20/ref2/extr_core_hsalsa20_ref2.c_crypto_core_hsalsa20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROUNDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_core_hsalsa20(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = call i32 @U32C(i32 1634760805)
  store i32 %29, i32* %9, align 4
  %30 = call i32 @U32C(i32 857760878)
  store i32 %30, i32* %14, align 4
  %31 = call i32 @U32C(i32 2036477234)
  store i32 %31, i32* %19, align 4
  %32 = call i32 @U32C(i32 1797285236)
  store i32 %32, i32* %24, align 4
  br label %46

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = call i32 @LOAD32_LE(i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = call i32 @LOAD32_LE(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  %42 = call i32 @LOAD32_LE(i8* %41)
  store i32 %42, i32* %19, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 12
  %45 = call i32 @LOAD32_LE(i8* %44)
  store i32 %45, i32* %24, align 4
  br label %46

46:                                               ; preds = %33, %28
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = call i32 @LOAD32_LE(i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = call i32 @LOAD32_LE(i8* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @LOAD32_LE(i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 12
  %58 = call i32 @LOAD32_LE(i8* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 16
  %61 = call i32 @LOAD32_LE(i8* %60)
  store i32 %61, i32* %20, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 20
  %64 = call i32 @LOAD32_LE(i8* %63)
  store i32 %64, i32* %21, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 24
  %67 = call i32 @LOAD32_LE(i8* %66)
  store i32 %67, i32* %22, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 28
  %70 = call i32 @LOAD32_LE(i8* %69)
  store i32 %70, i32* %23, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = call i32 @LOAD32_LE(i8* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = call i32 @LOAD32_LE(i8* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 8
  %79 = call i32 @LOAD32_LE(i8* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  %82 = call i32 @LOAD32_LE(i8* %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* @ROUNDS, align 4
  store i32 %83, i32* %25, align 4
  br label %84

84:                                               ; preds = %280, %46
  %85 = load i32, i32* %25, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %283

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @ROTL32(i32 %90, i32 7)
  %92 = load i32, i32* %13, align 4
  %93 = xor i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @ROTL32(i32 %96, i32 9)
  %98 = load i32, i32* %17, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @ROTL32(i32 %102, i32 13)
  %104 = load i32, i32* %21, align 4
  %105 = xor i32 %104, %103
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @ROTL32(i32 %108, i32 18)
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i32 @ROTL32(i32 %114, i32 7)
  %116 = load i32, i32* %18, align 4
  %117 = xor i32 %116, %115
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @ROTL32(i32 %120, i32 9)
  %122 = load i32, i32* %22, align 4
  %123 = xor i32 %122, %121
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @ROTL32(i32 %126, i32 13)
  %128 = load i32, i32* %10, align 4
  %129 = xor i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %130, %131
  %133 = call i32 @ROTL32(i32 %132, i32 18)
  %134 = load i32, i32* %14, align 4
  %135 = xor i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 @ROTL32(i32 %138, i32 7)
  %140 = load i32, i32* %23, align 4
  %141 = xor i32 %140, %139
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %142, %143
  %145 = call i32 @ROTL32(i32 %144, i32 9)
  %146 = load i32, i32* %11, align 4
  %147 = xor i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %23, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @ROTL32(i32 %150, i32 13)
  %152 = load i32, i32* %15, align 4
  %153 = xor i32 %152, %151
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @ROTL32(i32 %156, i32 18)
  %158 = load i32, i32* %19, align 4
  %159 = xor i32 %158, %157
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 @ROTL32(i32 %162, i32 7)
  %164 = load i32, i32* %12, align 4
  %165 = xor i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %24, align 4
  %168 = add nsw i32 %166, %167
  %169 = call i32 @ROTL32(i32 %168, i32 9)
  %170 = load i32, i32* %16, align 4
  %171 = xor i32 %170, %169
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %172, %173
  %175 = call i32 @ROTL32(i32 %174, i32 13)
  %176 = load i32, i32* %20, align 4
  %177 = xor i32 %176, %175
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %178, %179
  %181 = call i32 @ROTL32(i32 %180, i32 18)
  %182 = load i32, i32* %24, align 4
  %183 = xor i32 %182, %181
  store i32 %183, i32* %24, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @ROTL32(i32 %186, i32 7)
  %188 = load i32, i32* %10, align 4
  %189 = xor i32 %188, %187
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i32 @ROTL32(i32 %192, i32 9)
  %194 = load i32, i32* %11, align 4
  %195 = xor i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i32 @ROTL32(i32 %198, i32 13)
  %200 = load i32, i32* %12, align 4
  %201 = xor i32 %200, %199
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %202, %203
  %205 = call i32 @ROTL32(i32 %204, i32 18)
  %206 = load i32, i32* %9, align 4
  %207 = xor i32 %206, %205
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %208, %209
  %211 = call i32 @ROTL32(i32 %210, i32 7)
  %212 = load i32, i32* %15, align 4
  %213 = xor i32 %212, %211
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %214, %215
  %217 = call i32 @ROTL32(i32 %216, i32 9)
  %218 = load i32, i32* %16, align 4
  %219 = xor i32 %218, %217
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %220, %221
  %223 = call i32 @ROTL32(i32 %222, i32 13)
  %224 = load i32, i32* %13, align 4
  %225 = xor i32 %224, %223
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %226, %227
  %229 = call i32 @ROTL32(i32 %228, i32 18)
  %230 = load i32, i32* %14, align 4
  %231 = xor i32 %230, %229
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %18, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @ROTL32(i32 %234, i32 7)
  %236 = load i32, i32* %20, align 4
  %237 = xor i32 %236, %235
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %19, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i32 @ROTL32(i32 %240, i32 9)
  %242 = load i32, i32* %17, align 4
  %243 = xor i32 %242, %241
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %20, align 4
  %246 = add nsw i32 %244, %245
  %247 = call i32 @ROTL32(i32 %246, i32 13)
  %248 = load i32, i32* %18, align 4
  %249 = xor i32 %248, %247
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %250, %251
  %253 = call i32 @ROTL32(i32 %252, i32 18)
  %254 = load i32, i32* %19, align 4
  %255 = xor i32 %254, %253
  store i32 %255, i32* %19, align 4
  %256 = load i32, i32* %24, align 4
  %257 = load i32, i32* %23, align 4
  %258 = add nsw i32 %256, %257
  %259 = call i32 @ROTL32(i32 %258, i32 7)
  %260 = load i32, i32* %21, align 4
  %261 = xor i32 %260, %259
  store i32 %261, i32* %21, align 4
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %24, align 4
  %264 = add nsw i32 %262, %263
  %265 = call i32 @ROTL32(i32 %264, i32 9)
  %266 = load i32, i32* %22, align 4
  %267 = xor i32 %266, %265
  store i32 %267, i32* %22, align 4
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %21, align 4
  %270 = add nsw i32 %268, %269
  %271 = call i32 @ROTL32(i32 %270, i32 13)
  %272 = load i32, i32* %23, align 4
  %273 = xor i32 %272, %271
  store i32 %273, i32* %23, align 4
  %274 = load i32, i32* %23, align 4
  %275 = load i32, i32* %22, align 4
  %276 = add nsw i32 %274, %275
  %277 = call i32 @ROTL32(i32 %276, i32 18)
  %278 = load i32, i32* %24, align 4
  %279 = xor i32 %278, %277
  store i32 %279, i32* %24, align 4
  br label %280

280:                                              ; preds = %87
  %281 = load i32, i32* %25, align 4
  %282 = sub nsw i32 %281, 2
  store i32 %282, i32* %25, align 4
  br label %84

283:                                              ; preds = %84
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 0
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @STORE32_LE(i8* %285, i32 %286)
  %288 = load i8*, i8** %5, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 4
  %290 = load i32, i32* %14, align 4
  %291 = call i32 @STORE32_LE(i8* %289, i32 %290)
  %292 = load i8*, i8** %5, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 8
  %294 = load i32, i32* %19, align 4
  %295 = call i32 @STORE32_LE(i8* %293, i32 %294)
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 12
  %298 = load i32, i32* %24, align 4
  %299 = call i32 @STORE32_LE(i8* %297, i32 %298)
  %300 = load i8*, i8** %5, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 16
  %302 = load i32, i32* %15, align 4
  %303 = call i32 @STORE32_LE(i8* %301, i32 %302)
  %304 = load i8*, i8** %5, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 20
  %306 = load i32, i32* %16, align 4
  %307 = call i32 @STORE32_LE(i8* %305, i32 %306)
  %308 = load i8*, i8** %5, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 24
  %310 = load i32, i32* %17, align 4
  %311 = call i32 @STORE32_LE(i8* %309, i32 %310)
  %312 = load i8*, i8** %5, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 28
  %314 = load i32, i32* %18, align 4
  %315 = call i32 @STORE32_LE(i8* %313, i32 %314)
  ret i32 0
}

declare dso_local i32 @U32C(i32) #1

declare dso_local i32 @LOAD32_LE(i8*) #1

declare dso_local i32 @ROTL32(i32, i32) #1

declare dso_local i32 @STORE32_LE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
