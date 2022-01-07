; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrig.c_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrig.c_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double)* @f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @f(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load double, double* %6, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load double, double* %7, align 8
  %12 = load double, double* %6, align 8
  %13 = fsub double %11, %12
  %14 = fdiv double %13, 2.000000e+00
  store double %14, double* %4, align 8
  br label %30

15:                                               ; preds = %3
  %16 = load double, double* %6, align 8
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load double, double* %5, align 8
  %20 = fdiv double %19, 2.000000e+00
  store double %20, double* %4, align 8
  br label %30

21:                                               ; preds = %15
  %22 = load double, double* %5, align 8
  %23 = load double, double* %5, align 8
  %24 = fmul double %22, %23
  %25 = load double, double* %7, align 8
  %26 = load double, double* %6, align 8
  %27 = fadd double %25, %26
  %28 = fdiv double %24, %27
  %29 = fdiv double %28, 2.000000e+00
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %21, %18, %10
  %31 = load double, double* %4, align 8
  ret double %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
