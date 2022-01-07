; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_floatunsdidf.c___floatunsdidf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_floatunsdidf.c___floatunsdidf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i64* }

@H = common dso_local global i64 0, align 8
@LONG_BITS = common dso_local global i32 0, align 4
@L = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__floatunsdidf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca %union.uu, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = bitcast %union.uu* %4 to i32*
  store i32 %5, i32* %6, align 8
  %7 = bitcast %union.uu* %4 to i64**
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @H, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = sitofp i64 %11 to double
  %13 = load i32, i32* @LONG_BITS, align 4
  %14 = sub nsw i32 %13, 2
  %15 = shl i32 1, %14
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 4.000000e+00
  %18 = fmul double %12, %17
  store double %18, double* %3, align 8
  %19 = bitcast %union.uu* %4 to i64**
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @L, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to double
  %25 = load double, double* %3, align 8
  %26 = fadd double %25, %24
  store double %26, double* %3, align 8
  %27 = load double, double* %3, align 8
  ret double %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
