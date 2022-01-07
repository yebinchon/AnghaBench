; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_get_pri_sec_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_get_pri_sec_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_res = type { i32 }
%struct.ieee80211_ht_operation = type { i32, i32 }
%struct.ieee802_11_elems = type { i64 }

@HT_INFO_HT_PARAM_STA_CHNL_WIDTH = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_pri_sec_chan(%struct.wpa_scan_res* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.wpa_scan_res*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_ht_operation*, align 8
  %8 = alloca %struct.ieee802_11_elems, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_scan_res* %0, %struct.wpa_scan_res** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %12, i64 1
  %14 = bitcast %struct.wpa_scan_res* %13 to i32*
  %15 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee802_11_parse_elems(i32* %14, i32 %17, %struct.ieee802_11_elems* %8, i32 0)
  %19 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %25, %struct.ieee80211_ht_operation** %7, align 8
  %26 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HT_INFO_HT_PARAM_STA_CHNL_WIDTH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %22
  %37 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %60

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %45
  br label %61

61:                                               ; preds = %60, %22
  br label %62

62:                                               ; preds = %61, %3
  ret void
}

declare dso_local i32 @ieee802_11_parse_elems(i32*, i32, %struct.ieee802_11_elems*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
