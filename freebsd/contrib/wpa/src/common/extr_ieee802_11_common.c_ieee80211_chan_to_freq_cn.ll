; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_cn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_cn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ieee80211_chan_to_freq_cn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_chan_to_freq_cn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %40 [
    i32 7, label %7
    i32 8, label %7
    i32 9, label %7
    i32 1, label %18
    i32 2, label %18
    i32 4, label %18
    i32 5, label %18
    i32 3, label %29
    i32 6, label %29
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
  br label %41

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 5, %15
  %17 = add nsw i32 2407, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2, %2, %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 36
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 -1, i32* %3, align 4
  br label %41

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 5, %26
  %28 = add nsw i32 5000, %27
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %2, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 149
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 165
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 -1, i32* %3, align 4
  br label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 5, %37
  %39 = add nsw i32 5000, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %36, %35, %25, %24, %14, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
