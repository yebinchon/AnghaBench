; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_get_vht_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_get_vht_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vht_capabilities = type { i32 }

@VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@VHT_CAP_BEAMFORMEE_STS_MAX = common dso_local global i32 0, align 4
@VHT_CAP_SOUNDING_DIMENSION_MAX = common dso_local global i32 0, align 4
@VHT_CAP_MU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@VHT_CAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@VHT_CAP_RXSTBC_MASK = common dso_local global i32 0, align 4
@VHT_CAP_TXSTBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_get_vht_capab(%struct.hostapd_data* %0, %struct.ieee80211_vht_capabilities* %1, %struct.ieee80211_vht_capabilities* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.ieee80211_vht_capabilities*, align 8
  %6 = alloca %struct.ieee80211_vht_capabilities*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.ieee80211_vht_capabilities* %1, %struct.ieee80211_vht_capabilities** %5, align 8
  store %struct.ieee80211_vht_capabilities* %2, %struct.ieee80211_vht_capabilities** %6, align 8
  %10 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %5, align 8
  %11 = icmp eq %struct.ieee80211_vht_capabilities* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %135

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %6, align 8
  %15 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %5, align 8
  %16 = call i32 @os_memcpy(%struct.ieee80211_vht_capabilities* %14, %struct.ieee80211_vht_capabilities* %15, i32 4)
  %17 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le_to_host32(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @VHT_CAP_SHORT_GI_80, align 4
  %27 = load i32, i32* @VHT_CAP_SHORT_GI_160, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %13
  %42 = load i32, i32* @VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %43 = load i32, i32* @VHT_CAP_BEAMFORMEE_STS_MAX, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %13
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %55 = load i32, i32* @VHT_CAP_SOUNDING_DIMENSION_MAX, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %95 [
    i32 128, label %84
    i32 129, label %85
  ]

84:                                               ; preds = %80
  br label %100

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, -129
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, 129
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %89, %85
  br label %100

95:                                               ; preds = %80
  %96 = load i32, i32* @VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %95, %94, %84
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @VHT_CAP_SHORT_GI_160, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @VHT_CAP_RXSTBC_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @VHT_CAP_TXSTBC, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @VHT_CAP_TXSTBC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @VHT_CAP_RXSTBC_MASK, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @host_to_le32(i32 %131)
  %133 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %6, align 8
  %134 = getelementptr inbounds %struct.ieee80211_vht_capabilities, %struct.ieee80211_vht_capabilities* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %12
  ret void
}

declare dso_local i32 @os_memcpy(%struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities*, i32) #1

declare dso_local i32 @le_to_host32(i32) #1

declare dso_local i32 @host_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
