; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanh.c_tanh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanh.c_tanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@two = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tanh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load double, double* %3, align 8
  %10 = call i32 @GET_HIGH_WORD(i32 %8, double %9)
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 2146435072
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load double, double* @one, align 8
  %20 = load double, double* %3, align 8
  %21 = fdiv double %19, %20
  %22 = load double, double* @one, align 8
  %23 = fadd double %21, %22
  store double %23, double* %2, align 8
  br label %89

24:                                               ; preds = %15
  %25 = load double, double* @one, align 8
  %26 = load double, double* %3, align 8
  %27 = fdiv double %25, %26
  %28 = load double, double* @one, align 8
  %29 = fsub double %27, %28
  store double %29, double* %2, align 8
  br label %89

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 1077280768
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 1043333120
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load double, double* @huge, align 8
  %38 = load double, double* %3, align 8
  %39 = fadd double %37, %38
  %40 = load double, double* @one, align 8
  %41 = fcmp ogt double %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load double, double* %3, align 8
  store double %43, double* %2, align 8
  br label %89

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 1072693248
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load double, double* @two, align 8
  %50 = load double, double* %3, align 8
  %51 = call double @llvm.fabs.f64(double %50)
  %52 = fmul double %49, %51
  %53 = call double @expm1(double %52) #4
  store double %53, double* %4, align 8
  %54 = load double, double* @one, align 8
  %55 = load double, double* @two, align 8
  %56 = load double, double* %4, align 8
  %57 = load double, double* @two, align 8
  %58 = fadd double %56, %57
  %59 = fdiv double %55, %58
  %60 = fsub double %54, %59
  store double %60, double* %5, align 8
  br label %74

61:                                               ; preds = %45
  %62 = load double, double* @two, align 8
  %63 = fneg double %62
  %64 = load double, double* %3, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  %66 = fmul double %63, %65
  %67 = call double @expm1(double %66) #4
  store double %67, double* %4, align 8
  %68 = load double, double* %4, align 8
  %69 = fneg double %68
  %70 = load double, double* %4, align 8
  %71 = load double, double* @two, align 8
  %72 = fadd double %70, %71
  %73 = fdiv double %69, %72
  store double %73, double* %5, align 8
  br label %74

74:                                               ; preds = %61, %48
  br label %79

75:                                               ; preds = %30
  %76 = load double, double* @one, align 8
  %77 = load double, double* @tiny, align 8
  %78 = fsub double %76, %77
  store double %78, double* %5, align 8
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load double, double* %5, align 8
  br label %87

84:                                               ; preds = %79
  %85 = load double, double* %5, align 8
  %86 = fneg double %85
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi double [ %83, %82 ], [ %86, %84 ]
  store double %88, double* %2, align 8
  br label %89

89:                                               ; preds = %87, %42, %24, %18
  %90 = load double, double* %2, align 8
  ret double %90
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

; Function Attrs: nounwind
declare dso_local double @expm1(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
