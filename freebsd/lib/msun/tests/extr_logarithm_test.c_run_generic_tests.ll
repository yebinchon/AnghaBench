; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_logarithm_test.c_run_generic_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_logarithm_test.c_run_generic_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@NAN = common dso_local global double 0.000000e+00, align 8
@INFINITY = common dso_local global double 0.000000e+00, align 8
@FE_INVALID = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@FE_DIVBYZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_generic_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_generic_tests() #0 {
  %1 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %2 = call i32 @testall0(double 1.000000e+00, double 0.000000e+00, i32 %1, i32 0)
  %3 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %4 = call i32 @testall1(double 0.000000e+00, double 0.000000e+00, i32 %3, i32 0)
  %5 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %6 = call i32 @testall1(double -0.000000e+00, double -0.000000e+00, i32 %5, i32 0)
  %7 = load double, double* @NAN, align 8
  %8 = load double, double* @NAN, align 8
  %9 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %10 = call i32 @testall0(double %7, double %8, i32 %9, i32 0)
  %11 = load double, double* @NAN, align 8
  %12 = load double, double* @NAN, align 8
  %13 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %14 = call i32 @testall1(double %11, double %12, i32 %13, i32 0)
  %15 = load double, double* @INFINITY, align 8
  %16 = load double, double* @INFINITY, align 8
  %17 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %18 = call i32 @testall0(double %15, double %16, i32 %17, i32 0)
  %19 = load double, double* @INFINITY, align 8
  %20 = load double, double* @INFINITY, align 8
  %21 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %22 = call i32 @testall1(double %19, double %20, i32 %21, i32 0)
  %23 = load double, double* @INFINITY, align 8
  %24 = fneg double %23
  %25 = load double, double* @NAN, align 8
  %26 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %27 = load i32, i32* @FE_INVALID, align 4
  %28 = call i32 @testall0(double %24, double %25, i32 %26, i32 %27)
  %29 = load double, double* @INFINITY, align 8
  %30 = fneg double %29
  %31 = load double, double* @NAN, align 8
  %32 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %33 = load i32, i32* @FE_INVALID, align 4
  %34 = call i32 @testall1(double %30, double %31, i32 %32, i32 %33)
  %35 = load double, double* @NAN, align 8
  %36 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %37 = load i32, i32* @FE_INVALID, align 4
  %38 = call i32 @testall0(double -1.000000e+00, double %35, i32 %36, i32 %37)
  %39 = load double, double* @NAN, align 8
  %40 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %41 = load i32, i32* @FE_INVALID, align 4
  %42 = call i32 @testall1(double -1.500000e+00, double %39, i32 %40, i32 %41)
  %43 = load double, double* @INFINITY, align 8
  %44 = fneg double %43
  %45 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %46 = load i32, i32* @FE_INEXACT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* @FE_DIVBYZERO, align 4
  %50 = call i32 @testall0(double 0.000000e+00, double %44, i32 %48, i32 %49)
  %51 = load double, double* @INFINITY, align 8
  %52 = fneg double %51
  %53 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %54 = load i32, i32* @FE_INEXACT, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* @FE_DIVBYZERO, align 4
  %58 = call i32 @testall0(double -0.000000e+00, double %52, i32 %56, i32 %57)
  %59 = load double, double* @INFINITY, align 8
  %60 = fneg double %59
  %61 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %62 = load i32, i32* @FE_INEXACT, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* @FE_DIVBYZERO, align 4
  %66 = call i32 @testall1(double -1.000000e+00, double %60, i32 %64, i32 %65)
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
