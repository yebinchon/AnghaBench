; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-swap.h_cvmx_swap64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-swap.h_cvmx_swap64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cvmx_swap64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_swap64(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 56
  %5 = sext i32 %4 to i64
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 48
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, 255
  %10 = shl i64 %9, 8
  %11 = or i64 %5, %10
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 40
  %14 = sext i32 %13 to i64
  %15 = and i64 %14, 255
  %16 = shl i64 %15, 16
  %17 = or i64 %11, %16
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 255
  %22 = shl i64 %21, 24
  %23 = or i64 %17, %22
  %24 = load i32, i32* %2, align 4
  %25 = ashr i32 %24, 24
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 255
  %28 = shl i64 %27, 32
  %29 = or i64 %23, %28
  %30 = load i32, i32* %2, align 4
  %31 = ashr i32 %30, 16
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, 255
  %34 = shl i64 %33, 40
  %35 = or i64 %29, %34
  %36 = load i32, i32* %2, align 4
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 255
  %40 = shl i64 %39, 48
  %41 = or i64 %35, %40
  %42 = load i32, i32* %2, align 4
  %43 = ashr i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 255
  %46 = shl i64 %45, 56
  %47 = or i64 %41, %46
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
