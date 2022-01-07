; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_cosl.c___kernel_cosl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_cosl.c___kernel_cosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@one = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @__kernel_cosl(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = load x86_fp80, x86_fp80* %3, align 16
  %11 = fmul x86_fp80 %9, %10
  store x86_fp80 %11, x86_fp80* %6, align 16
  %12 = load x86_fp80, x86_fp80* %6, align 16
  %13 = load x86_fp80, x86_fp80* @C1, align 16
  %14 = load x86_fp80, x86_fp80* %6, align 16
  %15 = load x86_fp80, x86_fp80* @C2, align 16
  %16 = load x86_fp80, x86_fp80* %6, align 16
  %17 = load x86_fp80, x86_fp80* @C3, align 16
  %18 = load x86_fp80, x86_fp80* %6, align 16
  %19 = load x86_fp80, x86_fp80* @C4, align 16
  %20 = load x86_fp80, x86_fp80* %6, align 16
  %21 = load x86_fp80, x86_fp80* @C5, align 16
  %22 = load x86_fp80, x86_fp80* %6, align 16
  %23 = load x86_fp80, x86_fp80* @C6, align 16
  %24 = load x86_fp80, x86_fp80* %6, align 16
  %25 = load x86_fp80, x86_fp80* @C7, align 16
  %26 = fmul x86_fp80 %24, %25
  %27 = fadd x86_fp80 %23, %26
  %28 = fmul x86_fp80 %22, %27
  %29 = fadd x86_fp80 %21, %28
  %30 = fmul x86_fp80 %20, %29
  %31 = fadd x86_fp80 %19, %30
  %32 = fmul x86_fp80 %18, %31
  %33 = fadd x86_fp80 %17, %32
  %34 = fmul x86_fp80 %16, %33
  %35 = fadd x86_fp80 %15, %34
  %36 = fmul x86_fp80 %14, %35
  %37 = fadd x86_fp80 %13, %36
  %38 = fmul x86_fp80 %12, %37
  store x86_fp80 %38, x86_fp80* %7, align 16
  %39 = load x86_fp80, x86_fp80* %6, align 16
  %40 = fmul x86_fp80 0xK3FFE8000000000000000, %39
  store x86_fp80 %40, x86_fp80* %5, align 16
  %41 = load x86_fp80, x86_fp80* @one, align 16
  %42 = load x86_fp80, x86_fp80* %5, align 16
  %43 = fsub x86_fp80 %41, %42
  store x86_fp80 %43, x86_fp80* %8, align 16
  %44 = load x86_fp80, x86_fp80* %8, align 16
  %45 = load x86_fp80, x86_fp80* @one, align 16
  %46 = load x86_fp80, x86_fp80* %8, align 16
  %47 = fsub x86_fp80 %45, %46
  %48 = load x86_fp80, x86_fp80* %5, align 16
  %49 = fsub x86_fp80 %47, %48
  %50 = load x86_fp80, x86_fp80* %6, align 16
  %51 = load x86_fp80, x86_fp80* %7, align 16
  %52 = fmul x86_fp80 %50, %51
  %53 = load x86_fp80, x86_fp80* %3, align 16
  %54 = load x86_fp80, x86_fp80* %4, align 16
  %55 = fmul x86_fp80 %53, %54
  %56 = fsub x86_fp80 %52, %55
  %57 = fadd x86_fp80 %49, %56
  %58 = fadd x86_fp80 %44, %57
  ret x86_fp80 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
