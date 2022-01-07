; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_rem_test.c_test_invalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_rem_test.c_test_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, x86_fp80)* @test_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  store i32 -559038737, i32* %5, align 4
  %6 = load x86_fp80, x86_fp80* %3, align 16
  %7 = load x86_fp80, x86_fp80* %4, align 16
  %8 = call i32 @remainder(x86_fp80 %6, x86_fp80 %7)
  %9 = call i32 @isnan(i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load x86_fp80, x86_fp80* %3, align 16
  %12 = load x86_fp80, x86_fp80* %4, align 16
  %13 = call i32 @remquo(x86_fp80 %11, x86_fp80 %12, i32* %5)
  %14 = call i32 @isnan(i32 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load x86_fp80, x86_fp80* %3, align 16
  %17 = load x86_fp80, x86_fp80* %4, align 16
  %18 = call i32 @remainderf(x86_fp80 %16, x86_fp80 %17)
  %19 = call i32 @isnan(i32 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load x86_fp80, x86_fp80* %3, align 16
  %22 = load x86_fp80, x86_fp80* %4, align 16
  %23 = call i32 @remquof(x86_fp80 %21, x86_fp80 %22, i32* %5)
  %24 = call i32 @isnan(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load x86_fp80, x86_fp80* %3, align 16
  %27 = load x86_fp80, x86_fp80* %4, align 16
  %28 = call i32 @remainderl(x86_fp80 %26, x86_fp80 %27)
  %29 = call i32 @isnan(i32 %28)
  %30 = call i32 @assert(i32 %29)
  %31 = load x86_fp80, x86_fp80* %3, align 16
  %32 = load x86_fp80, x86_fp80* %4, align 16
  %33 = call i32 @remquol(x86_fp80 %31, x86_fp80 %32, i32* %5)
  %34 = call i32 @isnan(i32 %33)
  %35 = call i32 @assert(i32 %34)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isnan(i32) #1

declare dso_local i32 @remainder(x86_fp80, x86_fp80) #1

declare dso_local i32 @remquo(x86_fp80, x86_fp80, i32*) #1

declare dso_local i32 @remainderf(x86_fp80, x86_fp80) #1

declare dso_local i32 @remquof(x86_fp80, x86_fp80, i32*) #1

declare dso_local i32 @remainderl(x86_fp80, x86_fp80) #1

declare dso_local i32 @remquol(x86_fp80, x86_fp80, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
