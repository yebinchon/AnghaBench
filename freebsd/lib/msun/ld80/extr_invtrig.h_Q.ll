; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_invtrig.h_Q.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_invtrig.h_Q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qS1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@qS2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@qS3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@qS4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@qS5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @Q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @Q(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* @qS1, align 16
  %5 = load x86_fp80, x86_fp80* %2, align 16
  %6 = load x86_fp80, x86_fp80* @qS2, align 16
  %7 = load x86_fp80, x86_fp80* %2, align 16
  %8 = load x86_fp80, x86_fp80* @qS3, align 16
  %9 = load x86_fp80, x86_fp80* %2, align 16
  %10 = load x86_fp80, x86_fp80* @qS4, align 16
  %11 = load x86_fp80, x86_fp80* %2, align 16
  %12 = load x86_fp80, x86_fp80* @qS5, align 16
  %13 = fmul x86_fp80 %11, %12
  %14 = fadd x86_fp80 %10, %13
  %15 = fmul x86_fp80 %9, %14
  %16 = fadd x86_fp80 %8, %15
  %17 = fmul x86_fp80 %7, %16
  %18 = fadd x86_fp80 %6, %17
  %19 = fmul x86_fp80 %5, %18
  %20 = fadd x86_fp80 %4, %19
  %21 = fmul x86_fp80 %3, %20
  %22 = fadd x86_fp80 0xK3FFF8000000000000000, %21
  ret x86_fp80 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
