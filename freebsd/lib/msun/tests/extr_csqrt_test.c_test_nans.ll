; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_csqrt_test.c_test_nans.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_csqrt_test.c_test_nans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8
@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nans() #0 {
  %1 = load double, double* @INFINITY, align 8
  %2 = load double, double* @NAN, align 8
  %3 = call i32 @CMPLXL(double %1, double %2)
  %4 = call i32 @t_csqrt(i32 %3)
  %5 = call double @creall(i32 %4)
  %6 = load double, double* @INFINITY, align 8
  %7 = fcmp oeq double %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load double, double* @INFINITY, align 8
  %11 = load double, double* @NAN, align 8
  %12 = call i32 @CMPLXL(double %10, double %11)
  %13 = call i32 @t_csqrt(i32 %12)
  %14 = call double @cimagl(i32 %13)
  %15 = call i32 @isnan(double %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load double, double* @INFINITY, align 8
  %18 = fneg double %17
  %19 = load double, double* @NAN, align 8
  %20 = call i32 @CMPLXL(double %18, double %19)
  %21 = call i32 @t_csqrt(i32 %20)
  %22 = call double @creall(i32 %21)
  %23 = call i32 @isnan(double %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load double, double* @INFINITY, align 8
  %26 = fneg double %25
  %27 = load double, double* @NAN, align 8
  %28 = call i32 @CMPLXL(double %26, double %27)
  %29 = call i32 @t_csqrt(i32 %28)
  %30 = call double @cimagl(i32 %29)
  %31 = call i32 @isinf(double %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load double, double* @NAN, align 8
  %34 = load double, double* @INFINITY, align 8
  %35 = call i32 @CMPLXL(double %33, double %34)
  %36 = call i32 @t_csqrt(i32 %35)
  %37 = load double, double* @INFINITY, align 8
  %38 = load double, double* @INFINITY, align 8
  %39 = call i32 @CMPLXL(double %37, double %38)
  %40 = call i32 @assert_equal(i32 %36, i32 %39)
  %41 = load double, double* @NAN, align 8
  %42 = load double, double* @INFINITY, align 8
  %43 = fneg double %42
  %44 = call i32 @CMPLXL(double %41, double %43)
  %45 = call i32 @t_csqrt(i32 %44)
  %46 = load double, double* @INFINITY, align 8
  %47 = load double, double* @INFINITY, align 8
  %48 = fneg double %47
  %49 = call i32 @CMPLXL(double %46, double %48)
  %50 = call i32 @assert_equal(i32 %45, i32 %49)
  %51 = load double, double* @NAN, align 8
  %52 = call i32 @CMPLXL(double 0.000000e+00, double %51)
  %53 = call i32 @t_csqrt(i32 %52)
  %54 = load double, double* @NAN, align 8
  %55 = load double, double* @NAN, align 8
  %56 = call i32 @CMPLXL(double %54, double %55)
  %57 = call i32 @assert_equal(i32 %53, i32 %56)
  %58 = load double, double* @NAN, align 8
  %59 = call i32 @CMPLXL(double -0.000000e+00, double %58)
  %60 = call i32 @t_csqrt(i32 %59)
  %61 = load double, double* @NAN, align 8
  %62 = load double, double* @NAN, align 8
  %63 = call i32 @CMPLXL(double %61, double %62)
  %64 = call i32 @assert_equal(i32 %60, i32 %63)
  %65 = load double, double* @NAN, align 8
  %66 = call i32 @CMPLXL(double 4.200000e+01, double %65)
  %67 = call i32 @t_csqrt(i32 %66)
  %68 = load double, double* @NAN, align 8
  %69 = load double, double* @NAN, align 8
  %70 = call i32 @CMPLXL(double %68, double %69)
  %71 = call i32 @assert_equal(i32 %67, i32 %70)
  %72 = load double, double* @NAN, align 8
  %73 = call i32 @CMPLXL(double -4.200000e+01, double %72)
  %74 = call i32 @t_csqrt(i32 %73)
  %75 = load double, double* @NAN, align 8
  %76 = load double, double* @NAN, align 8
  %77 = call i32 @CMPLXL(double %75, double %76)
  %78 = call i32 @assert_equal(i32 %74, i32 %77)
  %79 = load double, double* @NAN, align 8
  %80 = call i32 @CMPLXL(double %79, double 0.000000e+00)
  %81 = call i32 @t_csqrt(i32 %80)
  %82 = load double, double* @NAN, align 8
  %83 = load double, double* @NAN, align 8
  %84 = call i32 @CMPLXL(double %82, double %83)
  %85 = call i32 @assert_equal(i32 %81, i32 %84)
  %86 = load double, double* @NAN, align 8
  %87 = call i32 @CMPLXL(double %86, double -0.000000e+00)
  %88 = call i32 @t_csqrt(i32 %87)
  %89 = load double, double* @NAN, align 8
  %90 = load double, double* @NAN, align 8
  %91 = call i32 @CMPLXL(double %89, double %90)
  %92 = call i32 @assert_equal(i32 %88, i32 %91)
  %93 = load double, double* @NAN, align 8
  %94 = call i32 @CMPLXL(double %93, double 4.200000e+01)
  %95 = call i32 @t_csqrt(i32 %94)
  %96 = load double, double* @NAN, align 8
  %97 = load double, double* @NAN, align 8
  %98 = call i32 @CMPLXL(double %96, double %97)
  %99 = call i32 @assert_equal(i32 %95, i32 %98)
  %100 = load double, double* @NAN, align 8
  %101 = call i32 @CMPLXL(double %100, double -4.200000e+01)
  %102 = call i32 @t_csqrt(i32 %101)
  %103 = load double, double* @NAN, align 8
  %104 = load double, double* @NAN, align 8
  %105 = call i32 @CMPLXL(double %103, double %104)
  %106 = call i32 @assert_equal(i32 %102, i32 %105)
  %107 = load double, double* @NAN, align 8
  %108 = load double, double* @NAN, align 8
  %109 = call i32 @CMPLXL(double %107, double %108)
  %110 = call i32 @t_csqrt(i32 %109)
  %111 = load double, double* @NAN, align 8
  %112 = load double, double* @NAN, align 8
  %113 = call i32 @CMPLXL(double %111, double %112)
  %114 = call i32 @assert_equal(i32 %110, i32 %113)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local double @creall(i32) #1

declare dso_local i32 @t_csqrt(i32) #1

declare dso_local i32 @CMPLXL(double, double) #1

declare dso_local i32 @isnan(double) #1

declare dso_local double @cimagl(i32) #1

declare dso_local i32 @isinf(double) #1

declare dso_local i32 @assert_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
