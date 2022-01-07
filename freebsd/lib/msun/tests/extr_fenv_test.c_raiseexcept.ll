; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_raiseexcept.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_raiseexcept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_INVALID = common dso_local global i32 0, align 4
@FE_DIVBYZERO = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@FE_INEXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @raiseexcept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raiseexcept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FE_INVALID, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  store volatile double 0.000000e+00, double* %3, align 8
  %9 = load volatile double, double* %3, align 8
  %10 = fdiv double 0.000000e+00, %9
  store volatile double %10, double* %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @FE_DIVBYZERO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  store volatile double 0.000000e+00, double* %3, align 8
  %17 = load volatile double, double* %3, align 8
  %18 = fdiv double 1.000000e+00, %17
  store volatile double %18, double* %3, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @FE_OVERFLOW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load volatile double, double* @DBL_MAX, align 8
  store volatile double %25, double* %3, align 8
  %26 = load volatile double, double* %3, align 8
  %27 = fmul double %26, 2.000000e+00
  store volatile double %27, double* %3, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @FE_UNDERFLOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load double, double* @DBL_MIN, align 8
  store volatile double %34, double* %3, align 8
  %35 = load volatile double, double* @DBL_MAX, align 8
  %36 = load volatile double, double* %3, align 8
  %37 = fdiv double %36, %35
  store volatile double %37, double* %3, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @FE_INEXACT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load double, double* @DBL_MIN, align 8
  store volatile double %44, double* %3, align 8
  %45 = load volatile double, double* %3, align 8
  %46 = fadd double %45, 1.000000e+00
  store volatile double %46, double* %3, align 8
  br label %47

47:                                               ; preds = %43, %38
  store volatile double 1.000000e+00, double* %3, align 8
  %48 = load volatile double, double* %3, align 8
  %49 = fadd double %48, 1.000000e+00
  store volatile double %49, double* %3, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
