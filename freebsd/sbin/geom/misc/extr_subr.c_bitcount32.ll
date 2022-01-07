; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_bitcount32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_bitcount32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitcount32(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1431655765
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, -1431655766
  %7 = lshr i32 %6, 1
  %8 = add i32 %4, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 858993459
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, -858993460
  %13 = lshr i32 %12, 2
  %14 = add i32 %10, %13
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 252645135
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, -252645136
  %19 = lshr i32 %18, 4
  %20 = add i32 %16, %19
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 16711935
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, -16711936
  %25 = lshr i32 %24, 8
  %26 = add i32 %22, %25
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, 65535
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, -65536
  %31 = lshr i32 %30, 16
  %32 = add i32 %28, %31
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
