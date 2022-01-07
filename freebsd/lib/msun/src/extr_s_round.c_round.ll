; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_round.c_round.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_round.c_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @round(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load double, double* %3, align 8
  %8 = call i32 @GET_HIGH_WORD(i32 %6, double %7)
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 2147483647
  %11 = icmp eq i32 %10, 2146435072
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load double, double* %3, align 8
  %14 = load double, double* %3, align 8
  %15 = fadd double %13, %14
  store double %15, double* %2, align 8
  br label %46

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, -2147483648
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load double, double* %3, align 8
  %22 = call double @llvm.floor.f64(double %21)
  store double %22, double* %4, align 8
  %23 = load double, double* %4, align 8
  %24 = load double, double* %3, align 8
  %25 = fsub double %23, %24
  %26 = fcmp ole double %25, -5.000000e-01
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load double, double* %4, align 8
  %29 = fadd double %28, 1.000000e+00
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load double, double* %4, align 8
  store double %31, double* %2, align 8
  br label %46

32:                                               ; preds = %16
  %33 = load double, double* %3, align 8
  %34 = fneg double %33
  %35 = call double @llvm.floor.f64(double %34)
  store double %35, double* %4, align 8
  %36 = load double, double* %4, align 8
  %37 = load double, double* %3, align 8
  %38 = fadd double %36, %37
  %39 = fcmp ole double %38, -5.000000e-01
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load double, double* %4, align 8
  %42 = fadd double %41, 1.000000e+00
  store double %42, double* %4, align 8
  br label %43

43:                                               ; preds = %40, %32
  %44 = load double, double* %4, align 8
  %45 = fneg double %44
  store double %45, double* %2, align 8
  br label %46

46:                                               ; preds = %43, %30, %12
  %47 = load double, double* %2, align 8
  ret double %47
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
