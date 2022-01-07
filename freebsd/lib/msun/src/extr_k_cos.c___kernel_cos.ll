; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_cos.c___kernel_cos.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_cos.c___kernel_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C1 = common dso_local global double 0.000000e+00, align 8
@C2 = common dso_local global double 0.000000e+00, align 8
@C3 = common dso_local global double 0.000000e+00, align 8
@C4 = common dso_local global double 0.000000e+00, align 8
@C5 = common dso_local global double 0.000000e+00, align 8
@C6 = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__kernel_cos(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = fmul double %9, %10
  store double %11, double* %6, align 8
  %12 = load double, double* %6, align 8
  %13 = load double, double* %6, align 8
  %14 = fmul double %12, %13
  store double %14, double* %8, align 8
  %15 = load double, double* %6, align 8
  %16 = load double, double* @C1, align 8
  %17 = load double, double* %6, align 8
  %18 = load double, double* @C2, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* @C3, align 8
  %21 = fmul double %19, %20
  %22 = fadd double %18, %21
  %23 = fmul double %17, %22
  %24 = fadd double %16, %23
  %25 = fmul double %15, %24
  %26 = load double, double* %8, align 8
  %27 = load double, double* %8, align 8
  %28 = fmul double %26, %27
  %29 = load double, double* @C4, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* @C5, align 8
  %32 = load double, double* %6, align 8
  %33 = load double, double* @C6, align 8
  %34 = fmul double %32, %33
  %35 = fadd double %31, %34
  %36 = fmul double %30, %35
  %37 = fadd double %29, %36
  %38 = fmul double %28, %37
  %39 = fadd double %25, %38
  store double %39, double* %7, align 8
  %40 = load double, double* %6, align 8
  %41 = fmul double 5.000000e-01, %40
  store double %41, double* %5, align 8
  %42 = load double, double* @one, align 8
  %43 = load double, double* %5, align 8
  %44 = fsub double %42, %43
  store double %44, double* %8, align 8
  %45 = load double, double* %8, align 8
  %46 = load double, double* @one, align 8
  %47 = load double, double* %8, align 8
  %48 = fsub double %46, %47
  %49 = load double, double* %5, align 8
  %50 = fsub double %48, %49
  %51 = load double, double* %6, align 8
  %52 = load double, double* %7, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %3, align 8
  %55 = load double, double* %4, align 8
  %56 = fmul double %54, %55
  %57 = fsub double %53, %56
  %58 = fadd double %50, %57
  %59 = fadd double %45, %58
  ret double %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
