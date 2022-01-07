; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_invtrig.h_P.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_invtrig.h_P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pS0 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pS9 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @P to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @P(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* @pS0, align 16
  %5 = load x86_fp80, x86_fp80* %2, align 16
  %6 = load x86_fp80, x86_fp80* @pS1, align 16
  %7 = load x86_fp80, x86_fp80* %2, align 16
  %8 = load x86_fp80, x86_fp80* @pS2, align 16
  %9 = load x86_fp80, x86_fp80* %2, align 16
  %10 = load x86_fp80, x86_fp80* @pS3, align 16
  %11 = load x86_fp80, x86_fp80* %2, align 16
  %12 = load x86_fp80, x86_fp80* @pS4, align 16
  %13 = load x86_fp80, x86_fp80* %2, align 16
  %14 = load x86_fp80, x86_fp80* @pS5, align 16
  %15 = load x86_fp80, x86_fp80* %2, align 16
  %16 = load x86_fp80, x86_fp80* @pS6, align 16
  %17 = load x86_fp80, x86_fp80* %2, align 16
  %18 = load x86_fp80, x86_fp80* @pS7, align 16
  %19 = load x86_fp80, x86_fp80* %2, align 16
  %20 = load x86_fp80, x86_fp80* @pS8, align 16
  %21 = load x86_fp80, x86_fp80* %2, align 16
  %22 = load x86_fp80, x86_fp80* @pS9, align 16
  %23 = fmul x86_fp80 %21, %22
  %24 = fadd x86_fp80 %20, %23
  %25 = fmul x86_fp80 %19, %24
  %26 = fadd x86_fp80 %18, %25
  %27 = fmul x86_fp80 %17, %26
  %28 = fadd x86_fp80 %16, %27
  %29 = fmul x86_fp80 %15, %28
  %30 = fadd x86_fp80 %14, %29
  %31 = fmul x86_fp80 %13, %30
  %32 = fadd x86_fp80 %12, %31
  %33 = fmul x86_fp80 %11, %32
  %34 = fadd x86_fp80 %10, %33
  %35 = fmul x86_fp80 %9, %34
  %36 = fadd x86_fp80 %8, %35
  %37 = fmul x86_fp80 %7, %36
  %38 = fadd x86_fp80 %6, %37
  %39 = fmul x86_fp80 %5, %38
  %40 = fadd x86_fp80 %4, %39
  %41 = fmul x86_fp80 %3, %40
  ret x86_fp80 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
