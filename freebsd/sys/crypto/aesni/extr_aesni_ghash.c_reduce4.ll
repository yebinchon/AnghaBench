; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_ghash.c_reduce4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_ghash.c_reduce4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32*)* @reduce4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduce4(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
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
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @_mm_clmulepi64_si128(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @_mm_clmulepi64_si128(i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @_mm_clmulepi64_si128(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %23, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @_mm_clmulepi64_si128(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %21, align 4
  %53 = call i32 @_mm_xor_si128(i32 %51, i32 %52)
  store i32 %53, i32* %27, align 4
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %23, align 4
  %56 = call i32 @_mm_xor_si128(i32 %54, i32 %55)
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %27, align 4
  %58 = load i32, i32* %25, align 4
  %59 = call i32 @_mm_xor_si128(i32 %57, i32 %58)
  store i32 %59, i32* %27, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @_mm_clmulepi64_si128(i32 %60, i32 %61, i32 17)
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @_mm_clmulepi64_si128(i32 %63, i32 %64, i32 17)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @_mm_clmulepi64_si128(i32 %66, i32 %67, i32 17)
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @_mm_clmulepi64_si128(i32 %69, i32 %70, i32 17)
  store i32 %71, i32* %26, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @_mm_xor_si128(i32 %72, i32 %73)
  store i32 %74, i32* %28, align 4
  %75 = load i32, i32* %28, align 4
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @_mm_xor_si128(i32 %75, i32 %76)
  store i32 %77, i32* %28, align 4
  %78 = load i32, i32* %28, align 4
  %79 = load i32, i32* %26, align 4
  %80 = call i32 @_mm_xor_si128(i32 %78, i32 %79)
  store i32 %80, i32* %28, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @_mm_shuffle_epi32(i32 %81, i32 78)
  store i32 %82, i32* %29, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @_mm_shuffle_epi32(i32 %83, i32 78)
  store i32 %84, i32* %33, align 4
  %85 = load i32, i32* %29, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @_mm_xor_si128(i32 %85, i32 %86)
  store i32 %87, i32* %29, align 4
  %88 = load i32, i32* %33, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @_mm_xor_si128(i32 %88, i32 %89)
  store i32 %90, i32* %33, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @_mm_shuffle_epi32(i32 %91, i32 78)
  store i32 %92, i32* %30, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @_mm_shuffle_epi32(i32 %93, i32 78)
  store i32 %94, i32* %34, align 4
  %95 = load i32, i32* %30, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @_mm_xor_si128(i32 %95, i32 %96)
  store i32 %97, i32* %30, align 4
  %98 = load i32, i32* %34, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @_mm_xor_si128(i32 %98, i32 %99)
  store i32 %100, i32* %34, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @_mm_shuffle_epi32(i32 %101, i32 78)
  store i32 %102, i32* %31, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @_mm_shuffle_epi32(i32 %103, i32 78)
  store i32 %104, i32* %35, align 4
  %105 = load i32, i32* %31, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @_mm_xor_si128(i32 %105, i32 %106)
  store i32 %107, i32* %31, align 4
  %108 = load i32, i32* %35, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @_mm_xor_si128(i32 %108, i32 %109)
  store i32 %110, i32* %35, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @_mm_shuffle_epi32(i32 %111, i32 78)
  store i32 %112, i32* %32, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @_mm_shuffle_epi32(i32 %113, i32 78)
  store i32 %114, i32* %36, align 4
  %115 = load i32, i32* %32, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @_mm_xor_si128(i32 %115, i32 %116)
  store i32 %117, i32* %32, align 4
  %118 = load i32, i32* %36, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @_mm_xor_si128(i32 %118, i32 %119)
  store i32 %120, i32* %36, align 4
  %121 = load i32, i32* %29, align 4
  %122 = load i32, i32* %33, align 4
  %123 = call i32 @_mm_clmulepi64_si128(i32 %121, i32 %122, i32 0)
  store i32 %123, i32* %29, align 4
  %124 = load i32, i32* %30, align 4
  %125 = load i32, i32* %34, align 4
  %126 = call i32 @_mm_clmulepi64_si128(i32 %124, i32 %125, i32 0)
  store i32 %126, i32* %30, align 4
  %127 = load i32, i32* %31, align 4
  %128 = load i32, i32* %35, align 4
  %129 = call i32 @_mm_clmulepi64_si128(i32 %127, i32 %128, i32 0)
  store i32 %129, i32* %31, align 4
  %130 = load i32, i32* %32, align 4
  %131 = load i32, i32* %36, align 4
  %132 = call i32 @_mm_clmulepi64_si128(i32 %130, i32 %131, i32 0)
  store i32 %132, i32* %32, align 4
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* %27, align 4
  %135 = call i32 @_mm_xor_si128(i32 %133, i32 %134)
  store i32 %135, i32* %29, align 4
  %136 = load i32, i32* %29, align 4
  %137 = load i32, i32* %28, align 4
  %138 = call i32 @_mm_xor_si128(i32 %136, i32 %137)
  store i32 %138, i32* %29, align 4
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %29, align 4
  %141 = call i32 @_mm_xor_si128(i32 %139, i32 %140)
  store i32 %141, i32* %29, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %29, align 4
  %144 = call i32 @_mm_xor_si128(i32 %142, i32 %143)
  store i32 %144, i32* %29, align 4
  %145 = load i32, i32* %32, align 4
  %146 = load i32, i32* %29, align 4
  %147 = call i32 @_mm_xor_si128(i32 %145, i32 %146)
  store i32 %147, i32* %29, align 4
  %148 = load i32, i32* %29, align 4
  %149 = call i32 @_mm_slli_si128(i32 %148, i32 8)
  store i32 %149, i32* %33, align 4
  %150 = load i32, i32* %29, align 4
  %151 = call i32 @_mm_srli_si128(i32 %150, i32 8)
  store i32 %151, i32* %29, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %27, align 4
  %154 = call i32 @_mm_xor_si128(i32 %152, i32 %153)
  store i32 %154, i32* %27, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %28, align 4
  %157 = call i32 @_mm_xor_si128(i32 %155, i32 %156)
  store i32 %157, i32* %28, align 4
  %158 = load i32, i32* %27, align 4
  store i32 %158, i32* %32, align 4
  %159 = load i32, i32* %28, align 4
  store i32 %159, i32* %35, align 4
  %160 = load i32, i32* %32, align 4
  %161 = call i32 @_mm_srli_epi32(i32 %160, i32 31)
  store i32 %161, i32* %36, align 4
  %162 = load i32, i32* %35, align 4
  %163 = call i32 @_mm_srli_epi32(i32 %162, i32 31)
  store i32 %163, i32* %37, align 4
  %164 = load i32, i32* %32, align 4
  %165 = call i32 @_mm_slli_epi32(i32 %164, i32 1)
  store i32 %165, i32* %32, align 4
  %166 = load i32, i32* %35, align 4
  %167 = call i32 @_mm_slli_epi32(i32 %166, i32 1)
  store i32 %167, i32* %35, align 4
  %168 = load i32, i32* %36, align 4
  %169 = call i32 @_mm_srli_si128(i32 %168, i32 12)
  store i32 %169, i32* %38, align 4
  %170 = load i32, i32* %37, align 4
  %171 = call i32 @_mm_slli_si128(i32 %170, i32 4)
  store i32 %171, i32* %37, align 4
  %172 = load i32, i32* %36, align 4
  %173 = call i32 @_mm_slli_si128(i32 %172, i32 4)
  store i32 %173, i32* %36, align 4
  %174 = load i32, i32* %32, align 4
  %175 = load i32, i32* %36, align 4
  %176 = call i32 @_mm_or_si128(i32 %174, i32 %175)
  store i32 %176, i32* %32, align 4
  %177 = load i32, i32* %35, align 4
  %178 = load i32, i32* %37, align 4
  %179 = call i32 @_mm_or_si128(i32 %177, i32 %178)
  store i32 %179, i32* %35, align 4
  %180 = load i32, i32* %35, align 4
  %181 = load i32, i32* %38, align 4
  %182 = call i32 @_mm_or_si128(i32 %180, i32 %181)
  store i32 %182, i32* %35, align 4
  %183 = load i32, i32* %32, align 4
  %184 = call i32 @_mm_slli_epi32(i32 %183, i32 31)
  store i32 %184, i32* %36, align 4
  %185 = load i32, i32* %32, align 4
  %186 = call i32 @_mm_slli_epi32(i32 %185, i32 30)
  store i32 %186, i32* %37, align 4
  %187 = load i32, i32* %32, align 4
  %188 = call i32 @_mm_slli_epi32(i32 %187, i32 25)
  store i32 %188, i32* %38, align 4
  %189 = load i32, i32* %36, align 4
  %190 = load i32, i32* %37, align 4
  %191 = call i32 @_mm_xor_si128(i32 %189, i32 %190)
  store i32 %191, i32* %36, align 4
  %192 = load i32, i32* %36, align 4
  %193 = load i32, i32* %38, align 4
  %194 = call i32 @_mm_xor_si128(i32 %192, i32 %193)
  store i32 %194, i32* %36, align 4
  %195 = load i32, i32* %36, align 4
  %196 = call i32 @_mm_srli_si128(i32 %195, i32 4)
  store i32 %196, i32* %37, align 4
  %197 = load i32, i32* %36, align 4
  %198 = call i32 @_mm_slli_si128(i32 %197, i32 12)
  store i32 %198, i32* %36, align 4
  %199 = load i32, i32* %32, align 4
  %200 = load i32, i32* %36, align 4
  %201 = call i32 @_mm_xor_si128(i32 %199, i32 %200)
  store i32 %201, i32* %32, align 4
  %202 = load i32, i32* %32, align 4
  %203 = call i32 @_mm_srli_epi32(i32 %202, i32 1)
  store i32 %203, i32* %31, align 4
  %204 = load i32, i32* %32, align 4
  %205 = call i32 @_mm_srli_epi32(i32 %204, i32 2)
  store i32 %205, i32* %33, align 4
  %206 = load i32, i32* %32, align 4
  %207 = call i32 @_mm_srli_epi32(i32 %206, i32 7)
  store i32 %207, i32* %34, align 4
  %208 = load i32, i32* %31, align 4
  %209 = load i32, i32* %33, align 4
  %210 = call i32 @_mm_xor_si128(i32 %208, i32 %209)
  store i32 %210, i32* %31, align 4
  %211 = load i32, i32* %31, align 4
  %212 = load i32, i32* %34, align 4
  %213 = call i32 @_mm_xor_si128(i32 %211, i32 %212)
  store i32 %213, i32* %31, align 4
  %214 = load i32, i32* %31, align 4
  %215 = load i32, i32* %37, align 4
  %216 = call i32 @_mm_xor_si128(i32 %214, i32 %215)
  store i32 %216, i32* %31, align 4
  %217 = load i32, i32* %32, align 4
  %218 = load i32, i32* %31, align 4
  %219 = call i32 @_mm_xor_si128(i32 %217, i32 %218)
  store i32 %219, i32* %32, align 4
  %220 = load i32, i32* %35, align 4
  %221 = load i32, i32* %32, align 4
  %222 = call i32 @_mm_xor_si128(i32 %220, i32 %221)
  store i32 %222, i32* %35, align 4
  %223 = load i32, i32* %35, align 4
  %224 = load i32*, i32** %18, align 8
  store i32 %223, i32* %224, align 4
  ret void
}

declare dso_local i32 @_mm_clmulepi64_si128(i32, i32, i32) #1

declare dso_local i32 @_mm_xor_si128(i32, i32) #1

declare dso_local i32 @_mm_shuffle_epi32(i32, i32) #1

declare dso_local i32 @_mm_slli_si128(i32, i32) #1

declare dso_local i32 @_mm_srli_si128(i32, i32) #1

declare dso_local i32 @_mm_srli_epi32(i32, i32) #1

declare dso_local i32 @_mm_slli_epi32(i32, i32) #1

declare dso_local i32 @_mm_or_si128(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
