; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixunssfdi.c___fixunssfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixunssfdi.c___fixunssfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i64* }

@UQUAD_MAX = common dso_local global float 0.000000e+00, align 4
@ONE_HALF = common dso_local global double 0.000000e+00, align 8
@ONE = common dso_local global double 0.000000e+00, align 8
@H = common dso_local global i64 0, align 8
@L = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__fixunssfdi(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %union.uu, align 8
  store float %0, float* %3, align 4
  %7 = load float, float* %3, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load float, float* @UQUAD_MAX, align 4
  store float %10, float* %2, align 4
  br label %75

11:                                               ; preds = %1
  %12 = load float, float* %3, align 4
  %13 = fpext float %12 to double
  %14 = fcmp oge double %13, 0x43F0000000000000
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load float, float* @UQUAD_MAX, align 4
  store float %16, float* %2, align 4
  br label %75

17:                                               ; preds = %11
  %18 = load float, float* %3, align 4
  %19 = fpext float %18 to double
  store double %19, double* %4, align 8
  %20 = load double, double* %4, align 8
  %21 = load double, double* @ONE_HALF, align 8
  %22 = fsub double %20, %21
  %23 = load double, double* @ONE, align 8
  %24 = fdiv double %22, %23
  store double %24, double* %5, align 8
  %25 = load double, double* %5, align 8
  %26 = fptoui double %25 to i64
  %27 = bitcast %union.uu* %6 to i64**
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @H, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %26, i64* %30, align 8
  %31 = bitcast %union.uu* %6 to i64**
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @L, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = bitcast %union.uu* %6 to float*
  %36 = load float, float* %35, align 8
  %37 = fpext float %36 to double
  %38 = load double, double* %4, align 8
  %39 = fsub double %38, %37
  store double %39, double* %4, align 8
  %40 = load double, double* %4, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %52

42:                                               ; preds = %17
  %43 = bitcast %union.uu* %6 to i64**
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @H, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load double, double* @ULONG_MAX, align 8
  %50 = load double, double* %4, align 8
  %51 = fadd double %50, %49
  store double %51, double* %4, align 8
  br label %52

52:                                               ; preds = %42, %17
  %53 = load double, double* %4, align 8
  %54 = load double, double* @ULONG_MAX, align 8
  %55 = fcmp ogt double %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = bitcast %union.uu* %6 to i64**
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @H, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load double, double* @ULONG_MAX, align 8
  %64 = load double, double* %4, align 8
  %65 = fsub double %64, %63
  store double %65, double* %4, align 8
  br label %66

66:                                               ; preds = %56, %52
  %67 = load double, double* %4, align 8
  %68 = fptoui double %67 to i64
  %69 = bitcast %union.uu* %6 to i64**
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @L, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = bitcast %union.uu* %6 to float*
  %74 = load float, float* %73, align 8
  store float %74, float* %2, align 4
  br label %75

75:                                               ; preds = %66, %15, %9
  %76 = load float, float* %2, align 4
  ret float %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
