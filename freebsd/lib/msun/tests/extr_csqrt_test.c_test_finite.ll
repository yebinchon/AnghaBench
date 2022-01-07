; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_csqrt_test.c_test_finite.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_csqrt_test.c_test_finite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_finite.tests = internal constant [76 x double] [double 0.000000e+00, double 8.000000e+00, double 2.000000e+00, double 2.000000e+00, double 0.000000e+00, double -8.000000e+00, double 2.000000e+00, double -2.000000e+00, double 4.000000e+00, double 0.000000e+00, double 2.000000e+00, double 0.000000e+00, double -4.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 2.000000e+00, double 1.000000e+00, double 3.000000e+00, double -4.000000e+00, double 2.000000e+00, double -1.000000e+00, double -3.000000e+00, double 4.000000e+00, double 1.000000e+00, double 2.000000e+00, double -3.000000e+00, double -4.000000e+00, double 1.000000e+00, double -2.000000e+00, double 5.000000e+00, double 1.200000e+01, double 3.000000e+00, double 2.000000e+00, double 7.000000e+00, double 2.400000e+01, double 4.000000e+00, double 3.000000e+00, double 9.000000e+00, double 4.000000e+01, double 5.000000e+00, double 4.000000e+00, double 1.100000e+01, double 6.000000e+01, double 6.000000e+00, double 5.000000e+00, double 1.300000e+01, double 8.400000e+01, double 7.000000e+00, double 6.000000e+00, double 3.300000e+01, double 5.600000e+01, double 7.000000e+00, double 4.000000e+00, double 3.900000e+01, double 8.000000e+01, double 8.000000e+00, double 5.000000e+00, double 6.500000e+01, double 7.200000e+01, double 9.000000e+00, double 4.000000e+00, double 9.870000e+02, double 9.916000e+03, double 7.400000e+01, double 6.700000e+01, double 5.289000e+03, double 6.640000e+03, double 8.300000e+01, double 4.000000e+01, double 0x425AD1F448D4C000, double 0x420F38E1B8E00000, double 6.789100e+05, double 1.234500e+04], align 16
@test_finite.mults = internal constant [7 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 1.300000e+01, double 1.600000e+01, double 0x41D0000000000000, double 0x3E10000000000000], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_finite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_finite() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %80, %0
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @nitems(double* getelementptr inbounds ([76 x double], [76 x double]* @test_finite.tests, i64 0, i64 0))
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %76, %11
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @nitems(double* getelementptr inbounds ([7 x double], [7 x double]* @test_finite.mults, i64 0, i64 0))
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [76 x double], [76 x double]* @test_finite.tests, i64 0, i64 %18
  %20 = load double, double* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [7 x double], [7 x double]* @test_finite.mults, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = fmul double %20, %24
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x double], [7 x double]* @test_finite.mults, i64 0, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fmul double %25, %29
  store double %30, double* %1, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [76 x double], [76 x double]* @test_finite.tests, i64 0, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [7 x double], [7 x double]* @test_finite.mults, i64 0, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fmul double %35, %39
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [7 x double], [7 x double]* @test_finite.mults, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fmul double %40, %44
  store double %45, double* %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 2
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [76 x double], [76 x double]* @test_finite.tests, i64 0, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [7 x double], [7 x double]* @test_finite.mults, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fmul double %50, %54
  store double %55, double* %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 3
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [76 x double], [76 x double]* @test_finite.tests, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [7 x double], [7 x double]* @test_finite.mults, i64 0, i64 %62
  %64 = load double, double* %63, align 8
  %65 = fmul double %60, %64
  store double %65, double* %4, align 8
  %66 = load double, double* %1, align 8
  %67 = load double, double* %2, align 8
  %68 = call i64 @CMPLXL(double %66, double %67)
  %69 = call i64 @t_csqrt(i64 %68)
  %70 = load double, double* %3, align 8
  %71 = load double, double* %4, align 8
  %72 = call i64 @CMPLXL(double %70, double %71)
  %73 = icmp eq i64 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  br label %76

76:                                               ; preds = %16
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %12

79:                                               ; preds = %12
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 4
  store i32 %82, i32* %5, align 4
  br label %7

83:                                               ; preds = %7
  ret void
}

declare dso_local i32 @nitems(double*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @t_csqrt(i64) #1

declare dso_local i64 @CMPLXL(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
