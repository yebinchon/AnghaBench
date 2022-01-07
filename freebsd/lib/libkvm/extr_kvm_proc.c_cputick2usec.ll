; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_proc.c_cputick2usec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_proc.c_cputick2usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_tick_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cputick2usec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cputick2usec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @cpu_tick_frequency, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp sgt i64 %9, 18446744073709551
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @cpu_tick_frequency, align 4
  %14 = sdiv i32 %13, 1000000
  %15 = sdiv i32 %12, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp sgt i64 %18, 18446744073709
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = load i32, i32* @cpu_tick_frequency, align 4
  %24 = sdiv i32 %23, 1000
  %25 = sdiv i32 %22, %24
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 1000000
  %29 = load i32, i32* @cpu_tick_frequency, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %20, %11, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
