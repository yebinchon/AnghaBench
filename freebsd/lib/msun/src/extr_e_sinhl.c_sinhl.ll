; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sinhl.c_sinhl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sinhl.c_sinhl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIAS = common dso_local global i32 0, align 4
@LDBL_MANT_DIG = common dso_local global i32 0, align 4
@shuge = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@o_threshold = common dso_local global i64 0, align 8
@S11 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S13 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S15 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S17 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S19 = common dso_local global double 0.000000e+00, align 8
@S21 = common dso_local global double 0.000000e+00, align 8
@S23 = common dso_local global double 0.000000e+00, align 8
@S25 = common dso_local global double 0.000000e+00, align 8
@S3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S9 = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @sinhl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %11 = load i32, i32* %10, align 4
  %12 = load x86_fp80, x86_fp80* %3, align 16
  %13 = call i32 @GET_LDBL_EXPSIGN(i32 %11, x86_fp80 %12)
  %14 = load i32, i32* %10, align 4
  %15 = and i32 %14, 32767
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 32767
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load x86_fp80, x86_fp80* %3, align 16
  %20 = load x86_fp80, x86_fp80* %3, align 16
  %21 = fadd x86_fp80 %19, %20
  store x86_fp80 %21, x86_fp80* %2, align 16
  br label %88

22:                                               ; preds = %1
  %23 = call i32 (...) @ENTERI()
  store double 1.000000e+00, double* %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store double -1.000000e+00, double* %8, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 16389
  br i1 %29, label %30, label %72

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @BIAS, align 4
  %33 = load i32, i32* @LDBL_MANT_DIG, align 4
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %32, %35
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load x86_fp80, x86_fp80* @shuge, align 16
  %40 = load x86_fp80, x86_fp80* %3, align 16
  %41 = fadd x86_fp80 %39, %40
  %42 = fcmp ogt x86_fp80 %41, 0xK3FFF8000000000000000
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load x86_fp80, x86_fp80* %3, align 16
  %45 = fptrunc x86_fp80 %44 to double
  %46 = call i32 @RETURNI(double %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 16383
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load x86_fp80, x86_fp80* %3, align 16
  %53 = load x86_fp80, x86_fp80* %3, align 16
  %54 = fmul x86_fp80 %52, %53
  store x86_fp80 %54, x86_fp80* %6, align 16
  br label %55

55:                                               ; preds = %51, %48
  %56 = load x86_fp80, x86_fp80* %3, align 16
  %57 = call i64 @fabsl(x86_fp80 %56)
  %58 = call i32 @k_hexpl(i64 %57, x86_fp80* %4, x86_fp80* %5)
  %59 = load double, double* %8, align 8
  %60 = fpext double %59 to x86_fp80
  %61 = load x86_fp80, x86_fp80* %5, align 16
  %62 = load x86_fp80, x86_fp80* %4, align 16
  %63 = load x86_fp80, x86_fp80* %5, align 16
  %64 = fadd x86_fp80 %62, %63
  %65 = fdiv x86_fp80 0xK3FFD8000000000000000, %64
  %66 = fsub x86_fp80 %61, %65
  %67 = load x86_fp80, x86_fp80* %4, align 16
  %68 = fadd x86_fp80 %66, %67
  %69 = fmul x86_fp80 %60, %68
  %70 = fptrunc x86_fp80 %69 to double
  %71 = call i32 @RETURNI(double %70)
  br label %72

72:                                               ; preds = %55, %27
  %73 = load x86_fp80, x86_fp80* %3, align 16
  %74 = call i64 @fabsl(x86_fp80 %73)
  %75 = load i64, i64* @o_threshold, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load double, double* %8, align 8
  %79 = load x86_fp80, x86_fp80* %3, align 16
  %80 = call i64 @fabsl(x86_fp80 %79)
  %81 = call double @hexpl(i64 %80)
  %82 = fmul double %78, %81
  %83 = call i32 @RETURNI(double %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load x86_fp80, x86_fp80* %3, align 16
  %86 = load x86_fp80, x86_fp80* @shuge, align 16
  %87 = fmul x86_fp80 %85, %86
  store x86_fp80 %87, x86_fp80* %2, align 16
  br label %88

88:                                               ; preds = %84, %18
  %89 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %89
}

declare dso_local i32 @GET_LDBL_EXPSIGN(i32, x86_fp80) #1

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @RETURNI(double) #1

declare dso_local i32 @k_hexpl(i64, x86_fp80*, x86_fp80*) #1

declare dso_local i64 @fabsl(x86_fp80) #1

declare dso_local double @hexpl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
