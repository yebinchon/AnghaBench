; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_check_y2k.c_Days.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_check_y2k.c_Days.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Days(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul nsw i32 %4, 365
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 3
  %12 = sdiv i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sdiv i32 %17, 100
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sdiv i32 %23, 400
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %9, %1
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
