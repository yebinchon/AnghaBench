; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_cexp_test.c_test_inf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_cexp_test.c_test_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@finites = common dso_local global double* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"# Run %d..\0A\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@NAN = common dso_local global double 0.000000e+00, align 8
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@M_PI_4 = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_inf() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %23, %0
  %3 = load i32, i32* %1, align 4
  %4 = load double*, double** @finites, align 8
  %5 = call i32 @nitems(double* %4)
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load double*, double** @finites, align 8
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %10, i64 %12
  %14 = load double, double* %13, align 8
  %15 = load double, double* @INFINITY, align 8
  %16 = call i32 @CMPLXL(double %14, double %15)
  %17 = load double, double* @NAN, align 8
  %18 = load double, double* @NAN, align 8
  %19 = call i32 @CMPLXL(double %17, double %18)
  %20 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %21 = load i32, i32* @FE_INVALID, align 4
  %22 = call i32 @testall(i32 %16, i32 %19, i32 %20, i32 %21, i32 1)
  br label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %2

26:                                               ; preds = %2
  %27 = load double, double* @INFINITY, align 8
  %28 = fneg double %27
  %29 = load i32, i32* @M_PI_4, align 4
  %30 = sitofp i32 %29 to double
  %31 = call i32 @CMPLXL(double %28, double %30)
  %32 = call i32 @CMPLXL(double 0.000000e+00, double 0.000000e+00)
  %33 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %34 = load i32, i32* @FE_INEXACT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @testall(i32 %31, i32 %32, i32 %36, i32 0, i32 1)
  %38 = load double, double* @INFINITY, align 8
  %39 = fneg double %38
  %40 = load i32, i32* @M_PI_4, align 4
  %41 = mul nsw i32 3, %40
  %42 = sitofp i32 %41 to double
  %43 = call i32 @CMPLXL(double %39, double %42)
  %44 = call i32 @CMPLXL(double -0.000000e+00, double 0.000000e+00)
  %45 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %46 = load i32, i32* @FE_INEXACT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @testall(i32 %43, i32 %44, i32 %48, i32 0, i32 1)
  %50 = load double, double* @INFINITY, align 8
  %51 = fneg double %50
  %52 = load i32, i32* @M_PI_4, align 4
  %53 = mul nsw i32 5, %52
  %54 = sitofp i32 %53 to double
  %55 = call i32 @CMPLXL(double %51, double %54)
  %56 = call i32 @CMPLXL(double -0.000000e+00, double -0.000000e+00)
  %57 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %58 = load i32, i32* @FE_INEXACT, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @testall(i32 %55, i32 %56, i32 %60, i32 0, i32 1)
  %62 = load double, double* @INFINITY, align 8
  %63 = fneg double %62
  %64 = load i32, i32* @M_PI_4, align 4
  %65 = mul nsw i32 7, %64
  %66 = sitofp i32 %65 to double
  %67 = call i32 @CMPLXL(double %63, double %66)
  %68 = call i32 @CMPLXL(double 0.000000e+00, double -0.000000e+00)
  %69 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %70 = load i32, i32* @FE_INEXACT, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @testall(i32 %67, i32 %68, i32 %72, i32 0, i32 1)
  %74 = load double, double* @INFINITY, align 8
  %75 = fneg double %74
  %76 = call i32 @CMPLXL(double %75, double 0.000000e+00)
  %77 = call i32 @CMPLXL(double 0.000000e+00, double 0.000000e+00)
  %78 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %79 = call i32 @testall(i32 %76, i32 %77, i32 %78, i32 0, i32 1)
  %80 = load double, double* @INFINITY, align 8
  %81 = fneg double %80
  %82 = call i32 @CMPLXL(double %81, double -0.000000e+00)
  %83 = call i32 @CMPLXL(double 0.000000e+00, double -0.000000e+00)
  %84 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %85 = call i32 @testall(i32 %82, i32 %83, i32 %84, i32 0, i32 1)
  %86 = load double, double* @INFINITY, align 8
  %87 = load i32, i32* @M_PI_4, align 4
  %88 = sitofp i32 %87 to double
  %89 = call i32 @CMPLXL(double %86, double %88)
  %90 = load double, double* @INFINITY, align 8
  %91 = load double, double* @INFINITY, align 8
  %92 = call i32 @CMPLXL(double %90, double %91)
  %93 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %94 = load i32, i32* @FE_INEXACT, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = call i32 @testall(i32 %89, i32 %92, i32 %96, i32 0, i32 1)
  %98 = load double, double* @INFINITY, align 8
  %99 = load i32, i32* @M_PI_4, align 4
  %100 = mul nsw i32 3, %99
  %101 = sitofp i32 %100 to double
  %102 = call i32 @CMPLXL(double %98, double %101)
  %103 = load double, double* @INFINITY, align 8
  %104 = fneg double %103
  %105 = load double, double* @INFINITY, align 8
  %106 = call i32 @CMPLXL(double %104, double %105)
  %107 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %108 = load i32, i32* @FE_INEXACT, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = call i32 @testall(i32 %102, i32 %106, i32 %110, i32 0, i32 1)
  %112 = load double, double* @INFINITY, align 8
  %113 = load i32, i32* @M_PI_4, align 4
  %114 = mul nsw i32 5, %113
  %115 = sitofp i32 %114 to double
  %116 = call i32 @CMPLXL(double %112, double %115)
  %117 = load double, double* @INFINITY, align 8
  %118 = fneg double %117
  %119 = load double, double* @INFINITY, align 8
  %120 = fneg double %119
  %121 = call i32 @CMPLXL(double %118, double %120)
  %122 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %123 = load i32, i32* @FE_INEXACT, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = call i32 @testall(i32 %116, i32 %121, i32 %125, i32 0, i32 1)
  %127 = load double, double* @INFINITY, align 8
  %128 = load i32, i32* @M_PI_4, align 4
  %129 = mul nsw i32 7, %128
  %130 = sitofp i32 %129 to double
  %131 = call i32 @CMPLXL(double %127, double %130)
  %132 = load double, double* @INFINITY, align 8
  %133 = load double, double* @INFINITY, align 8
  %134 = fneg double %133
  %135 = call i32 @CMPLXL(double %132, double %134)
  %136 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %137 = load i32, i32* @FE_INEXACT, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = call i32 @testall(i32 %131, i32 %135, i32 %139, i32 0, i32 1)
  %141 = load double, double* @INFINITY, align 8
  %142 = call i32 @CMPLXL(double %141, double 0.000000e+00)
  %143 = load double, double* @INFINITY, align 8
  %144 = call i32 @CMPLXL(double %143, double 0.000000e+00)
  %145 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %146 = call i32 @testall(i32 %142, i32 %144, i32 %145, i32 0, i32 1)
  %147 = load double, double* @INFINITY, align 8
  %148 = call i32 @CMPLXL(double %147, double -0.000000e+00)
  %149 = load double, double* @INFINITY, align 8
  %150 = call i32 @CMPLXL(double %149, double -0.000000e+00)
  %151 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %152 = call i32 @testall(i32 %148, i32 %150, i32 %151, i32 0, i32 1)
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
