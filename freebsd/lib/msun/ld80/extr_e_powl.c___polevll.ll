; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c___polevll.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c___polevll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80*, i32)* @__polevll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @__polevll(x86_fp80 %0, x86_fp80* %1, i32 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80*, align 8
  %6 = alloca i32, align 4
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80*, align 8
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80* %1, x86_fp80** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80* %9, x86_fp80** %8, align 8
  %10 = load x86_fp80*, x86_fp80** %8, align 8
  %11 = getelementptr inbounds x86_fp80, x86_fp80* %10, i32 1
  store x86_fp80* %11, x86_fp80** %8, align 8
  %12 = load x86_fp80, x86_fp80* %10, align 16
  store x86_fp80 %12, x86_fp80* %7, align 16
  br label %13

13:                                               ; preds = %21, %3
  %14 = load x86_fp80, x86_fp80* %7, align 16
  %15 = load x86_fp80, x86_fp80* %4, align 16
  %16 = fmul x86_fp80 %14, %15
  %17 = load x86_fp80*, x86_fp80** %8, align 8
  %18 = getelementptr inbounds x86_fp80, x86_fp80* %17, i32 1
  store x86_fp80* %18, x86_fp80** %8, align 8
  %19 = load x86_fp80, x86_fp80* %17, align 16
  %20 = fadd x86_fp80 %16, %19
  store x86_fp80 %20, x86_fp80* %7, align 16
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %13, label %25

25:                                               ; preds = %21
  %26 = load x86_fp80, x86_fp80* %7, align 16
  ret x86_fp80 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
