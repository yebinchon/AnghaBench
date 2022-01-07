; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fmaxmin_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fmaxmin_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..12\0A\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@NAN = common dso_local global double 0.000000e+00, align 8
@comment = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @testall(i32 1, double 1.000000e+00, double 0.000000e+00)
  %4 = load double, double* @INFINITY, align 8
  %5 = fneg double %4
  %6 = call double @nextafterf(double 4.200000e+01, double %5)
  %7 = call i32 @testall(i32 2, double 4.200000e+01, double %6)
  %8 = load double, double* @INFINITY, align 8
  %9 = call double @nextafterf(double 4.200000e+01, double %8)
  %10 = call i32 @testall(i32 3, double %9, double 4.200000e+01)
  %11 = call i32 @testall(i32 4, double -5.000000e+00, double -5.000000e+00)
  %12 = call i32 @testall(i32 5, double -3.000000e+00, double -4.000000e+00)
  %13 = load double, double* @NAN, align 8
  %14 = call i32 @testall(i32 6, double 1.000000e+00, double %13)
  %15 = load double, double* @INFINITY, align 8
  %16 = load double, double* @NAN, align 8
  %17 = call i32 @testall(i32 7, double %15, double %16)
  store i8* null, i8** @comment, align 8
  %18 = load double, double* @INFINITY, align 8
  %19 = call i32 @testall(i32 8, double %18, double 1.000000e+00)
  %20 = load double, double* @INFINITY, align 8
  %21 = fneg double %20
  %22 = call i32 @testall(i32 9, double -3.000000e+00, double %21)
  %23 = load double, double* @INFINITY, align 8
  %24 = fneg double %23
  %25 = call i32 @testall(i32 10, double 3.000000e+00, double %24)
  %26 = load double, double* @NAN, align 8
  %27 = load double, double* @NAN, align 8
  %28 = call i32 @testall(i32 11, double %26, double %27)
  %29 = call i32 @testall(i32 12, double 0.000000e+00, double -0.000000e+00)
  store i8* null, i8** @comment, align 8
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @testall(i32, double, double) #1

declare dso_local double @nextafterf(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
