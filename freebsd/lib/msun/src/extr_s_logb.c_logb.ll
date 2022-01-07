; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_logb.c_logb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_logb.c_logb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two54 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @logb(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load double, double* %3, align 8
  %9 = call i32 @EXTRACT_WORDS(i32 %6, i32 %7, double %8)
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 2147483647
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load double, double* %3, align 8
  %18 = call double @llvm.fabs.f64(double %17)
  %19 = fdiv double -1.000000e+00, %18
  store double %19, double* %2, align 8
  br label %49

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 2146435072
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load double, double* %3, align 8
  %25 = load double, double* %3, align 8
  %26 = fmul double %24, %25
  store double %26, double* %2, align 8
  br label %49

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 1048576
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load double, double* @two54, align 8
  %32 = load double, double* %3, align 8
  %33 = fmul double %32, %31
  store double %33, double* %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load double, double* %3, align 8
  %36 = call i32 @GET_HIGH_WORD(i32 %34, double %35)
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 2147483647
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 20
  %41 = sub nsw i32 %40, 1023
  %42 = sub nsw i32 %41, 54
  %43 = sitofp i32 %42 to double
  store double %43, double* %2, align 8
  br label %49

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 20
  %47 = sub nsw i32 %46, 1023
  %48 = sitofp i32 %47 to double
  store double %48, double* %2, align 8
  br label %49

49:                                               ; preds = %44, %30, %23, %16
  %50 = load double, double* %2, align 8
  ret double %50
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
