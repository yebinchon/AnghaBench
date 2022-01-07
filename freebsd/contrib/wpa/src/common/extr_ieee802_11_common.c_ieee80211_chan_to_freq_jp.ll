; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_jp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_jp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ieee80211_chan_to_freq_jp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_chan_to_freq_jp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %59 [
    i32 30, label %7
    i32 56, label %7
    i32 57, label %7
    i32 31, label %18
    i32 1, label %26
    i32 32, label %26
    i32 33, label %26
    i32 36, label %26
    i32 37, label %26
    i32 38, label %26
    i32 41, label %26
    i32 42, label %26
    i32 43, label %26
    i32 34, label %37
    i32 35, label %37
    i32 39, label %37
    i32 40, label %37
    i32 44, label %37
    i32 45, label %37
    i32 58, label %37
    i32 59, label %48
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 13
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  store i32 -1, i32* %3, align 4
  br label %60

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 5, %15
  %17 = add nsw i32 2407, %16
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 14
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %60

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 5, %23
  %25 = add nsw i32 2414, %24
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 34
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 64
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 -1, i32* %3, align 4
  br label %60

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 5, %34
  %36 = add nsw i32 5000, %35
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 140
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 -1, i32* %3, align 4
  br label %60

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 5, %45
  %47 = add nsw i32 5000, %46
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  store i32 -1, i32* %3, align 4
  br label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 2160, %56
  %58 = add nsw i32 56160, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %55, %54, %44, %43, %33, %32, %22, %21, %14, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
