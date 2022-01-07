; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_invtrig.h_T_odd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_invtrig.h_T_odd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aT = common dso_local global x86_fp80* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @T_odd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @T_odd(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80*, x86_fp80** @aT, align 8
  %4 = getelementptr inbounds x86_fp80, x86_fp80* %3, i64 1
  %5 = load x86_fp80, x86_fp80* %4, align 16
  %6 = load x86_fp80, x86_fp80* %2, align 16
  %7 = load x86_fp80*, x86_fp80** @aT, align 8
  %8 = getelementptr inbounds x86_fp80, x86_fp80* %7, i64 3
  %9 = load x86_fp80, x86_fp80* %8, align 16
  %10 = load x86_fp80, x86_fp80* %2, align 16
  %11 = load x86_fp80*, x86_fp80** @aT, align 8
  %12 = getelementptr inbounds x86_fp80, x86_fp80* %11, i64 5
  %13 = load x86_fp80, x86_fp80* %12, align 16
  %14 = load x86_fp80, x86_fp80* %2, align 16
  %15 = load x86_fp80*, x86_fp80** @aT, align 8
  %16 = getelementptr inbounds x86_fp80, x86_fp80* %15, i64 7
  %17 = load x86_fp80, x86_fp80* %16, align 16
  %18 = load x86_fp80, x86_fp80* %2, align 16
  %19 = load x86_fp80*, x86_fp80** @aT, align 8
  %20 = getelementptr inbounds x86_fp80, x86_fp80* %19, i64 9
  %21 = load x86_fp80, x86_fp80* %20, align 16
  %22 = load x86_fp80, x86_fp80* %2, align 16
  %23 = load x86_fp80*, x86_fp80** @aT, align 8
  %24 = getelementptr inbounds x86_fp80, x86_fp80* %23, i64 11
  %25 = load x86_fp80, x86_fp80* %24, align 16
  %26 = fmul x86_fp80 %22, %25
  %27 = fadd x86_fp80 %21, %26
  %28 = fmul x86_fp80 %18, %27
  %29 = fadd x86_fp80 %17, %28
  %30 = fmul x86_fp80 %14, %29
  %31 = fadd x86_fp80 %13, %30
  %32 = fmul x86_fp80 %10, %31
  %33 = fadd x86_fp80 %9, %32
  %34 = fmul x86_fp80 %6, %33
  %35 = fadd x86_fp80 %5, %34
  ret x86_fp80 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
