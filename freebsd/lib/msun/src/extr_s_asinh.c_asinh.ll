; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_asinh.c_asinh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_asinh.c_asinh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@ln2 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @asinh(double %0) #0 {
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
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load double, double* %3, align 8
  %17 = load double, double* %3, align 8
  %18 = fadd double %16, %17
  store double %18, double* %2, align 8
  br label %85

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 1043333120
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load double, double* @huge, align 8
  %24 = load double, double* %3, align 8
  %25 = fadd double %23, %24
  %26 = load double, double* @one, align 8
  %27 = fcmp ogt double %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load double, double* %3, align 8
  store double %29, double* %2, align 8
  br label %85

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1102053376
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load double, double* %3, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = call double @__ieee754_log(double %36)
  %38 = load double, double* @ln2, align 8
  %39 = fadd double %37, %38
  store double %39, double* %5, align 8
  br label %77

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 1073741824
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load double, double* %3, align 8
  %45 = call double @llvm.fabs.f64(double %44)
  store double %45, double* %4, align 8
  %46 = load double, double* %4, align 8
  %47 = fmul double 2.000000e+00, %46
  %48 = load double, double* @one, align 8
  %49 = load double, double* %3, align 8
  %50 = load double, double* %3, align 8
  %51 = fmul double %49, %50
  %52 = load double, double* @one, align 8
  %53 = fadd double %51, %52
  %54 = call double @__ieee754_sqrt(double %53)
  %55 = load double, double* %4, align 8
  %56 = fadd double %54, %55
  %57 = fdiv double %48, %56
  %58 = fadd double %47, %57
  %59 = call double @__ieee754_log(double %58)
  store double %59, double* %5, align 8
  br label %76

60:                                               ; preds = %40
  %61 = load double, double* %3, align 8
  %62 = load double, double* %3, align 8
  %63 = fmul double %61, %62
  store double %63, double* %4, align 8
  %64 = load double, double* %3, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  %66 = load double, double* %4, align 8
  %67 = load double, double* @one, align 8
  %68 = load double, double* @one, align 8
  %69 = load double, double* %4, align 8
  %70 = fadd double %68, %69
  %71 = call double @__ieee754_sqrt(double %70)
  %72 = fadd double %67, %71
  %73 = fdiv double %66, %72
  %74 = fadd double %65, %73
  %75 = call double @log1p(double %74) #4
  store double %75, double* %5, align 8
  br label %76

76:                                               ; preds = %60, %43
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load double, double* %5, align 8
  store double %81, double* %2, align 8
  br label %85

82:                                               ; preds = %77
  %83 = load double, double* %5, align 8
  %84 = fneg double %83
  store double %84, double* %2, align 8
  br label %85

85:                                               ; preds = %82, %80, %28, %15
  %86 = load double, double* %2, align 8
  ret double %86
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local double @__ieee754_log(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local double @__ieee754_sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @log1p(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
