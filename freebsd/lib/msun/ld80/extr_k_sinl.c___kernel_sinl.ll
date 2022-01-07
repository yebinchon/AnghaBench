; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_sinl.c___kernel_sinl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_sinl.c___kernel_sinl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
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
  %30 = fmul x86_fp80 %28, %29
  %31 = fadd x86_fp80 %27, %30
  %32 = fmul x86_fp80 %26, %31
  %33 = fadd x86_fp80 %25, %32
  %34 = fmul x86_fp80 %24, %33
  %35 = fadd x86_fp80 %23, %34
  %36 = fmul x86_fp80 %22, %35
  %37 = fadd x86_fp80 %21, %36
  %38 = fmul x86_fp80 %20, %37
  %39 = fadd x86_fp80 %19, %38
  %40 = fmul x86_fp80 %18, %39
  %41 = fadd x86_fp80 %17, %40
  store x86_fp80 %41, x86_fp80* %9, align 16
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %3
  %45 = load x86_fp80, x86_fp80* %5, align 16
  %46 = load x86_fp80, x86_fp80* %10, align 16
  %47 = load x86_fp80, x86_fp80* @S1, align 16
  %48 = load x86_fp80, x86_fp80* %8, align 16
  %49 = load x86_fp80, x86_fp80* %9, align 16
  %50 = fmul x86_fp80 %48, %49
  %51 = fadd x86_fp80 %47, %50
  %52 = fmul x86_fp80 %46, %51
  %53 = fadd x86_fp80 %45, %52
  store x86_fp80 %53, x86_fp80* %4, align 16
  br label %72

54:                                               ; preds = %3
  %55 = load x86_fp80, x86_fp80* %5, align 16
  %56 = load x86_fp80, x86_fp80* %8, align 16
  %57 = load x86_fp80, x86_fp80* @half, align 16
  %58 = load x86_fp80, x86_fp80* %6, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = load x86_fp80, x86_fp80* %10, align 16
  %61 = load x86_fp80, x86_fp80* %9, align 16
  %62 = fmul x86_fp80 %60, %61
  %63 = fsub x86_fp80 %59, %62
  %64 = fmul x86_fp80 %56, %63
  %65 = load x86_fp80, x86_fp80* %6, align 16
  %66 = fsub x86_fp80 %64, %65
  %67 = load x86_fp80, x86_fp80* %10, align 16
  %68 = load x86_fp80, x86_fp80* @S1, align 16
  %69 = fmul x86_fp80 %67, %68
  %70 = fsub x86_fp80 %66, %69
  %71 = fsub x86_fp80 %55, %70
  store x86_fp80 %71, x86_fp80* %4, align 16
  br label %72

72:                                               ; preds = %54, %44
  %73 = load x86_fp80, x86_fp80* %4, align 16
  ret x86_fp80 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
