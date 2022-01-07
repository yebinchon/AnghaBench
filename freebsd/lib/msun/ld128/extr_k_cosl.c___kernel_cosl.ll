; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_cosl.c___kernel_cosl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_cosl.c___kernel_cosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C9 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C10 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C11 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
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
  %26 = load x86_fp80, x86_fp80* %6, align 16
  %27 = load x86_fp80, x86_fp80* @C8, align 16
  %28 = load x86_fp80, x86_fp80* %6, align 16
  %29 = load x86_fp80, x86_fp80* @C9, align 16
  %30 = load x86_fp80, x86_fp80* %6, align 16
  %31 = load x86_fp80, x86_fp80* @C10, align 16
  %32 = load x86_fp80, x86_fp80* %6, align 16
  %33 = load x86_fp80, x86_fp80* @C11, align 16
  %34 = fmul x86_fp80 %32, %33
  %35 = fadd x86_fp80 %31, %34
  %36 = fmul x86_fp80 %30, %35
  %37 = fadd x86_fp80 %29, %36
  %38 = fmul x86_fp80 %28, %37
  %39 = fadd x86_fp80 %27, %38
  %40 = fmul x86_fp80 %26, %39
  %41 = fadd x86_fp80 %25, %40
  %42 = fmul x86_fp80 %24, %41
  %43 = fadd x86_fp80 %23, %42
  %44 = fmul x86_fp80 %22, %43
  %45 = fadd x86_fp80 %21, %44
  %46 = fmul x86_fp80 %20, %45
  %47 = fadd x86_fp80 %19, %46
  %48 = fmul x86_fp80 %18, %47
  %49 = fadd x86_fp80 %17, %48
  %50 = fmul x86_fp80 %16, %49
  %51 = fadd x86_fp80 %15, %50
  %52 = fmul x86_fp80 %14, %51
  %53 = fadd x86_fp80 %13, %52
  %54 = fmul x86_fp80 %12, %53
  store x86_fp80 %54, x86_fp80* %7, align 16
  %55 = load x86_fp80, x86_fp80* %6, align 16
  %56 = fmul x86_fp80 0xK3FFE8000000000000000, %55
  store x86_fp80 %56, x86_fp80* %5, align 16
  %57 = load x86_fp80, x86_fp80* @one, align 16
  %58 = load x86_fp80, x86_fp80* %5, align 16
  %59 = fsub x86_fp80 %57, %58
  store x86_fp80 %59, x86_fp80* %8, align 16
  %60 = load x86_fp80, x86_fp80* %8, align 16
  %61 = load x86_fp80, x86_fp80* @one, align 16
  %62 = load x86_fp80, x86_fp80* %8, align 16
  %63 = fsub x86_fp80 %61, %62
  %64 = load x86_fp80, x86_fp80* %5, align 16
  %65 = fsub x86_fp80 %63, %64
  %66 = load x86_fp80, x86_fp80* %6, align 16
  %67 = load x86_fp80, x86_fp80* %7, align 16
  %68 = fmul x86_fp80 %66, %67
  %69 = load x86_fp80, x86_fp80* %3, align 16
  %70 = load x86_fp80, x86_fp80* %4, align 16
  %71 = fmul x86_fp80 %69, %70
  %72 = fsub x86_fp80 %68, %71
  %73 = fadd x86_fp80 %65, %72
  %74 = fadd x86_fp80 %60, %73
  ret x86_fp80 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
