; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmaf.c_fmaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmaf.c_fmaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_TONEAREST = common dso_local global i64 0, align 8
@FE_TOWARDZERO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @fmaf(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %14 = load float, float* %5, align 4
  %15 = fpext float %14 to double
  %16 = load float, float* %6, align 4
  %17 = fpext float %16 to double
  %18 = fmul double %15, %17
  store double %18, double* %8, align 8
  %19 = load double, double* %8, align 8
  %20 = load float, float* %7, align 4
  %21 = fpext float %20 to double
  %22 = fadd double %19, %21
  store double %22, double* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load double, double* %9, align 8
  %26 = call i32 @EXTRACT_WORDS(i32 %23, i32 %24, double %25)
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 536870911
  %29 = icmp ne i32 %28, 268435456
  br i1 %29, label %45, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 2146435072
  %33 = icmp eq i32 %32, 2146435072
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load double, double* %9, align 8
  %36 = load double, double* %8, align 8
  %37 = fsub double %35, %36
  %38 = load float, float* %7, align 4
  %39 = fpext float %38 to double
  %40 = fcmp oeq double %37, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = call i64 (...) @fegetround()
  %43 = load i64, i64* @FE_TONEAREST, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %34, %30, %3
  %46 = load double, double* %9, align 8
  %47 = fptrunc double %46 to float
  store float %47, float* %4, align 4
  br label %69

48:                                               ; preds = %41
  %49 = load i64, i64* @FE_TOWARDZERO, align 8
  %50 = call i32 @fesetround(i64 %49)
  %51 = load double, double* %8, align 8
  store volatile double %51, double* %12, align 8
  %52 = load volatile double, double* %12, align 8
  %53 = load float, float* %7, align 4
  %54 = fpext float %53 to double
  %55 = fadd double %52, %54
  store double %55, double* %13, align 8
  %56 = load i64, i64* @FE_TONEAREST, align 8
  %57 = call i32 @fesetround(i64 %56)
  %58 = load double, double* %9, align 8
  %59 = load double, double* %13, align 8
  %60 = fcmp oeq double %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load double, double* %13, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @SET_LOW_WORD(double %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %48
  %67 = load double, double* %13, align 8
  %68 = fptrunc double %67 to float
  store float %68, float* %4, align 4
  br label %69

69:                                               ; preds = %66, %45
  %70 = load float, float* %4, align 4
  ret float %70
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i64 @fegetround(...) #1

declare dso_local i32 @fesetround(i64) #1

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
