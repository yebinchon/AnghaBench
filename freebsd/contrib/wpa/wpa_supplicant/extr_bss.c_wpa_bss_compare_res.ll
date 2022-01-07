; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_compare_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_compare_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32, i64, i64, i64 }
%struct.wpa_scan_res = type { i32, i64, i64, i64 }

@WPA_BSS_FREQ_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_SIGNAL_CHANGED_FLAG = common dso_local global i32 0, align 4
@IEEE80211_CAP_PRIVACY = common dso_local global i32 0, align 4
@WPA_BSS_PRIVACY_CHANGED_FLAG = common dso_local global i32 0, align 4
@IEEE80211_CAP_IBSS = common dso_local global i32 0, align 4
@WPA_BSS_MODE_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_IES_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPA_BSS_WPAIE_CHANGED_FLAG = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WPA_BSS_RSNIE_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPS_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPA_BSS_WPS_CHANGED_FLAG = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@WPA_BSS_RATES_CHANGED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_bss*, %struct.wpa_scan_res*)* @wpa_bss_compare_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_bss_compare_res(%struct.wpa_bss* %0, %struct.wpa_scan_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca %struct.wpa_scan_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store %struct.wpa_scan_res* %1, %struct.wpa_scan_res** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = xor i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @WPA_BSS_FREQ_CHANGED_FLAG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @WPA_BSS_SIGNAL_CHANGED_FLAG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IEEE80211_CAP_PRIVACY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @WPA_BSS_PRIVACY_CHANGED_FLAG, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IEEE80211_CAP_IBSS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @WPA_BSS_MODE_CHANGED_FLAG, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %66 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %65, i64 1
  %67 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %67, i64 1
  %69 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @os_memcmp(%struct.wpa_bss* %66, %struct.wpa_scan_res* %68, i64 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %127

76:                                               ; preds = %64, %56
  %77 = load i32, i32* @WPA_BSS_IES_CHANGED_FLAG, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %81 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %82 = load i32, i32* @WPA_IE_VENDOR_TYPE, align 4
  %83 = call i32 @are_ies_equal(%struct.wpa_bss* %80, %struct.wpa_scan_res* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @WPA_BSS_WPAIE_CHANGED_FLAG, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %76
  %90 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %91 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %92 = load i32, i32* @WLAN_EID_RSN, align 4
  %93 = call i32 @are_ies_equal(%struct.wpa_bss* %90, %struct.wpa_scan_res* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @WPA_BSS_RSNIE_CHANGED_FLAG, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %101 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %102 = load i32, i32* @WPS_IE_VENDOR_TYPE, align 4
  %103 = call i32 @are_ies_equal(%struct.wpa_bss* %100, %struct.wpa_scan_res* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @WPA_BSS_WPS_CHANGED_FLAG, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %111 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %112 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %113 = call i32 @are_ies_equal(%struct.wpa_bss* %110, %struct.wpa_scan_res* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %117 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %118 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %119 = call i32 @are_ies_equal(%struct.wpa_bss* %116, %struct.wpa_scan_res* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %115, %109
  %122 = load i32, i32* @WPA_BSS_RATES_CHANGED_FLAG, align 4
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %74
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @os_memcmp(%struct.wpa_bss*, %struct.wpa_scan_res*, i64) #1

declare dso_local i32 @are_ies_equal(%struct.wpa_bss*, %struct.wpa_scan_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
