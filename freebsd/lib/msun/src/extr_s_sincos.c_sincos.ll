; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sincos.c_sincos.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sincos.c_sincos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sincos(double %0, double* %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca [2 x double], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load double, double* %4, align 8
  %12 = call i32 @GET_HIGH_WORD(i32 %10, double %11)
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, 2147483647
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 1072243195
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 1044381696
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load double, double* %4, align 8
  %22 = fptosi double %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load double, double* %4, align 8
  %26 = load double*, double** %5, align 8
  store double %25, double* %26, align 8
  %27 = load double*, double** %6, align 8
  store double 1.000000e+00, double* %27, align 8
  br label %100

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = load double, double* %4, align 8
  %31 = load double*, double** %5, align 8
  %32 = load double*, double** %6, align 8
  %33 = call i32 @__kernel_sincos(double %30, double 0.000000e+00, i32 0, double* %31, double* %32)
  br label %100

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 2146435072
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load double, double* %4, align 8
  %39 = load double, double* %4, align 8
  %40 = fsub double %38, %39
  %41 = load double*, double** %5, align 8
  store double %40, double* %41, align 8
  %42 = load double, double* %4, align 8
  %43 = load double, double* %4, align 8
  %44 = fsub double %42, %43
  %45 = load double*, double** %6, align 8
  store double %44, double* %45, align 8
  br label %100

46:                                               ; preds = %34
  %47 = load double, double* %4, align 8
  %48 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %49 = call i32 @__ieee754_rem_pio2(double %47, double* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 3
  switch i32 %51, label %88 [
    i32 0, label %52
    i32 1, label %60
    i32 2, label %72
  ]

52:                                               ; preds = %46
  %53 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %54 = load double, double* %53, align 16
  %55 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %5, align 8
  %58 = load double*, double** %6, align 8
  %59 = call i32 @__kernel_sincos(double %54, double %56, i32 1, double* %57, double* %58)
  br label %100

60:                                               ; preds = %46
  %61 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %62 = load double, double* %61, align 16
  %63 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %64 = load double, double* %63, align 8
  %65 = load double*, double** %6, align 8
  %66 = load double*, double** %5, align 8
  %67 = call i32 @__kernel_sincos(double %62, double %64, i32 1, double* %65, double* %66)
  %68 = load double*, double** %6, align 8
  %69 = load double, double* %68, align 8
  %70 = fneg double %69
  %71 = load double*, double** %6, align 8
  store double %70, double* %71, align 8
  br label %100

72:                                               ; preds = %46
  %73 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %74 = load double, double* %73, align 16
  %75 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %76 = load double, double* %75, align 8
  %77 = load double*, double** %5, align 8
  %78 = load double*, double** %6, align 8
  %79 = call i32 @__kernel_sincos(double %74, double %76, i32 1, double* %77, double* %78)
  %80 = load double*, double** %5, align 8
  %81 = load double, double* %80, align 8
  %82 = fneg double %81
  %83 = load double*, double** %5, align 8
  store double %82, double* %83, align 8
  %84 = load double*, double** %6, align 8
  %85 = load double, double* %84, align 8
  %86 = fneg double %85
  %87 = load double*, double** %6, align 8
  store double %86, double* %87, align 8
  br label %100

88:                                               ; preds = %46
  %89 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %90 = load double, double* %89, align 16
  %91 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %92 = load double, double* %91, align 8
  %93 = load double*, double** %6, align 8
  %94 = load double*, double** %5, align 8
  %95 = call i32 @__kernel_sincos(double %90, double %92, i32 1, double* %93, double* %94)
  %96 = load double*, double** %5, align 8
  %97 = load double, double* %96, align 8
  %98 = fneg double %97
  %99 = load double*, double** %5, align 8
  store double %98, double* %99, align 8
  br label %100

100:                                              ; preds = %24, %29, %37, %88, %72, %60, %52
  ret void
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @__kernel_sincos(double, double, i32, double*, double*) #1

declare dso_local i32 @__ieee754_rem_pio2(double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
