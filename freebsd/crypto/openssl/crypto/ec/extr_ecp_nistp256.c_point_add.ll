; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_point_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_point_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @point_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @point_add(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %41 = load i32, i32* %34, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @felem_shrink(i32 %41, i32 %42)
  %44 = load i32, i32* %34, align 4
  %45 = call i64 @smallfelem_is_zero(i32 %44)
  store i64 %45, i64* %39, align 8
  %46 = load i32, i32* %20, align 4
  %47 = call i64 @smallfelem_is_zero(i32 %46)
  store i64 %47, i64* %40, align 8
  %48 = load i32, i32* %30, align 4
  %49 = load i32, i32* %34, align 4
  %50 = call i32 @smallfelem_square(i32 %48, i32 %49)
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %30, align 4
  %53 = call i32 @felem_reduce(i32 %51, i32 %52)
  %54 = load i32, i32* %32, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @felem_shrink(i32 %54, i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %111, label %59

59:                                               ; preds = %10
  %60 = load i32, i32* %30, align 4
  %61 = load i32, i32* %20, align 4
  %62 = call i32 @smallfelem_square(i32 %60, i32 %61)
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %30, align 4
  %65 = call i32 @felem_reduce(i32 %63, i32 %64)
  %66 = load i32, i32* %33, align 4
  %67 = load i32, i32* %22, align 4
  %68 = call i32 @felem_shrink(i32 %66, i32 %67)
  %69 = load i32, i32* %36, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @felem_shrink(i32 %69, i32 %70)
  %72 = load i32, i32* %30, align 4
  %73 = load i32, i32* %36, align 4
  %74 = load i32, i32* %33, align 4
  %75 = call i32 @smallfelem_mul(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* %30, align 4
  %78 = call i32 @felem_reduce(i32 %76, i32 %77)
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @felem_assign(i32 %79, i32 %80)
  %82 = load i32, i32* %25, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @felem_small_sum(i32 %82, i32 %83)
  %85 = load i32, i32* %30, align 4
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @felem_square(i32 %85, i32 %86)
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %30, align 4
  %90 = call i32 @felem_reduce(i32 %88, i32 %89)
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @felem_sum(i32 %91, i32 %92)
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @felem_diff(i32 %94, i32 %95)
  %97 = load i32, i32* %30, align 4
  %98 = load i32, i32* %33, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @smallfelem_mul(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %30, align 4
  %103 = call i32 @felem_reduce(i32 %101, i32 %102)
  %104 = load i32, i32* %30, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @felem_mul(i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %26, align 4
  %109 = load i32, i32* %30, align 4
  %110 = call i32 @felem_reduce(i32 %108, i32 %109)
  br label %123

111:                                              ; preds = %10
  %112 = load i32, i32* %23, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @felem_assign(i32 %112, i32 %113)
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @felem_assign(i32 %115, i32 %116)
  %118 = load i32, i32* %25, align 4
  %119 = call i32 @felem_scalar(i32 %118, i32 2)
  %120 = load i32, i32* %26, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @felem_assign(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %59
  %124 = load i32, i32* %30, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %32, align 4
  %127 = call i32 @smallfelem_mul(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %30, align 4
  %130 = call i32 @felem_reduce(i32 %128, i32 %129)
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %23, align 4
  %133 = call i32 @felem_diff_zero107(i32 %131, i32 %132)
  %134 = load i32, i32* %35, align 4
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @felem_shrink(i32 %134, i32 %135)
  %137 = load i32, i32* %35, align 4
  %138 = call i64 @smallfelem_is_zero(i32 %137)
  store i64 %138, i64* %37, align 8
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %35, align 4
  %141 = load i32, i32* %25, align 4
  %142 = call i32 @felem_small_mul(i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %30, align 4
  %145 = call i32 @felem_reduce(i32 %143, i32 %144)
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* %32, align 4
  %148 = load i32, i32* %34, align 4
  %149 = call i32 @smallfelem_mul(i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %30, align 4
  %152 = call i32 @felem_reduce(i32 %150, i32 %151)
  %153 = load i32, i32* %30, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @felem_small_mul(i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* %30, align 4
  %159 = call i32 @felem_reduce(i32 %157, i32 %158)
  %160 = load i32, i32* %25, align 4
  %161 = load i32, i32* %26, align 4
  %162 = call i32 @felem_diff_zero107(i32 %160, i32 %161)
  %163 = load i32, i32* %25, align 4
  %164 = call i32 @felem_scalar(i32 %163, i32 2)
  %165 = load i32, i32* %32, align 4
  %166 = load i32, i32* %25, align 4
  %167 = call i32 @felem_shrink(i32 %165, i32 %166)
  %168 = load i32, i32* %32, align 4
  %169 = call i64 @smallfelem_is_zero(i32 %168)
  store i64 %169, i64* %38, align 8
  %170 = load i64, i64* %37, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %123
  %173 = load i64, i64* %38, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load i64, i64* %39, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175
  %179 = load i64, i64* %40, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @point_double(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  br label %284

189:                                              ; preds = %178, %175, %172, %123
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @felem_assign(i32 %190, i32 %191)
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @felem_scalar(i32 %193, i32 2)
  %195 = load i32, i32* %30, align 4
  %196 = load i32, i32* %21, align 4
  %197 = call i32 @felem_square(i32 %195, i32 %196)
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %30, align 4
  %200 = call i32 @felem_reduce(i32 %198, i32 %199)
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* %24, align 4
  %203 = load i32, i32* %21, align 4
  %204 = call i32 @felem_mul(i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %30, align 4
  %207 = call i32 @felem_reduce(i32 %205, i32 %206)
  %208 = load i32, i32* %30, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %21, align 4
  %211 = call i32 @felem_mul(i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* %30, align 4
  %214 = call i32 @felem_reduce(i32 %212, i32 %213)
  %215 = load i32, i32* %30, align 4
  %216 = load i32, i32* %32, align 4
  %217 = call i32 @smallfelem_square(i32 %215, i32 %216)
  %218 = load i32, i32* %27, align 4
  %219 = load i32, i32* %30, align 4
  %220 = call i32 @felem_reduce(i32 %218, i32 %219)
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %24, align 4
  %223 = call i32 @felem_assign(i32 %221, i32 %222)
  %224 = load i32, i32* %24, align 4
  %225 = call i32 @felem_scalar(i32 %224, i32 2)
  %226 = load i32, i32* %24, align 4
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @felem_sum(i32 %226, i32 %227)
  %229 = load i32, i32* %27, align 4
  %230 = load i32, i32* %24, align 4
  %231 = call i32 @felem_diff(i32 %229, i32 %230)
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %27, align 4
  %234 = call i32 @felem_diff_zero107(i32 %232, i32 %233)
  %235 = load i32, i32* %30, align 4
  %236 = load i32, i32* %32, align 4
  %237 = load i32, i32* %23, align 4
  %238 = call i32 @felem_small_mul(i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %31, align 4
  %240 = load i32, i32* %26, align 4
  %241 = load i32, i32* %22, align 4
  %242 = call i32 @felem_mul(i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %31, align 4
  %244 = call i32 @longfelem_scalar(i32 %243, i32 2)
  %245 = load i32, i32* %30, align 4
  %246 = load i32, i32* %31, align 4
  %247 = call i32 @longfelem_diff(i32 %245, i32 %246)
  %248 = load i32, i32* %28, align 4
  %249 = load i32, i32* %30, align 4
  %250 = call i32 @felem_reduce_zero105(i32 %248, i32 %249)
  %251 = load i32, i32* %27, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i64, i64* %39, align 8
  %254 = call i32 @copy_small_conditional(i32 %251, i32 %252, i64 %253)
  %255 = load i32, i32* %27, align 4
  %256 = load i32, i32* %14, align 4
  %257 = load i64, i64* %40, align 8
  %258 = call i32 @copy_conditional(i32 %255, i32 %256, i64 %257)
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %19, align 4
  %261 = load i64, i64* %39, align 8
  %262 = call i32 @copy_small_conditional(i32 %259, i32 %260, i64 %261)
  %263 = load i32, i32* %28, align 4
  %264 = load i32, i32* %15, align 4
  %265 = load i64, i64* %40, align 8
  %266 = call i32 @copy_conditional(i32 %263, i32 %264, i64 %265)
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %20, align 4
  %269 = load i64, i64* %39, align 8
  %270 = call i32 @copy_small_conditional(i32 %267, i32 %268, i64 %269)
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %16, align 4
  %273 = load i64, i64* %40, align 8
  %274 = call i32 @copy_conditional(i32 %271, i32 %272, i64 %273)
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %27, align 4
  %277 = call i32 @felem_assign(i32 %275, i32 %276)
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %28, align 4
  %280 = call i32 @felem_assign(i32 %278, i32 %279)
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %29, align 4
  %283 = call i32 @felem_assign(i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %189, %181
  ret void
}

declare dso_local i32 @felem_shrink(i32, i32) #1

declare dso_local i64 @smallfelem_is_zero(i32) #1

declare dso_local i32 @smallfelem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @smallfelem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

declare dso_local i32 @felem_small_sum(i32, i32) #1

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_sum(i32, i32) #1

declare dso_local i32 @felem_diff(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_scalar(i32, i32) #1

declare dso_local i32 @felem_diff_zero107(i32, i32) #1

declare dso_local i32 @felem_small_mul(i32, i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @longfelem_scalar(i32, i32) #1

declare dso_local i32 @longfelem_diff(i32, i32) #1

declare dso_local i32 @felem_reduce_zero105(i32, i32) #1

declare dso_local i32 @copy_small_conditional(i32, i32, i64) #1

declare dso_local i32 @copy_conditional(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
