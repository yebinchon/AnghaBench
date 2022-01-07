; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixunsdfdi.c___fixunsdfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixunsdfdi.c___fixunsdfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i64* }

@UQUAD_MAX = common dso_local global double 0.000000e+00, align 8
@ONE_HALF = common dso_local global double 0.000000e+00, align 8
@ONE = common dso_local global double 0.000000e+00, align 8
@H = common dso_local global i64 0, align 8
@L = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__fixunsdfdi(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca %union.uu, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp olt double %6, 0.000000e+00
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load double, double* @UQUAD_MAX, align 8
  store double %9, double* %2, align 8
  br label %70

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = fcmp oge double %11, 0x43F0000000000000
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load double, double* @UQUAD_MAX, align 8
  store double %14, double* %2, align 8
  br label %70

15:                                               ; preds = %10
  %16 = load double, double* %3, align 8
  %17 = load double, double* @ONE_HALF, align 8
  %18 = fsub double %16, %17
  %19 = load double, double* @ONE, align 8
  %20 = fdiv double %18, %19
  store double %20, double* %4, align 8
  %21 = load double, double* %4, align 8
  %22 = fptoui double %21 to i64
  %23 = bitcast %union.uu* %5 to i64**
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @H, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %22, i64* %26, align 8
  %27 = bitcast %union.uu* %5 to i64**
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @L, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.uu* %5 to double*
  %32 = load double, double* %31, align 8
  %33 = load double, double* %3, align 8
  %34 = fsub double %33, %32
  store double %34, double* %3, align 8
  %35 = load double, double* %3, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %47

37:                                               ; preds = %15
  %38 = bitcast %union.uu* %5 to i64**
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @H, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load double, double* @ULONG_MAX, align 8
  %45 = load double, double* %3, align 8
  %46 = fadd double %45, %44
  store double %46, double* %3, align 8
  br label %47

47:                                               ; preds = %37, %15
  %48 = load double, double* %3, align 8
  %49 = load double, double* @ULONG_MAX, align 8
  %50 = fcmp ogt double %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = bitcast %union.uu* %5 to i64**
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @H, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load double, double* @ULONG_MAX, align 8
  %59 = load double, double* %3, align 8
  %60 = fsub double %59, %58
  store double %60, double* %3, align 8
  br label %61

61:                                               ; preds = %51, %47
  %62 = load double, double* %3, align 8
  %63 = fptoui double %62 to i64
  %64 = bitcast %union.uu* %5 to i64**
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @L, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %63, i64* %67, align 8
  %68 = bitcast %union.uu* %5 to double*
  %69 = load double, double* %68, align 8
  store double %69, double* %2, align 8
  br label %70

70:                                               ; preds = %61, %13, %8
  %71 = load double, double* %2, align 8
  ret double %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
