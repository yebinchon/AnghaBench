; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_getround.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_getround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_DOWNWARD = common dso_local global i32 0, align 4
@DBL_EPSILON = common dso_local global double 0.000000e+00, align 8
@FE_TOWARDZERO = common dso_local global i32 0, align 4
@FE_UPWARD = common dso_local global i32 0, align 4
@FE_TONEAREST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getround() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store volatile double 1.000000e+00, double* %2, align 8
  %3 = load volatile double, double* %2, align 8
  %4 = fsub double %3, 1.000000e+00
  store volatile double %4, double* %2, align 8
  %5 = load volatile double, double* %2, align 8
  %6 = call double @llvm.copysign.f64(double 1.000000e+00, double %5)
  %7 = fcmp olt double %6, 0.000000e+00
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @FE_DOWNWARD, align 4
  store i32 %9, i32* %1, align 4
  br label %30

10:                                               ; preds = %0
  store volatile double 1.000000e+00, double* %2, align 8
  %11 = load volatile double, double* %2, align 8
  %12 = load double, double* @DBL_EPSILON, align 8
  %13 = fmul double %12, 3.000000e+00
  %14 = fdiv double %13, 4.000000e+00
  %15 = fadd double %11, %14
  %16 = fcmp oeq double %15, 1.000000e+00
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @FE_TOWARDZERO, align 4
  store i32 %18, i32* %1, align 4
  br label %30

19:                                               ; preds = %10
  %20 = load volatile double, double* %2, align 8
  %21 = load double, double* @DBL_EPSILON, align 8
  %22 = fmul double %21, 1.000000e+00
  %23 = fdiv double %22, 4.000000e+00
  %24 = fadd double %20, %23
  %25 = fcmp ogt double %24, 1.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @FE_UPWARD, align 4
  store i32 %27, i32* %1, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @FE_TONEAREST, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %26, %17, %8
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
