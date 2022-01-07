; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sinh.c_sinh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sinh.c_sinh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shuge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_sinh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load double, double* %3, align 8
  %10 = call i32 @GET_HIGH_WORD(i32 %8, double %9)
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 2146435072
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load double, double* %3, align 8
  %17 = load double, double* %3, align 8
  %18 = fadd double %16, %17
  store double %18, double* %2, align 8
  br label %92

19:                                               ; preds = %1
  store double 5.000000e-01, double* %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load double, double* %5, align 8
  %24 = fneg double %23
  store double %24, double* %5, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 1077280768
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 1043333120
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load double, double* @shuge, align 8
  %33 = load double, double* %3, align 8
  %34 = fadd double %32, %33
  %35 = load double, double* @one, align 8
  %36 = fcmp ogt double %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load double, double* %3, align 8
  store double %38, double* %2, align 8
  br label %92

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %28
  %41 = load double, double* %3, align 8
  %42 = call i32 @fabs(double %41)
  %43 = call double @expm1(i32 %42)
  store double %43, double* %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 1072693248
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load double, double* %5, align 8
  %48 = load double, double* %4, align 8
  %49 = fmul double 2.000000e+00, %48
  %50 = load double, double* %4, align 8
  %51 = load double, double* %4, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %4, align 8
  %54 = load double, double* @one, align 8
  %55 = fadd double %53, %54
  %56 = fdiv double %52, %55
  %57 = fsub double %49, %56
  %58 = fmul double %47, %57
  store double %58, double* %2, align 8
  br label %92

59:                                               ; preds = %40
  %60 = load double, double* %5, align 8
  %61 = load double, double* %4, align 8
  %62 = load double, double* %4, align 8
  %63 = load double, double* %4, align 8
  %64 = load double, double* @one, align 8
  %65 = fadd double %63, %64
  %66 = fdiv double %62, %65
  %67 = fadd double %61, %66
  %68 = fmul double %60, %67
  store double %68, double* %2, align 8
  br label %92

69:                                               ; preds = %25
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 1082535490
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load double, double* %5, align 8
  %74 = load double, double* %3, align 8
  %75 = call i32 @fabs(double %74)
  %76 = call double @__ieee754_exp(i32 %75)
  %77 = fmul double %73, %76
  store double %77, double* %2, align 8
  br label %92

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = icmp sle i32 %79, 1082536910
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load double, double* %5, align 8
  %83 = fmul double %82, 2.000000e+00
  %84 = load double, double* %3, align 8
  %85 = call i32 @fabs(double %84)
  %86 = call double @__ldexp_exp(i32 %85, i32 -1)
  %87 = fmul double %83, %86
  store double %87, double* %2, align 8
  br label %92

88:                                               ; preds = %78
  %89 = load double, double* %3, align 8
  %90 = load double, double* @shuge, align 8
  %91 = fmul double %89, %90
  store double %91, double* %2, align 8
  br label %92

92:                                               ; preds = %88, %81, %72, %59, %46, %37, %15
  %93 = load double, double* %2, align 8
  ret double %93
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
