; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_point_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_point_add.c"
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
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
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
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @felem_is_zero(i32 %36)
  store i64 %37, i64* %34, align 8
  %38 = load i32, i32* %20, align 4
  %39 = call i64 @felem_is_zero(i32 %38)
  store i64 %39, i64* %35, align 8
  %40 = load i32, i32* %30, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @felem_square(i32 %40, i32 %41)
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %30, align 4
  %45 = call i32 @felem_reduce(i32 %43, i32 %44)
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %94, label %48

48:                                               ; preds = %10
  %49 = load i32, i32* %30, align 4
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @felem_square(i32 %49, i32 %50)
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %30, align 4
  %54 = call i32 @felem_reduce(i32 %52, i32 %53)
  %55 = load i32, i32* %30, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %22, align 4
  %58 = call i32 @felem_mul(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %30, align 4
  %61 = call i32 @felem_reduce(i32 %59, i32 %60)
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @felem_assign(i32 %62, i32 %63)
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @felem_sum64(i32 %65, i32 %66)
  %68 = load i32, i32* %30, align 4
  %69 = load i32, i32* %25, align 4
  %70 = call i32 @felem_square(i32 %68, i32 %69)
  %71 = load i32, i32* %30, align 4
  %72 = load i32, i32* %21, align 4
  %73 = call i32 @felem_diff_128_64(i32 %71, i32 %72)
  %74 = load i32, i32* %30, align 4
  %75 = load i32, i32* %22, align 4
  %76 = call i32 @felem_diff_128_64(i32 %74, i32 %75)
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* %30, align 4
  %79 = call i32 @felem_reduce(i32 %77, i32 %78)
  %80 = load i32, i32* %30, align 4
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @felem_mul(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %30, align 4
  %86 = call i32 @felem_reduce(i32 %84, i32 %85)
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %22, align 4
  %90 = call i32 @felem_mul(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* %30, align 4
  %93 = call i32 @felem_reduce(i32 %91, i32 %92)
  br label %104

94:                                               ; preds = %10
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @felem_assign(i32 %95, i32 %96)
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @felem_scalar(i32 %98, i32 %99, i32 2)
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @felem_assign(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %94, %48
  %105 = load i32, i32* %30, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @felem_mul(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %23, align 4
  %111 = call i32 @felem_diff_128_64(i32 %109, i32 %110)
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %30, align 4
  %114 = call i32 @felem_reduce(i32 %112, i32 %113)
  %115 = load i32, i32* %24, align 4
  %116 = call i64 @felem_is_zero(i32 %115)
  store i64 %116, i64* %32, align 8
  %117 = load i32, i32* %30, align 4
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %24, align 4
  %120 = call i32 @felem_mul(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %29, align 4
  %122 = load i32, i32* %30, align 4
  %123 = call i32 @felem_reduce(i32 %121, i32 %122)
  %124 = load i32, i32* %30, align 4
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @felem_mul(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %30, align 4
  %130 = call i32 @felem_reduce(i32 %128, i32 %129)
  %131 = load i32, i32* %30, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %21, align 4
  %134 = call i32 @felem_mul(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %30, align 4
  %136 = load i32, i32* %26, align 4
  %137 = call i32 @felem_diff_128_64(i32 %135, i32 %136)
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* %30, align 4
  %140 = call i32 @felem_reduce(i32 %138, i32 %139)
  %141 = load i32, i32* %25, align 4
  %142 = call i64 @felem_is_zero(i32 %141)
  store i64 %142, i64* %33, align 8
  %143 = load i32, i32* %25, align 4
  %144 = call i32 @felem_scalar64(i32 %143, i32 2)
  %145 = load i64, i64* %32, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %104
  %148 = load i64, i64* %33, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i64, i64* %34, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %35, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %16, align 4
  %163 = call i32 @point_double(i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  br label %259

164:                                              ; preds = %153, %150, %147, %104
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %24, align 4
  %167 = call i32 @felem_assign(i32 %165, i32 %166)
  %168 = load i32, i32* %21, align 4
  %169 = call i32 @felem_scalar64(i32 %168, i32 2)
  %170 = load i32, i32* %30, align 4
  %171 = load i32, i32* %21, align 4
  %172 = call i32 @felem_square(i32 %170, i32 %171)
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %30, align 4
  %175 = call i32 @felem_reduce(i32 %173, i32 %174)
  %176 = load i32, i32* %30, align 4
  %177 = load i32, i32* %24, align 4
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @felem_mul(i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %30, align 4
  %182 = call i32 @felem_reduce(i32 %180, i32 %181)
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %21, align 4
  %186 = call i32 @felem_mul(i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* %30, align 4
  %189 = call i32 @felem_reduce(i32 %187, i32 %188)
  %190 = load i32, i32* %30, align 4
  %191 = load i32, i32* %25, align 4
  %192 = call i32 @felem_square(i32 %190, i32 %191)
  %193 = load i32, i32* %30, align 4
  %194 = load i32, i32* %22, align 4
  %195 = call i32 @felem_diff_128_64(i32 %193, i32 %194)
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %24, align 4
  %198 = call i32 @felem_assign(i32 %196, i32 %197)
  %199 = load i32, i32* %24, align 4
  %200 = call i32 @felem_scalar64(i32 %199, i32 2)
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* %24, align 4
  %203 = call i32 @felem_diff_128_64(i32 %201, i32 %202)
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %30, align 4
  %206 = call i32 @felem_reduce(i32 %204, i32 %205)
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %27, align 4
  %209 = call i32 @felem_diff64(i32 %207, i32 %208)
  %210 = load i32, i32* %30, align 4
  %211 = load i32, i32* %25, align 4
  %212 = load i32, i32* %23, align 4
  %213 = call i32 @felem_mul(i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %31, align 4
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %22, align 4
  %217 = call i32 @felem_mul(i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %31, align 4
  %219 = call i32 @felem_scalar128(i32 %218, i32 2)
  %220 = load i32, i32* %30, align 4
  %221 = load i32, i32* %31, align 4
  %222 = call i32 @felem_diff128(i32 %220, i32 %221)
  %223 = load i32, i32* %28, align 4
  %224 = load i32, i32* %30, align 4
  %225 = call i32 @felem_reduce(i32 %223, i32 %224)
  %226 = load i32, i32* %27, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i64, i64* %34, align 8
  %229 = call i32 @copy_conditional(i32 %226, i32 %227, i64 %228)
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i64, i64* %35, align 8
  %233 = call i32 @copy_conditional(i32 %230, i32 %231, i64 %232)
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i64, i64* %34, align 8
  %237 = call i32 @copy_conditional(i32 %234, i32 %235, i64 %236)
  %238 = load i32, i32* %28, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i64, i64* %35, align 8
  %241 = call i32 @copy_conditional(i32 %238, i32 %239, i64 %240)
  %242 = load i32, i32* %29, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i64, i64* %34, align 8
  %245 = call i32 @copy_conditional(i32 %242, i32 %243, i64 %244)
  %246 = load i32, i32* %29, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i64, i64* %35, align 8
  %249 = call i32 @copy_conditional(i32 %246, i32 %247, i64 %248)
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %27, align 4
  %252 = call i32 @felem_assign(i32 %250, i32 %251)
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %28, align 4
  %255 = call i32 @felem_assign(i32 %253, i32 %254)
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %29, align 4
  %258 = call i32 @felem_assign(i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %164, %156
  ret void
}

declare dso_local i64 @felem_is_zero(i32) #1

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

declare dso_local i32 @felem_sum64(i32, i32) #1

declare dso_local i32 @felem_diff_128_64(i32, i32) #1

declare dso_local i32 @felem_scalar(i32, i32, i32) #1

declare dso_local i32 @felem_scalar64(i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @felem_diff64(i32, i32) #1

declare dso_local i32 @felem_scalar128(i32, i32) #1

declare dso_local i32 @felem_diff128(i32, i32) #1

declare dso_local i32 @copy_conditional(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
