; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_vht_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_vht_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes* }
%struct.TYPE_5__ = type { i32 }
%struct.hostapd_hw_modes = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vht_capabilities = type { i32, i32 }

@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@WLAN_EID_VHT_CAP = common dso_local global i32 0, align 4
@VHT_CAP_BEAMFORMEE_STS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_vht_capabilities(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vht_capabilities*, align 8
  %9 = alloca %struct.hostapd_hw_modes*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %16, align 8
  store %struct.hostapd_hw_modes* %17, %struct.hostapd_hw_modes** %9, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %20 = icmp ne %struct.hostapd_hw_modes* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %4, align 8
  br label %142

23:                                               ; preds = %3
  %24 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %25 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %84

29:                                               ; preds = %23
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %31 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %29
  %37 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %38 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %36
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %45, align 8
  %47 = icmp ne %struct.hostapd_hw_modes* %46, null
  br i1 %47, label %48, label %84

48:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %52 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %49
  %58 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %59 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %62, i64 %64
  %66 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %72 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %75, i64 %77
  store %struct.hostapd_hw_modes* %78, %struct.hostapd_hw_modes** %9, align 8
  br label %83

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %49

83:                                               ; preds = %70, %49
  br label %84

84:                                               ; preds = %83, %41, %36, %29, %23
  %85 = load i32, i32* @WLAN_EID_VHT_CAP, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %10, align 8
  store i32 8, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = bitcast i32* %90 to %struct.ieee80211_vht_capabilities*
  store %struct.ieee80211_vht_capabilities* %91, %struct.ieee80211_vht_capabilities** %8, align 8
  %92 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %8, align 8
  %93 = call i32 @os_memset(%struct.ieee80211_vht_capabilities* %92, i32 0, i32 8)
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %95 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @host_to_le32(i32 %100)
  %102 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %84
  %107 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le_to_host32(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @VHT_CAP_BEAMFORMEE_STS_OFFSET, align 4
  %113 = ashr i32 %111, %112
  %114 = and i32 %113, 7
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @VHT_CAP_BEAMFORMEE_STS_OFFSET, align 4
  %117 = shl i32 %115, %116
  %118 = call i32 @host_to_le32(i32 %117)
  %119 = xor i32 %118, -1
  %120 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @VHT_CAP_BEAMFORMEE_STS_OFFSET, align 4
  %126 = shl i32 %124, %125
  %127 = call i32 @host_to_le32(i32 %126)
  %128 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %8, align 8
  %129 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %106, %84
  %133 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %8, align 8
  %134 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %133, i32 0, i32 0
  %135 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %136 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @os_memcpy(i32* %134, i32 %137, i32 8)
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 8
  store i32* %140, i32** %10, align 8
  %141 = load i32*, i32** %10, align 8
  store i32* %141, i32** %4, align 8
  br label %142

142:                                              ; preds = %132, %21
  %143 = load i32*, i32** %4, align 8
  ret i32* %143
}

declare dso_local i32 @os_memset(%struct.ieee80211_vht_capabilities*, i32, i32) #1

declare dso_local i32 @host_to_le32(i32) #1

declare dso_local i32 @le_to_host32(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
