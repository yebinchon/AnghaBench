; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_csqrt_test.c_test_zeros.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_csqrt_test.c_test_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_zeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zeros() #0 {
  %1 = call i32 @CMPLXL(double 0.000000e+00, double 0.000000e+00)
  %2 = call i32 @t_csqrt(i32 %1)
  %3 = call i32 @CMPLXL(double 0.000000e+00, double 0.000000e+00)
  %4 = call i32 @assert_equal(i32 %2, i32 %3)
  %5 = call i32 @CMPLXL(double -0.000000e+00, double 0.000000e+00)
  %6 = call i32 @t_csqrt(i32 %5)
  %7 = call i32 @CMPLXL(double 0.000000e+00, double 0.000000e+00)
  %8 = call i32 @assert_equal(i32 %6, i32 %7)
  %9 = call i32 @CMPLXL(double 0.000000e+00, double -0.000000e+00)
  %10 = call i32 @t_csqrt(i32 %9)
  %11 = call i32 @CMPLXL(double 0.000000e+00, double -0.000000e+00)
  %12 = call i32 @assert_equal(i32 %10, i32 %11)
  %13 = call i32 @CMPLXL(double -0.000000e+00, double -0.000000e+00)
  %14 = call i32 @t_csqrt(i32 %13)
  %15 = call i32 @CMPLXL(double 0.000000e+00, double -0.000000e+00)
  %16 = call i32 @assert_equal(i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @assert_equal(i32, i32) #1

declare dso_local i32 @t_csqrt(i32) #1

declare dso_local i32 @CMPLXL(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
