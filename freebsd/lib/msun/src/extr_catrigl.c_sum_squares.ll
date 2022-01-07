; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigl.c_sum_squares.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigl.c_sum_squares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQRT_MIN = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80)* @sum_squares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @sum_squares(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %6 = load x86_fp80, x86_fp80* %5, align 16
  %7 = load x86_fp80, x86_fp80* @SQRT_MIN, align 16
  %8 = fcmp olt x86_fp80 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load x86_fp80, x86_fp80* %4, align 16
  %11 = load x86_fp80, x86_fp80* %4, align 16
  %12 = fmul x86_fp80 %10, %11
  store x86_fp80 %12, x86_fp80* %3, align 16
  br label %21

13:                                               ; preds = %2
  %14 = load x86_fp80, x86_fp80* %4, align 16
  %15 = load x86_fp80, x86_fp80* %4, align 16
  %16 = fmul x86_fp80 %14, %15
  %17 = load x86_fp80, x86_fp80* %5, align 16
  %18 = load x86_fp80, x86_fp80* %5, align 16
  %19 = fmul x86_fp80 %17, %18
  %20 = fadd x86_fp80 %16, %19
  store x86_fp80 %20, x86_fp80* %3, align 16
  br label %21

21:                                               ; preds = %13, %9
  %22 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
