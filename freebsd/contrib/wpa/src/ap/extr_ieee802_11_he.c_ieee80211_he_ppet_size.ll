; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_ieee80211_he_ppet_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_ieee80211_he_ppet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HE_PHYCAP_PPE_THRESHOLD_PRESENT_IDX = common dso_local global i64 0, align 8
@HE_PHYCAP_PPE_THRESHOLD_PRESENT = common dso_local global i32 0, align 4
@HE_PPE_THRES_RU_INDEX_BITMASK_SHIFT = common dso_local global i32 0, align 4
@HE_PPE_THRES_RU_INDEX_BITMASK_MASK = common dso_local global i32 0, align 4
@HE_PPE_THRES_NSS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ieee80211_he_ppet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_he_ppet_size(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i64, i64* @HE_PHYCAP_PPE_THRESHOLD_PRESENT_IDX, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HE_PHYCAP_PPE_THRESHOLD_PRESENT, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @HE_PPE_THRES_RU_INDEX_BITMASK_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @HE_PPE_THRES_RU_INDEX_BITMASK_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %32, %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @HE_PPE_THRES_NSS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = add nsw i32 1, %38
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 6
  %44 = add nsw i32 %43, 7
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = srem i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
