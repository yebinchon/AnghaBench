; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_ipow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_ipow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ipow(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store double 1.000000e+00, double* %3, align 8
  br label %28

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 2
  %14 = call double @ipow(double %11, i32 %13)
  store double %14, double* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load double, double* %6, align 8
  %20 = load double, double* %6, align 8
  %21 = fmul double %19, %20
  store double %21, double* %3, align 8
  br label %28

22:                                               ; preds = %10
  %23 = load double, double* %4, align 8
  %24 = load double, double* %6, align 8
  %25 = fmul double %23, %24
  %26 = load double, double* %6, align 8
  %27 = fmul double %25, %26
  store double %27, double* %3, align 8
  br label %28

28:                                               ; preds = %22, %18, %9
  %29 = load double, double* %3, align 8
  ret double %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
