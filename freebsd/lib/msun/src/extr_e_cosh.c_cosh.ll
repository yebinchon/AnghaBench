; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_cosh.c_cosh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_cosh.c_cosh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@half = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_cosh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load double, double* %3, align 8
  %9 = call i32 @GET_HIGH_WORD(i32 %7, double %8)
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 2147483647
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 2146435072
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load double, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = fmul double %15, %16
  store double %17, double* %2, align 8
  br label %76

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 1071001155
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load double, double* %3, align 8
  %23 = call i32 @fabs(double %22)
  %24 = call double @expm1(i32 %23)
  store double %24, double* %4, align 8
  %25 = load double, double* @one, align 8
  %26 = load double, double* %4, align 8
  %27 = fadd double %25, %26
  store double %27, double* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 1015021568
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load double, double* %5, align 8
  store double %31, double* %2, align 8
  br label %76

32:                                               ; preds = %21
  %33 = load double, double* @one, align 8
  %34 = load double, double* %4, align 8
  %35 = load double, double* %4, align 8
  %36 = fmul double %34, %35
  %37 = load double, double* %5, align 8
  %38 = load double, double* %5, align 8
  %39 = fadd double %37, %38
  %40 = fdiv double %36, %39
  %41 = fadd double %33, %40
  store double %41, double* %2, align 8
  br label %76

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 1077280768
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load double, double* %3, align 8
  %47 = call i32 @fabs(double %46)
  %48 = call double @__ieee754_exp(i32 %47)
  store double %48, double* %4, align 8
  %49 = load double, double* @half, align 8
  %50 = load double, double* %4, align 8
  %51 = fmul double %49, %50
  %52 = load double, double* @half, align 8
  %53 = load double, double* %4, align 8
  %54 = fdiv double %52, %53
  %55 = fadd double %51, %54
  store double %55, double* %2, align 8
  br label %76

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 1082535490
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load double, double* @half, align 8
  %61 = load double, double* %3, align 8
  %62 = call i32 @fabs(double %61)
  %63 = call double @__ieee754_exp(i32 %62)
  %64 = fmul double %60, %63
  store double %64, double* %2, align 8
  br label %76

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = icmp sle i32 %66, 1082536910
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load double, double* %3, align 8
  %70 = call i32 @fabs(double %69)
  %71 = call double @__ldexp_exp(i32 %70, i32 -1)
  store double %71, double* %2, align 8
  br label %76

72:                                               ; preds = %65
  %73 = load double, double* @huge, align 8
  %74 = load double, double* @huge, align 8
  %75 = fmul double %73, %74
  store double %75, double* %2, align 8
  br label %76

76:                                               ; preds = %72, %68, %59, %45, %32, %30, %14
  %77 = load double, double* %2, align 8
  ret double %77
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local double @expm1(i32) #1

declare dso_local i32 @fabs(double) #1

declare dso_local double @__ieee754_exp(i32) #1

declare dso_local double @__ldexp_exp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
