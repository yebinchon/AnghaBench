; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pbe_scrypt.c_salsa208_word_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pbe_scrypt.c_salsa208_word_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @salsa208_word_specification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salsa208_word_specification(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @memcpy(i32* %5, i32* %6, i32 64)
  store i32 8, i32* %3, align 4
  br label %8

8:                                                ; preds = %300, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %303

11:                                               ; preds = %8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %13 = load i32, i32* %12, align 16
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %15 = load i32, i32* %14, align 16
  %16 = add nsw i32 %13, %15
  %17 = call i32 @R(i32 %16, i32 7)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %19 = load i32, i32* %18, align 16
  %20 = xor i32 %19, %17
  store i32 %20, i32* %18, align 16
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %22 = load i32, i32* %21, align 16
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = add nsw i32 %22, %24
  %26 = call i32 @R(i32 %25, i32 9)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %28 = load i32, i32* %27, align 16
  %29 = xor i32 %28, %26
  store i32 %29, i32* %27, align 16
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %31 = load i32, i32* %30, align 16
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %33 = load i32, i32* %32, align 16
  %34 = add nsw i32 %31, %33
  %35 = call i32 @R(i32 %34, i32 13)
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %37 = load i32, i32* %36, align 16
  %38 = xor i32 %37, %35
  store i32 %38, i32* %36, align 16
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %40 = load i32, i32* %39, align 16
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %42 = load i32, i32* %41, align 16
  %43 = add nsw i32 %40, %42
  %44 = call i32 @R(i32 %43, i32 18)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = xor i32 %46, %44
  store i32 %47, i32* %45, align 16
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = call i32 @R(i32 %52, i32 7)
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  %62 = call i32 @R(i32 %61, i32 9)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %67, %69
  %71 = call i32 @R(i32 %70, i32 13)
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %76, %78
  %80 = call i32 @R(i32 %79, i32 18)
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %85, %87
  %89 = call i32 @R(i32 %88, i32 7)
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %91 = load i32, i32* %90, align 8
  %92 = xor i32 %91, %89
  store i32 %92, i32* %90, align 8
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %94, %96
  %98 = call i32 @R(i32 %97, i32 9)
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %100 = load i32, i32* %99, align 8
  %101 = xor i32 %100, %98
  store i32 %101, i32* %99, align 8
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %103, %105
  %107 = call i32 @R(i32 %106, i32 13)
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %109, %107
  store i32 %110, i32* %108, align 8
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %112, %114
  %116 = call i32 @R(i32 %115, i32 18)
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %118 = load i32, i32* %117, align 8
  %119 = xor i32 %118, %116
  store i32 %119, i32* %117, align 8
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %121, %123
  %125 = call i32 @R(i32 %124, i32 7)
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %130, %132
  %134 = call i32 @R(i32 %133, i32 9)
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %139, %141
  %143 = call i32 @R(i32 %142, i32 13)
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, %143
  store i32 %146, i32* %144, align 4
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %148, %150
  %152 = call i32 @R(i32 %151, i32 18)
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %154, %152
  store i32 %155, i32* %153, align 4
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %157, %159
  %161 = call i32 @R(i32 %160, i32 7)
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = add nsw i32 %166, %168
  %170 = call i32 @R(i32 %169, i32 9)
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %172 = load i32, i32* %171, align 8
  %173 = xor i32 %172, %170
  store i32 %173, i32* %171, align 8
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %175, %177
  %179 = call i32 @R(i32 %178, i32 13)
  %180 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, %179
  store i32 %182, i32* %180, align 4
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %184, %186
  %188 = call i32 @R(i32 %187, i32 18)
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = xor i32 %190, %188
  store i32 %191, i32* %189, align 16
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %195 = load i32, i32* %194, align 16
  %196 = add nsw i32 %193, %195
  %197 = call i32 @R(i32 %196, i32 7)
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %199 = load i32, i32* %198, align 8
  %200 = xor i32 %199, %197
  store i32 %200, i32* %198, align 8
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %202, %204
  %206 = call i32 @R(i32 %205, i32 9)
  %207 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %208, %206
  store i32 %209, i32* %207, align 4
  %210 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %211, %213
  %215 = call i32 @R(i32 %214, i32 13)
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %217 = load i32, i32* %216, align 16
  %218 = xor i32 %217, %215
  store i32 %218, i32* %216, align 16
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %220 = load i32, i32* %219, align 16
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %220, %222
  %224 = call i32 @R(i32 %223, i32 18)
  %225 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %226, %224
  store i32 %227, i32* %225, align 4
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %229, %231
  %233 = call i32 @R(i32 %232, i32 7)
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %235 = load i32, i32* %234, align 4
  %236 = xor i32 %235, %233
  store i32 %236, i32* %234, align 4
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %238, %240
  %242 = call i32 @R(i32 %241, i32 9)
  %243 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %244 = load i32, i32* %243, align 16
  %245 = xor i32 %244, %242
  store i32 %245, i32* %243, align 16
  %246 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %247 = load i32, i32* %246, align 16
  %248 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %247, %249
  %251 = call i32 @R(i32 %250, i32 13)
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %253, %251
  store i32 %254, i32* %252, align 4
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %258 = load i32, i32* %257, align 16
  %259 = add nsw i32 %256, %258
  %260 = call i32 @R(i32 %259, i32 18)
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %262 = load i32, i32* %261, align 8
  %263 = xor i32 %262, %260
  store i32 %263, i32* %261, align 8
  %264 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %265, %267
  %269 = call i32 @R(i32 %268, i32 7)
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %271 = load i32, i32* %270, align 16
  %272 = xor i32 %271, %269
  store i32 %272, i32* %270, align 16
  %273 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %274 = load i32, i32* %273, align 16
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %274, %276
  %278 = call i32 @R(i32 %277, i32 9)
  %279 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %280 = load i32, i32* %279, align 4
  %281 = xor i32 %280, %278
  store i32 %281, i32* %279, align 4
  %282 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %285 = load i32, i32* %284, align 16
  %286 = add nsw i32 %283, %285
  %287 = call i32 @R(i32 %286, i32 13)
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %289 = load i32, i32* %288, align 8
  %290 = xor i32 %289, %287
  store i32 %290, i32* %288, align 8
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %292 = load i32, i32* %291, align 8
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %292, %294
  %296 = call i32 @R(i32 %295, i32 18)
  %297 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %298 = load i32, i32* %297, align 4
  %299 = xor i32 %298, %296
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %11
  %301 = load i32, i32* %3, align 4
  %302 = sub nsw i32 %301, 2
  store i32 %302, i32* %3, align 4
  br label %8

303:                                              ; preds = %8
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %318, %303
  %305 = load i32, i32* %3, align 4
  %306 = icmp slt i32 %305, 16
  br i1 %306, label %307, label %321

307:                                              ; preds = %304
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %2, align 8
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %311
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %307
  %319 = load i32, i32* %3, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %3, align 4
  br label %304

321:                                              ; preds = %304
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %323 = call i32 @OPENSSL_cleanse(i32* %322, i32 64)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R(i32, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
