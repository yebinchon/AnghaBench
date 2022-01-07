; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sin.c_sin.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sin.c_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sin(double %0) #0 {
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
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1045430272
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  %20 = fptosi double %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load double, double* %3, align 8
  store double %23, double* %2, align 8
  br label %68

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load double, double* %3, align 8
  %27 = load double, double* %5, align 8
  %28 = call double @__kernel_sin(double %26, double %27, i32 0)
  store double %28, double* %2, align 8
  br label %68

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 2146435072
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load double, double* %3, align 8
  %34 = load double, double* %3, align 8
  %35 = fsub double %33, %34
  store double %35, double* %2, align 8
  br label %68

36:                                               ; preds = %29
  %37 = load double, double* %3, align 8
  %38 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %39 = call i32 @__ieee754_rem_pio2(double %37, double* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 3
  switch i32 %41, label %61 [
    i32 0, label %42
    i32 1, label %48
    i32 2, label %54
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %44 = load double, double* %43, align 16
  %45 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %46 = load double, double* %45, align 8
  %47 = call double @__kernel_sin(double %44, double %46, i32 1)
  store double %47, double* %2, align 8
  br label %68

48:                                               ; preds = %36
  %49 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %50 = load double, double* %49, align 16
  %51 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %52 = load double, double* %51, align 8
  %53 = call double @__kernel_cos(double %50, double %52)
  store double %53, double* %2, align 8
  br label %68

54:                                               ; preds = %36
  %55 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %56 = load double, double* %55, align 16
  %57 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %58 = load double, double* %57, align 8
  %59 = call double @__kernel_sin(double %56, double %58, i32 1)
  %60 = fneg double %59
  store double %60, double* %2, align 8
  br label %68

61:                                               ; preds = %36
  %62 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %63 = load double, double* %62, align 16
  %64 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %65 = load double, double* %64, align 8
  %66 = call double @__kernel_cos(double %63, double %65)
  %67 = fneg double %66
  store double %67, double* %2, align 8
  br label %68

68:                                               ; preds = %61, %54, %48, %42, %32, %25, %22
  %69 = load double, double* %2, align 8
  ret double %69
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local double @__kernel_sin(double, double, i32) #1

declare dso_local i32 @__ieee754_rem_pio2(double, double*) #1

declare dso_local double @__kernel_cos(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
