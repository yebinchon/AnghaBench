; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_eu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_eu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ieee80211_chan_to_freq_eu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_chan_to_freq_eu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %62 [
    i32 4, label %7
    i32 11, label %7
    i32 12, label %7
    i32 1, label %18
    i32 2, label %18
    i32 5, label %18
    i32 6, label %18
    i32 8, label %18
    i32 9, label %18
    i32 3, label %29
    i32 7, label %29
    i32 10, label %29
    i32 16, label %29
    i32 17, label %40
    i32 18, label %51
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
  br label %63

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 5, %15
  %17 = add nsw i32 2407, %16
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2, %2, %2, %2, %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 36
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 -1, i32* %3, align 4
  br label %63

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 5, %26
  %28 = add nsw i32 5000, %27
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %2, %2, %2, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 140
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 -1, i32* %3, align 4
  br label %63

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 5, %37
  %39 = add nsw i32 5000, %38
  store i32 %39, i32* %3, align 4
  br label %63

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 149
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 169
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i32 -1, i32* %3, align 4
  br label %63

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 5, %48
  %50 = add nsw i32 5000, %49
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %2
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  store i32 -1, i32* %3, align 4
  br label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 2160, %59
  %61 = add nsw i32 56160, %60
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %57, %47, %46, %36, %35, %25, %24, %14, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
