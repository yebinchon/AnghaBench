; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cos.c_cos.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cos.c_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cos(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca [2 x double], align 16
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double 0.000000e+00, double* %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load double, double* %3, align 8
  %10 = call i32 @GET_HIGH_WORD(i32 %8, double %9)
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 1072243195
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1044816030
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  %20 = fptosi double %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store double 1.000000e+00, double* %2, align 8
  br label %67

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %15
  %25 = load double, double* %3, align 8
  %26 = load double, double* %5, align 8
  %27 = call double @__kernel_cos(double %25, double %26)
  store double %27, double* %2, align 8
  br label %67

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 2146435072
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load double, double* %3, align 8
  %33 = load double, double* %3, align 8
  %34 = fsub double %32, %33
  store double %34, double* %2, align 8
  br label %67

35:                                               ; preds = %28
  %36 = load double, double* %3, align 8
  %37 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %38 = call i32 @__ieee754_rem_pio2(double %36, double* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 3
  switch i32 %40, label %61 [
    i32 0, label %41
    i32 1, label %47
    i32 2, label %54
  ]

41:                                               ; preds = %35
  %42 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %43 = load double, double* %42, align 16
  %44 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %45 = load double, double* %44, align 8
  %46 = call double @__kernel_cos(double %43, double %45)
  store double %46, double* %2, align 8
  br label %67

47:                                               ; preds = %35
  %48 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %49 = load double, double* %48, align 16
  %50 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %51 = load double, double* %50, align 8
  %52 = call double @__kernel_sin(double %49, double %51, i32 1)
  %53 = fneg double %52
  store double %53, double* %2, align 8
  br label %67

54:                                               ; preds = %35
  %55 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %56 = load double, double* %55, align 16
  %57 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %58 = load double, double* %57, align 8
  %59 = call double @__kernel_cos(double %56, double %58)
  %60 = fneg double %59
  store double %60, double* %2, align 8
  br label %67

61:                                               ; preds = %35
  %62 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %63 = load double, double* %62, align 16
  %64 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %65 = load double, double* %64, align 8
  %66 = call double @__kernel_sin(double %63, double %65, i32 1)
  store double %66, double* %2, align 8
  br label %67

67:                                               ; preds = %61, %54, %47, %41, %31, %24, %22
  %68 = load double, double* %2, align 8
  ret double %68
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local double @__kernel_cos(double, double) #1

declare dso_local i32 @__ieee754_rem_pio2(double, double*) #1

declare dso_local double @__kernel_sin(double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
