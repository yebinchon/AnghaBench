; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_sincosf.h___kernel_sincosdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_sincosf.h___kernel_sincosdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3 = common dso_local global double 0.000000e+00, align 8
@S4 = common dso_local global double 0.000000e+00, align 8
@S1 = common dso_local global double 0.000000e+00, align 8
@S2 = common dso_local global double 0.000000e+00, align 8
@C2 = common dso_local global double 0.000000e+00, align 8
@C3 = common dso_local global double 0.000000e+00, align 8
@C0 = common dso_local global double 0.000000e+00, align 8
@C1 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, float*, float*)* @__kernel_sincosdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kernel_sincosdf(double %0, float* %1, float* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %11 = load double, double* %4, align 8
  %12 = load double, double* %4, align 8
  %13 = fmul double %11, %12
  store double %13, double* %10, align 8
  %14 = load double, double* %10, align 8
  %15 = load double, double* %10, align 8
  %16 = fmul double %14, %15
  store double %16, double* %9, align 8
  %17 = load double, double* @S3, align 8
  %18 = load double, double* %10, align 8
  %19 = load double, double* @S4, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %17, %20
  store double %21, double* %7, align 8
  %22 = load double, double* %10, align 8
  %23 = load double, double* %4, align 8
  %24 = fmul double %22, %23
  store double %24, double* %8, align 8
  %25 = load double, double* %4, align 8
  %26 = load double, double* %8, align 8
  %27 = load double, double* @S1, align 8
  %28 = load double, double* %10, align 8
  %29 = load double, double* @S2, align 8
  %30 = fmul double %28, %29
  %31 = fadd double %27, %30
  %32 = fmul double %26, %31
  %33 = fadd double %25, %32
  %34 = load double, double* %8, align 8
  %35 = load double, double* %9, align 8
  %36 = fmul double %34, %35
  %37 = load double, double* %7, align 8
  %38 = fmul double %36, %37
  %39 = fadd double %33, %38
  %40 = fptrunc double %39 to float
  %41 = load float*, float** %5, align 8
  store float %40, float* %41, align 4
  %42 = load double, double* @C2, align 8
  %43 = load double, double* %10, align 8
  %44 = load double, double* @C3, align 8
  %45 = fmul double %43, %44
  %46 = fadd double %42, %45
  store double %46, double* %7, align 8
  %47 = load double, double* %10, align 8
  %48 = load double, double* @C0, align 8
  %49 = fmul double %47, %48
  %50 = fadd double 1.000000e+00, %49
  %51 = load double, double* %9, align 8
  %52 = load double, double* @C1, align 8
  %53 = fmul double %51, %52
  %54 = fadd double %50, %53
  %55 = load double, double* %9, align 8
  %56 = load double, double* %10, align 8
  %57 = fmul double %55, %56
  %58 = load double, double* %7, align 8
  %59 = fmul double %57, %58
  %60 = fadd double %54, %59
  %61 = fptrunc double %60 to float
  %62 = load float*, float** %6, align 8
  store float %61, float* %62, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
