; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_frexp.c_frexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_frexp.c_frexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two54 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @frexp(double %0, i32* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load double, double* %4, align 8
  %12 = call i32 @EXTRACT_WORDS(i32 %9, i32 %10, double %11)
  %13 = load i32, i32* %6, align 4
  %14 = and i32 2147483647, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 2146435072
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %2
  %24 = load double, double* %4, align 8
  store double %24, double* %3, align 8
  br label %52

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 1048576
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load double, double* @two54, align 8
  %30 = load double, double* %4, align 8
  %31 = fmul double %30, %29
  store double %31, double* %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load double, double* %4, align 8
  %34 = call i32 @GET_HIGH_WORD(i32 %32, double %33)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 2147483647
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 -54, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 20
  %41 = sub nsw i32 %40, 1022
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, -2146435073
  %47 = or i32 %46, 1071644672
  store i32 %47, i32* %6, align 4
  %48 = load double, double* %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SET_HIGH_WORD(double %48, i32 %49)
  %51 = load double, double* %4, align 8
  store double %51, double* %3, align 8
  br label %52

52:                                               ; preds = %38, %23
  %53 = load double, double* %3, align 8
  ret double %53
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
