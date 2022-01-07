; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_ghash.c_gfmul.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_ghash.c_gfmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @gfmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfmul(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @_mm_clmulepi64_si128(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @_mm_clmulepi64_si128(i32 %18, i32 %19, i32 16)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @_mm_clmulepi64_si128(i32 %21, i32 %22, i32 1)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @_mm_clmulepi64_si128(i32 %24, i32 %25, i32 17)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @_mm_xor_si128(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @_mm_slli_si128(i32 %30, i32 8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @_mm_srli_si128(i32 %32, i32 8)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @_mm_xor_si128(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @_mm_xor_si128(i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @_mm_srli_epi32(i32 %40, i32 31)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @_mm_srli_epi32(i32 %42, i32 31)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @_mm_slli_epi32(i32 %44, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @_mm_slli_epi32(i32 %46, i32 1)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @_mm_srli_si128(i32 %48, i32 12)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @_mm_slli_si128(i32 %50, i32 4)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @_mm_slli_si128(i32 %52, i32 4)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @_mm_or_si128(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @_mm_or_si128(i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @_mm_or_si128(i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @_mm_slli_epi32(i32 %63, i32 31)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @_mm_slli_epi32(i32 %65, i32 30)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @_mm_slli_epi32(i32 %67, i32 25)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @_mm_xor_si128(i32 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @_mm_xor_si128(i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @_mm_srli_si128(i32 %75, i32 4)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @_mm_slli_si128(i32 %77, i32 12)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @_mm_xor_si128(i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @_mm_srli_epi32(i32 %82, i32 1)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @_mm_srli_epi32(i32 %84, i32 2)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @_mm_srli_epi32(i32 %86, i32 7)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @_mm_xor_si128(i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @_mm_xor_si128(i32 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @_mm_xor_si128(i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @_mm_xor_si128(i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @_mm_xor_si128(i32 %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  ret void
}

declare dso_local i32 @_mm_clmulepi64_si128(i32, i32, i32) #1

declare dso_local i32 @_mm_xor_si128(i32, i32) #1

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
