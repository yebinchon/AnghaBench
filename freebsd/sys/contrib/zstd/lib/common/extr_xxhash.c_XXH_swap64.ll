; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/common/extr_xxhash.c_XXH_swap64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/common/extr_xxhash.c_XXH_swap64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @XXH_swap64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_swap64(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 56
  %5 = sext i32 %4 to i64
  %6 = and i64 %5, -72057594037927936
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %7, 40
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, 71776119061217280
  %11 = or i64 %6, %10
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 %12, 24
  %14 = sext i32 %13 to i64
  %15 = and i64 %14, 280375465082880
  %16 = or i64 %11, %15
  %17 = load i32, i32* %2, align 4
  %18 = shl i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 1095216660480
  %21 = or i64 %16, %20
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 4278190080
  %26 = or i64 %21, %25
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 24
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 16711680
  %31 = or i64 %26, %30
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 40
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, 65280
  %36 = or i64 %31, %35
  %37 = load i32, i32* %2, align 4
  %38 = ashr i32 %37, 56
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 255
  %41 = or i64 %36, %40
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
