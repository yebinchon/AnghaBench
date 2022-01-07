; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_nei_rep_add_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_nei_rep_add_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_bss = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32 }

@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW = common dso_local global i32 0, align 4
@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4
@CHANWIDTH_80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_160MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_80P80MHZ = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WNM: Cannot determine operating class and channel\00", align 1
@PHY_TYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"WNM: Cannot determine BSS phy type for Neighbor Report\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpabuf**, i32)* @wnm_nei_rep_add_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wnm_nei_rep_add_bss(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, %struct.wpabuf** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca %struct.wpabuf**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_ht_operation*, align 8
  %18 = alloca %struct.ieee80211_vht_operation*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %7, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.ieee80211_ht_operation* null, %struct.ieee80211_ht_operation** %17, align 8
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %18, align 8
  %19 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %20 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %21 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %19, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = bitcast i32* %31 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %32, %struct.ieee80211_ht_operation** %17, align 8
  %33 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %17, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %13, align 4
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %17, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %24, %4
  %51 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %52 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %53 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = bitcast i32* %63 to %struct.ieee80211_vht_operation*
  store %struct.ieee80211_vht_operation* %64, %struct.ieee80211_vht_operation** %18, align 8
  %65 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CHANWIDTH_80MHZ, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %61
  %71 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CHANWIDTH_160MHZ, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %78 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CHANWIDTH_80P80MHZ, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76, %70, %61
  %83 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %56, %50
  %88 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @ieee80211_freq_to_channel_ext(i32 %90, i32 %91, i32 %92, i32* %11, i32* %12)
  %94 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 @wpa_printf(i32 %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %5, align 4
  br label %130

99:                                               ; preds = %87
  %100 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %101 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %17, align 8
  %104 = icmp ne %struct.ieee80211_ht_operation* %103, null
  %105 = zext i1 %104 to i32
  %106 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %107 = icmp ne %struct.ieee80211_vht_operation* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @ieee80211_get_phy_type(i32 %102, i32 %105, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @PHY_TYPE_UNSPECIFIED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 -2, i32* %5, align 4
  br label %130

116:                                              ; preds = %99
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %118 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %119 = call i32 @wnm_get_bss_info(%struct.wpa_supplicant* %117, %struct.wpa_bss* %118)
  store i32 %119, i32* %16, align 4
  %120 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %121 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %122 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @wnm_add_nei_rep(%struct.wpabuf** %120, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %116, %113, %96
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i64 @ieee80211_freq_to_channel_ext(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_get_phy_type(i32, i32, i32) #1

declare dso_local i32 @wnm_get_bss_info(%struct.wpa_supplicant*, %struct.wpa_bss*) #1

declare dso_local i32 @wnm_add_nei_rep(%struct.wpabuf**, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
