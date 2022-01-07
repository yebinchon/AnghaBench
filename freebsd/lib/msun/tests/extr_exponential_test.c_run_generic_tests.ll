; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_exponential_test.c_run_generic_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_exponential_test.c_run_generic_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@NAN = common dso_local global double 0.000000e+00, align 8
@INFINITY = common dso_local global double 0.000000e+00, align 8
@FE_INEXACT = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_generic_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_generic_tests() #0 {
  %1 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %2 = call i32 @testall0(double 0.000000e+00, double 1.000000e+00, i32 %1, i32 0)
  %3 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %4 = call i32 @testall1(double 0.000000e+00, double 0.000000e+00, i32 %3, i32 0)
  %5 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %6 = call i32 @testall0(double -0.000000e+00, double 1.000000e+00, i32 %5, i32 0)
  %7 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %8 = call i32 @testall1(double -0.000000e+00, double -0.000000e+00, i32 %7, i32 0)
  %9 = load double, double* @NAN, align 8
  %10 = load double, double* @NAN, align 8
  %11 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %12 = call i32 @testall0(double %9, double %10, i32 %11, i32 0)
  %13 = load double, double* @NAN, align 8
  %14 = load double, double* @NAN, align 8
  %15 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %16 = call i32 @testall1(double %13, double %14, i32 %15, i32 0)
  %17 = load double, double* @INFINITY, align 8
  %18 = load double, double* @INFINITY, align 8
  %19 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %20 = call i32 @testall0(double %17, double %18, i32 %19, i32 0)
  %21 = load double, double* @INFINITY, align 8
  %22 = load double, double* @INFINITY, align 8
  %23 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %24 = call i32 @testall1(double %21, double %22, i32 %23, i32 0)
  %25 = load double, double* @INFINITY, align 8
  %26 = fneg double %25
  %27 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %28 = call i32 @testall0(double %26, double 0.000000e+00, i32 %27, i32 0)
  %29 = load double, double* @INFINITY, align 8
  %30 = fneg double %29
  %31 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %32 = call i32 @testall1(double %30, double -1.000000e+00, i32 %31, i32 0)
  %33 = load double, double* @INFINITY, align 8
  %34 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %35 = load i32, i32* @FE_INEXACT, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @FE_OVERFLOW, align 4
  %39 = call i32 @testall0(double 5.000000e+04, double %33, i32 %37, i32 %38)
  %40 = load double, double* @INFINITY, align 8
  %41 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %42 = load i32, i32* @FE_INEXACT, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* @FE_OVERFLOW, align 4
  %46 = call i32 @testall1(double 5.000000e+04, double %40, i32 %44, i32 %45)
  %47 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %48 = load i32, i32* @FE_UNDERFLOW, align 4
  %49 = load i32, i32* @FE_INEXACT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @testall0(double -5.000000e+04, double 0.000000e+00, i32 %47, i32 %50)
  %52 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %53 = load i32, i32* @FE_INEXACT, align 4
  %54 = call i32 @testall1(double -5.000000e+04, double -1.000000e+00, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @testall0(double, double, i32, i32) #1

declare dso_local i32 @testall1(double, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
