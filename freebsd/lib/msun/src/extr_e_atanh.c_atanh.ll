; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atanh.c_atanh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atanh.c_atanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_atanh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load double, double* %3, align 8
  %11 = call i32 @EXTRACT_WORDS(i32 %8, i32 %9, double %10)
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 0, %16
  %18 = or i32 %15, %17
  %19 = ashr i32 %18, 31
  %20 = or i32 %14, %19
  %21 = icmp sgt i32 %20, 1072693248
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load double, double* %3, align 8
  %24 = load double, double* %3, align 8
  %25 = fsub double %23, %24
  %26 = load double, double* %3, align 8
  %27 = load double, double* %3, align 8
  %28 = fsub double %26, %27
  %29 = fdiv double %25, %28
  store double %29, double* %2, align 8
  br label %87

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1072693248
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load double, double* %3, align 8
  %35 = load double, double* @zero, align 8
  %36 = fdiv double %34, %35
  store double %36, double* %2, align 8
  br label %87

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 1043333120
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load double, double* @huge, align 8
  %42 = load double, double* %3, align 8
  %43 = fadd double %41, %42
  %44 = load double, double* @zero, align 8
  %45 = fcmp ogt double %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load double, double* %3, align 8
  store double %47, double* %2, align 8
  br label %87

48:                                               ; preds = %40, %37
  %49 = load double, double* %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @SET_HIGH_WORD(double %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 1071644672
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load double, double* %3, align 8
  %56 = load double, double* %3, align 8
  %57 = fadd double %55, %56
  store double %57, double* %4, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* %4, align 8
  %60 = load double, double* %3, align 8
  %61 = fmul double %59, %60
  %62 = load double, double* @one, align 8
  %63 = load double, double* %3, align 8
  %64 = fsub double %62, %63
  %65 = fdiv double %61, %64
  %66 = fadd double %58, %65
  %67 = call double @log1p(double %66) #3
  %68 = fmul double 5.000000e-01, %67
  store double %68, double* %4, align 8
  br label %79

69:                                               ; preds = %48
  %70 = load double, double* %3, align 8
  %71 = load double, double* %3, align 8
  %72 = fadd double %70, %71
  %73 = load double, double* @one, align 8
  %74 = load double, double* %3, align 8
  %75 = fsub double %73, %74
  %76 = fdiv double %72, %75
  %77 = call double @log1p(double %76) #3
  %78 = fmul double 5.000000e-01, %77
  store double %78, double* %4, align 8
  br label %79

79:                                               ; preds = %69, %54
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load double, double* %4, align 8
  store double %83, double* %2, align 8
  br label %87

84:                                               ; preds = %79
  %85 = load double, double* %4, align 8
  %86 = fneg double %85
  store double %86, double* %2, align 8
  br label %87

87:                                               ; preds = %84, %82, %46, %33, %22
  %88 = load double, double* %2, align 8
  ret double %88
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @log1p(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
