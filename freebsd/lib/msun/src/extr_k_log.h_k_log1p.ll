; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_log.h_k_log1p.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_log.h_k_log1p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Lg2 = common dso_local global double 0.000000e+00, align 8
@Lg4 = common dso_local global double 0.000000e+00, align 8
@Lg6 = common dso_local global double 0.000000e+00, align 8
@Lg1 = common dso_local global double 0.000000e+00, align 8
@Lg3 = common dso_local global double 0.000000e+00, align 8
@Lg5 = common dso_local global double 0.000000e+00, align 8
@Lg7 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @k_log1p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @k_log1p(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %2, align 8
  %10 = load double, double* %2, align 8
  %11 = load double, double* %2, align 8
  %12 = fadd double 2.000000e+00, %11
  %13 = fdiv double %10, %12
  store double %13, double* %4, align 8
  %14 = load double, double* %4, align 8
  %15 = load double, double* %4, align 8
  %16 = fmul double %14, %15
  store double %16, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = load double, double* %5, align 8
  %19 = fmul double %17, %18
  store double %19, double* %7, align 8
  %20 = load double, double* %7, align 8
  %21 = load double, double* @Lg2, align 8
  %22 = load double, double* %7, align 8
  %23 = load double, double* @Lg4, align 8
  %24 = load double, double* %7, align 8
  %25 = load double, double* @Lg6, align 8
  %26 = fmul double %24, %25
  %27 = fadd double %23, %26
  %28 = fmul double %22, %27
  %29 = fadd double %21, %28
  %30 = fmul double %20, %29
  store double %30, double* %8, align 8
  %31 = load double, double* %5, align 8
  %32 = load double, double* @Lg1, align 8
  %33 = load double, double* %7, align 8
  %34 = load double, double* @Lg3, align 8
  %35 = load double, double* %7, align 8
  %36 = load double, double* @Lg5, align 8
  %37 = load double, double* %7, align 8
  %38 = load double, double* @Lg7, align 8
  %39 = fmul double %37, %38
  %40 = fadd double %36, %39
  %41 = fmul double %35, %40
  %42 = fadd double %34, %41
  %43 = fmul double %33, %42
  %44 = fadd double %32, %43
  %45 = fmul double %31, %44
  store double %45, double* %9, align 8
  %46 = load double, double* %9, align 8
  %47 = load double, double* %8, align 8
  %48 = fadd double %46, %47
  store double %48, double* %6, align 8
  %49 = load double, double* %2, align 8
  %50 = fmul double 5.000000e-01, %49
  %51 = load double, double* %2, align 8
  %52 = fmul double %50, %51
  store double %52, double* %3, align 8
  %53 = load double, double* %4, align 8
  %54 = load double, double* %3, align 8
  %55 = load double, double* %6, align 8
  %56 = fadd double %54, %55
  %57 = fmul double %53, %56
  ret double %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
