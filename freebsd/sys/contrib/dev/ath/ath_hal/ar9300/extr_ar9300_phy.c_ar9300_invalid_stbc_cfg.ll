; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ar9300_invalid_stbc_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ar9300_invalid_stbc_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ar9300_invalid_stbc_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_invalid_stbc_cfg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %29 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @AH_TRUE, align 4
  store i32 %8, i32* %3, align 4
  br label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 135
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9
  %16 = load i32, i32* @AH_TRUE, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load i32, i32* @AH_FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 135
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @AH_TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @AH_FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = call i32 @HALASSERT(i32 0)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* @AH_TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %27, %25, %17, %15, %7
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
