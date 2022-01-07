; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_cexp_test.c_test_nan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_cexp_test.c_test_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@finites = common dso_local global double* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"# Run %d..\0A\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nan() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %50, %0
  %3 = load i32, i32* %1, align 4
  %4 = load double*, double** @finites, align 8
  %5 = call i32 @nitems(double* %4)
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %53

7:                                                ; preds = %2
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load double*, double** @finites, align 8
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %10, i64 %12
  %14 = load double, double* %13, align 8
  %15 = load double, double* @NAN, align 8
  %16 = call i32 @CMPLXL(double %14, double %15)
  %17 = load double, double* @NAN, align 8
  %18 = load double, double* @NAN, align 8
  %19 = call i32 @CMPLXL(double %17, double %18)
  %20 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %21 = load i32, i32* @FE_INVALID, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @testall(i32 %16, i32 %19, i32 %23, i32 0, i32 0)
  %25 = load double*, double** @finites, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  br label %50

32:                                               ; preds = %7
  %33 = load double, double* @NAN, align 8
  %34 = load double*, double** @finites, align 8
  %35 = load i32, i32* %1, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call i32 @CMPLXL(double %33, double %38)
  %40 = load double, double* @NAN, align 8
  %41 = load double, double* @NAN, align 8
  %42 = call i32 @CMPLXL(double %40, double %41)
  %43 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %44 = load i32, i32* @FE_INVALID, align 4
  %45 = load i32, i32* @FE_INEXACT, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = call i32 @testall(i32 %39, i32 %42, i32 %48, i32 0, i32 0)
  br label %50

50:                                               ; preds = %32, %31
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %2

53:                                               ; preds = %2
  %54 = load double, double* @NAN, align 8
  %55 = call i32 @CMPLXL(double %54, double 0.000000e+00)
  %56 = load double, double* @NAN, align 8
  %57 = call i32 @CMPLXL(double %56, double 0.000000e+00)
  %58 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %59 = call i32 @testall(i32 %55, i32 %57, i32 %58, i32 0, i32 1)
  %60 = load double, double* @NAN, align 8
  %61 = call i32 @CMPLXL(double %60, double -0.000000e+00)
  %62 = load double, double* @NAN, align 8
  %63 = call i32 @CMPLXL(double %62, double -0.000000e+00)
  %64 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %65 = call i32 @testall(i32 %61, i32 %63, i32 %64, i32 0, i32 1)
  %66 = load double, double* @INFINITY, align 8
  %67 = load double, double* @NAN, align 8
  %68 = call i32 @CMPLXL(double %66, double %67)
  %69 = load double, double* @INFINITY, align 8
  %70 = load double, double* @NAN, align 8
  %71 = call i32 @CMPLXL(double %69, double %70)
  %72 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %73 = call i32 @testall(i32 %68, i32 %71, i32 %72, i32 0, i32 0)
  %74 = load double, double* @INFINITY, align 8
  %75 = fneg double %74
  %76 = load double, double* @NAN, align 8
  %77 = call i32 @CMPLXL(double %75, double %76)
  %78 = call i32 @CMPLXL(double 0.000000e+00, double 0.000000e+00)
  %79 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %80 = call i32 @testall(i32 %77, i32 %78, i32 %79, i32 0, i32 0)
  %81 = load double, double* @NAN, align 8
  %82 = load double, double* @NAN, align 8
  %83 = call i32 @CMPLXL(double %81, double %82)
  %84 = load double, double* @NAN, align 8
  %85 = load double, double* @NAN, align 8
  %86 = call i32 @CMPLXL(double %84, double %85)
  %87 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %88 = call i32 @testall(i32 %83, i32 %86, i32 %87, i32 0, i32 0)
  ret void
}

declare dso_local i32 @nitems(double*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @testall(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CMPLXL(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
