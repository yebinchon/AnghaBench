; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_e_lgammal_r.c_sin_pil.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_e_lgammal_r.c_sin_pil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @sin_pil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @sin_pil(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %10 = load x86_fp80, x86_fp80* %3, align 16
  %11 = fneg x86_fp80 %10
  store x86_fp80 %11, x86_fp80* %5, align 16
  %12 = load x86_fp80, x86_fp80* %5, align 16
  %13 = fadd x86_fp80 %12, 0xK406F8000000000000000
  store volatile x86_fp80 %13, x86_fp80* %4, align 16
  %14 = load volatile x86_fp80, x86_fp80* %4, align 16
  %15 = fsub x86_fp80 %14, 0xK406F8000000000000000
  store x86_fp80 %15, x86_fp80* %6, align 16
  %16 = load x86_fp80, x86_fp80* %6, align 16
  %17 = load x86_fp80, x86_fp80* %5, align 16
  %18 = fcmp oeq x86_fp80 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load x86_fp80, x86_fp80* @zero, align 16
  store x86_fp80 %20, x86_fp80* %2, align 16
  br label %91

21:                                               ; preds = %1
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = fadd x86_fp80 %22, 0xK406D8000000000000000
  store volatile x86_fp80 %23, x86_fp80* %4, align 16
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load volatile x86_fp80, x86_fp80* %4, align 16
  %28 = call i32 @EXTRACT_LDBL128_WORDS(i32 %24, i32 %25, i32 %26, x86_fp80 %27)
  %29 = load volatile x86_fp80, x86_fp80* %4, align 16
  %30 = fsub x86_fp80 %29, 0xK406D8000000000000000
  store x86_fp80 %30, x86_fp80* %6, align 16
  %31 = load x86_fp80, x86_fp80* %6, align 16
  %32 = load x86_fp80, x86_fp80* %5, align 16
  %33 = fcmp ogt x86_fp80 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load x86_fp80, x86_fp80* %6, align 16
  %36 = fsub x86_fp80 %35, 0xK3FFD8000000000000000
  store x86_fp80 %36, x86_fp80* %6, align 16
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %21
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 7
  store i32 %41, i32* %8, align 4
  %42 = load x86_fp80, x86_fp80* %5, align 16
  %43 = load x86_fp80, x86_fp80* %6, align 16
  %44 = fsub x86_fp80 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double %46, 2.500000e-01
  %48 = fpext double %47 to x86_fp80
  %49 = fadd x86_fp80 %44, %48
  store x86_fp80 %49, x86_fp80* %5, align 16
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %81 [
    i32 0, label %51
    i32 1, label %57
    i32 2, label %57
    i32 3, label %64
    i32 4, label %64
    i32 5, label %73
    i32 6, label %73
  ]

51:                                               ; preds = %39
  %52 = load x86_fp80, x86_fp80* @pi, align 16
  %53 = load x86_fp80, x86_fp80* %5, align 16
  %54 = fmul x86_fp80 %52, %53
  %55 = load x86_fp80, x86_fp80* @zero, align 16
  %56 = call x86_fp80 @__kernel_sinl(x86_fp80 %54, x86_fp80 %55, i32 0)
  store x86_fp80 %56, x86_fp80* %5, align 16
  br label %88

57:                                               ; preds = %39, %39
  %58 = load x86_fp80, x86_fp80* @pi, align 16
  %59 = load x86_fp80, x86_fp80* %5, align 16
  %60 = fsub x86_fp80 0xK3FFE8000000000000000, %59
  %61 = fmul x86_fp80 %58, %60
  %62 = load x86_fp80, x86_fp80* @zero, align 16
  %63 = call x86_fp80 @__kernel_cosl(x86_fp80 %61, x86_fp80 %62)
  store x86_fp80 %63, x86_fp80* %5, align 16
  br label %88

64:                                               ; preds = %39, %39
  %65 = load x86_fp80, x86_fp80* @pi, align 16
  %66 = load i32, i32* @one, align 4
  %67 = sitofp i32 %66 to x86_fp80
  %68 = load x86_fp80, x86_fp80* %5, align 16
  %69 = fsub x86_fp80 %67, %68
  %70 = fmul x86_fp80 %65, %69
  %71 = load x86_fp80, x86_fp80* @zero, align 16
  %72 = call x86_fp80 @__kernel_sinl(x86_fp80 %70, x86_fp80 %71, i32 0)
  store x86_fp80 %72, x86_fp80* %5, align 16
  br label %88

73:                                               ; preds = %39, %39
  %74 = load x86_fp80, x86_fp80* @pi, align 16
  %75 = load x86_fp80, x86_fp80* %5, align 16
  %76 = fsub x86_fp80 %75, 0xK3FFFC000000000000000
  %77 = fmul x86_fp80 %74, %76
  %78 = load x86_fp80, x86_fp80* @zero, align 16
  %79 = call x86_fp80 @__kernel_cosl(x86_fp80 %77, x86_fp80 %78)
  %80 = fneg x86_fp80 %79
  store x86_fp80 %80, x86_fp80* %5, align 16
  br label %88

81:                                               ; preds = %39
  %82 = load x86_fp80, x86_fp80* @pi, align 16
  %83 = load x86_fp80, x86_fp80* %5, align 16
  %84 = fsub x86_fp80 %83, 0xK40008000000000000000
  %85 = fmul x86_fp80 %82, %84
  %86 = load x86_fp80, x86_fp80* @zero, align 16
  %87 = call x86_fp80 @__kernel_sinl(x86_fp80 %85, x86_fp80 %86, i32 0)
  store x86_fp80 %87, x86_fp80* %5, align 16
  br label %88

88:                                               ; preds = %81, %73, %64, %57, %51
  %89 = load x86_fp80, x86_fp80* %5, align 16
  %90 = fneg x86_fp80 %89
  store x86_fp80 %90, x86_fp80* %2, align 16
  br label %91

91:                                               ; preds = %88, %19
  %92 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %92
}

declare dso_local i32 @EXTRACT_LDBL128_WORDS(i32, i32, i32, x86_fp80) #1

declare dso_local x86_fp80 @__kernel_sinl(x86_fp80, x86_fp80, i32) #1

declare dso_local x86_fp80 @__kernel_cosl(x86_fp80, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
