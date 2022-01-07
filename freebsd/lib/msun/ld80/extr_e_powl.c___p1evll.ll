; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c___p1evll.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c___p1evll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80*, i32)* @__p1evll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @__p1evll(x86_fp80 %0, x86_fp80* %1, i32 %2) #0 {
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
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load x86_fp80, x86_fp80* %4, align 16
  %13 = load x86_fp80*, x86_fp80** %8, align 8
  %14 = getelementptr inbounds x86_fp80, x86_fp80* %13, i32 1
  store x86_fp80* %14, x86_fp80** %8, align 8
  %15 = load x86_fp80, x86_fp80* %13, align 16
  %16 = fadd x86_fp80 %12, %15
  store x86_fp80 %16, x86_fp80* %7, align 16
  br label %17

17:                                               ; preds = %25, %3
  %18 = load x86_fp80, x86_fp80* %7, align 16
  %19 = load x86_fp80, x86_fp80* %4, align 16
  %20 = fmul x86_fp80 %18, %19
  %21 = load x86_fp80*, x86_fp80** %8, align 8
  %22 = getelementptr inbounds x86_fp80, x86_fp80* %21, i32 1
  store x86_fp80* %22, x86_fp80** %8, align 8
  %23 = load x86_fp80, x86_fp80* %21, align 16
  %24 = fadd x86_fp80 %20, %23
  store x86_fp80 %24, x86_fp80* %7, align 16
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %17, label %29

29:                                               ; preds = %25
  %30 = load x86_fp80, x86_fp80* %7, align 16
  ret x86_fp80 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
