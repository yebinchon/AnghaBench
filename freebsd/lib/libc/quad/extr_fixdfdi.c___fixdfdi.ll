; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixdfdi.c___fixdfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixdfdi.c___fixdfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUAD_MIN = common dso_local global double 0.000000e+00, align 8
@QUAD_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__fixdfdi(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load double, double* %3, align 8
  %8 = load double, double* @QUAD_MIN, align 8
  %9 = fcmp ole double %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load double, double* @QUAD_MIN, align 8
  store double %11, double* %2, align 8
  br label %28

12:                                               ; preds = %6
  %13 = load double, double* %3, align 8
  %14 = fneg double %13
  %15 = fptosi double %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = sitofp i64 %16 to double
  store double %17, double* %2, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load double, double* %3, align 8
  %20 = load double, double* @QUAD_MAX, align 8
  %21 = fcmp oge double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load double, double* @QUAD_MAX, align 8
  store double %23, double* %2, align 8
  br label %28

24:                                               ; preds = %18
  %25 = load double, double* %3, align 8
  %26 = fptosi double %25 to i64
  %27 = sitofp i64 %26 to double
  store double %27, double* %2, align 8
  br label %28

28:                                               ; preds = %24, %22, %12, %10
  %29 = load double, double* %2, align 8
  ret double %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
