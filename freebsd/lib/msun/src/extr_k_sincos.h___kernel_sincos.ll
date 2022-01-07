; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_sincos.h___kernel_sincos.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_sincos.h___kernel_sincos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S2 = common dso_local global double 0.000000e+00, align 8
@S3 = common dso_local global double 0.000000e+00, align 8
@S4 = common dso_local global double 0.000000e+00, align 8
@S5 = common dso_local global double 0.000000e+00, align 8
@S6 = common dso_local global double 0.000000e+00, align 8
@S1 = common dso_local global double 0.000000e+00, align 8
@C1 = common dso_local global double 0.000000e+00, align 8
@C2 = common dso_local global double 0.000000e+00, align 8
@C3 = common dso_local global double 0.000000e+00, align 8
@C4 = common dso_local global double 0.000000e+00, align 8
@C5 = common dso_local global double 0.000000e+00, align 8
@C6 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, i32, double*, double*)* @__kernel_sincos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kernel_sincos(double %0, double %1, i32 %2, double* %3, double* %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %16 = load double, double* %6, align 8
  %17 = load double, double* %6, align 8
  %18 = fmul double %16, %17
  store double %18, double* %15, align 8
  %19 = load double, double* %15, align 8
  %20 = load double, double* %15, align 8
  %21 = fmul double %19, %20
  store double %21, double* %14, align 8
  %22 = load double, double* @S2, align 8
  %23 = load double, double* %15, align 8
  %24 = load double, double* @S3, align 8
  %25 = load double, double* %15, align 8
  %26 = load double, double* @S4, align 8
  %27 = fmul double %25, %26
  %28 = fadd double %24, %27
  %29 = fmul double %23, %28
  %30 = fadd double %22, %29
  %31 = load double, double* %15, align 8
  %32 = load double, double* %14, align 8
  %33 = fmul double %31, %32
  %34 = load double, double* @S5, align 8
  %35 = load double, double* %15, align 8
  %36 = load double, double* @S6, align 8
  %37 = fmul double %35, %36
  %38 = fadd double %34, %37
  %39 = fmul double %33, %38
  %40 = fadd double %30, %39
  store double %40, double* %12, align 8
  %41 = load double, double* %15, align 8
  %42 = load double, double* %6, align 8
  %43 = fmul double %41, %42
  store double %43, double* %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = load double, double* %6, align 8
  %48 = load double, double* %13, align 8
  %49 = load double, double* @S1, align 8
  %50 = load double, double* %15, align 8
  %51 = load double, double* %12, align 8
  %52 = fmul double %50, %51
  %53 = fadd double %49, %52
  %54 = fmul double %48, %53
  %55 = fadd double %47, %54
  %56 = load double*, double** %9, align 8
  store double %55, double* %56, align 8
  br label %75

57:                                               ; preds = %5
  %58 = load double, double* %6, align 8
  %59 = load double, double* %15, align 8
  %60 = load double, double* %7, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = load double, double* %13, align 8
  %63 = load double, double* %12, align 8
  %64 = fmul double %62, %63
  %65 = fsub double %61, %64
  %66 = fmul double %59, %65
  %67 = load double, double* %7, align 8
  %68 = fsub double %66, %67
  %69 = load double, double* %13, align 8
  %70 = load double, double* @S1, align 8
  %71 = fmul double %69, %70
  %72 = fsub double %68, %71
  %73 = fsub double %58, %72
  %74 = load double*, double** %9, align 8
  store double %73, double* %74, align 8
  br label %75

75:                                               ; preds = %57, %46
  %76 = load double, double* %15, align 8
  %77 = load double, double* @C1, align 8
  %78 = load double, double* %15, align 8
  %79 = load double, double* @C2, align 8
  %80 = load double, double* %15, align 8
  %81 = load double, double* @C3, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %79, %82
  %84 = fmul double %78, %83
  %85 = fadd double %77, %84
  %86 = fmul double %76, %85
  %87 = load double, double* %14, align 8
  %88 = load double, double* %14, align 8
  %89 = fmul double %87, %88
  %90 = load double, double* @C4, align 8
  %91 = load double, double* %15, align 8
  %92 = load double, double* @C5, align 8
  %93 = load double, double* %15, align 8
  %94 = load double, double* @C6, align 8
  %95 = fmul double %93, %94
  %96 = fadd double %92, %95
  %97 = fmul double %91, %96
  %98 = fadd double %90, %97
  %99 = fmul double %89, %98
  %100 = fadd double %86, %99
  store double %100, double* %12, align 8
  %101 = load double, double* %15, align 8
  %102 = fdiv double %101, 2.000000e+00
  store double %102, double* %11, align 8
  %103 = load double, double* %11, align 8
  %104 = fsub double 1.000000e+00, %103
  store double %104, double* %14, align 8
  %105 = load double, double* %14, align 8
  %106 = load double, double* %14, align 8
  %107 = fsub double 1.000000e+00, %106
  %108 = load double, double* %11, align 8
  %109 = fsub double %107, %108
  %110 = load double, double* %15, align 8
  %111 = load double, double* %12, align 8
  %112 = fmul double %110, %111
  %113 = load double, double* %6, align 8
  %114 = load double, double* %7, align 8
  %115 = fmul double %113, %114
  %116 = fsub double %112, %115
  %117 = fadd double %109, %116
  %118 = fadd double %105, %117
  %119 = load double*, double** %10, align 8
  store double %118, double* %119, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
