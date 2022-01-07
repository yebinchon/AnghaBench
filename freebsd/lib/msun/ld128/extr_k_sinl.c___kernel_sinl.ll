; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_sinl.c___kernel_sinl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_sinl.c___kernel_sinl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S9 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S10 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S11 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S12 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@half = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @__kernel_sinl(x86_fp80 %0, x86_fp80 %1, i32 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store i32 %2, i32* %7, align 4
  %11 = load x86_fp80, x86_fp80* %5, align 16
  %12 = load x86_fp80, x86_fp80* %5, align 16
  %13 = fmul x86_fp80 %11, %12
  store x86_fp80 %13, x86_fp80* %8, align 16
  %14 = load x86_fp80, x86_fp80* %8, align 16
  %15 = load x86_fp80, x86_fp80* %5, align 16
  %16 = fmul x86_fp80 %14, %15
  store x86_fp80 %16, x86_fp80* %10, align 16
  %17 = load x86_fp80, x86_fp80* @S2, align 16
  %18 = load x86_fp80, x86_fp80* %8, align 16
  %19 = load x86_fp80, x86_fp80* @S3, align 16
  %20 = load x86_fp80, x86_fp80* %8, align 16
  %21 = load x86_fp80, x86_fp80* @S4, align 16
  %22 = load x86_fp80, x86_fp80* %8, align 16
  %23 = load x86_fp80, x86_fp80* @S5, align 16
  %24 = load x86_fp80, x86_fp80* %8, align 16
  %25 = load x86_fp80, x86_fp80* @S6, align 16
  %26 = load x86_fp80, x86_fp80* %8, align 16
  %27 = load x86_fp80, x86_fp80* @S7, align 16
  %28 = load x86_fp80, x86_fp80* %8, align 16
  %29 = load x86_fp80, x86_fp80* @S8, align 16
  %30 = load x86_fp80, x86_fp80* %8, align 16
  %31 = load x86_fp80, x86_fp80* @S9, align 16
  %32 = load x86_fp80, x86_fp80* %8, align 16
  %33 = load x86_fp80, x86_fp80* @S10, align 16
  %34 = load x86_fp80, x86_fp80* %8, align 16
  %35 = load x86_fp80, x86_fp80* @S11, align 16
  %36 = load x86_fp80, x86_fp80* %8, align 16
  %37 = load x86_fp80, x86_fp80* @S12, align 16
  %38 = fmul x86_fp80 %36, %37
  %39 = fadd x86_fp80 %35, %38
  %40 = fmul x86_fp80 %34, %39
  %41 = fadd x86_fp80 %33, %40
  %42 = fmul x86_fp80 %32, %41
  %43 = fadd x86_fp80 %31, %42
  %44 = fmul x86_fp80 %30, %43
  %45 = fadd x86_fp80 %29, %44
  %46 = fmul x86_fp80 %28, %45
  %47 = fadd x86_fp80 %27, %46
  %48 = fmul x86_fp80 %26, %47
  %49 = fadd x86_fp80 %25, %48
  %50 = fmul x86_fp80 %24, %49
  %51 = fadd x86_fp80 %23, %50
  %52 = fmul x86_fp80 %22, %51
  %53 = fadd x86_fp80 %21, %52
  %54 = fmul x86_fp80 %20, %53
  %55 = fadd x86_fp80 %19, %54
  %56 = fmul x86_fp80 %18, %55
  %57 = fadd x86_fp80 %17, %56
  store x86_fp80 %57, x86_fp80* %9, align 16
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %3
  %61 = load x86_fp80, x86_fp80* %5, align 16
  %62 = load x86_fp80, x86_fp80* %10, align 16
  %63 = load x86_fp80, x86_fp80* @S1, align 16
  %64 = load x86_fp80, x86_fp80* %8, align 16
  %65 = load x86_fp80, x86_fp80* %9, align 16
  %66 = fmul x86_fp80 %64, %65
  %67 = fadd x86_fp80 %63, %66
  %68 = fmul x86_fp80 %62, %67
  %69 = fadd x86_fp80 %61, %68
  store x86_fp80 %69, x86_fp80* %4, align 16
  br label %88

70:                                               ; preds = %3
  %71 = load x86_fp80, x86_fp80* %5, align 16
  %72 = load x86_fp80, x86_fp80* %8, align 16
  %73 = load x86_fp80, x86_fp80* @half, align 16
  %74 = load x86_fp80, x86_fp80* %6, align 16
  %75 = fmul x86_fp80 %73, %74
  %76 = load x86_fp80, x86_fp80* %10, align 16
  %77 = load x86_fp80, x86_fp80* %9, align 16
  %78 = fmul x86_fp80 %76, %77
  %79 = fsub x86_fp80 %75, %78
  %80 = fmul x86_fp80 %72, %79
  %81 = load x86_fp80, x86_fp80* %6, align 16
  %82 = fsub x86_fp80 %80, %81
  %83 = load x86_fp80, x86_fp80* %10, align 16
  %84 = load x86_fp80, x86_fp80* @S1, align 16
  %85 = fmul x86_fp80 %83, %84
  %86 = fsub x86_fp80 %82, %85
  %87 = fsub x86_fp80 %71, %86
  store x86_fp80 %87, x86_fp80* %4, align 16
  br label %88

88:                                               ; preds = %70, %60
  %89 = load x86_fp80, x86_fp80* %4, align 16
  ret x86_fp80 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
