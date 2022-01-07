; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_estimate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dh_estimate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 112
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2048, i32* %2, align 4
  br label %16

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 128
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 3072, i32* %2, align 4
  br label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 192
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 7680, i32* %2, align 4
  br label %16

15:                                               ; preds = %11
  store i32 8192, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %10, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
