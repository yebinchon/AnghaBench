; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_get_hdr_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_get_hdr_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32 }

@WLAN_FC_STYPE_PSPOLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_hdr_bssid(%struct.ieee80211_hdr* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %9, 16
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %52

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le_to_host16(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @WLAN_FC_GET_TYPE(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @WLAN_FC_GET_STYPE(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %51 [
    i32 129, label %22
    i32 130, label %38
    i32 128, label %47
  ]

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %23, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %52

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 135
  switch i32 %28, label %37 [
    i32 135, label %29
    i32 131, label %29
    i32 132, label %33
  ]

29:                                               ; preds = %26, %26
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %3, align 8
  br label %52

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %3, align 8
  br label %52

37:                                               ; preds = %26
  store i32* null, i32** %3, align 8
  br label %52

38:                                               ; preds = %12
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @WLAN_FC_STYPE_PSPOLL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %52

43:                                               ; preds = %38
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %3, align 8
  br label %52

47:                                               ; preds = %12
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %3, align 8
  br label %52

51:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %52

52:                                               ; preds = %51, %47, %43, %42, %37, %33, %29, %25, %11
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
