; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_he_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_he_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.ieee80211_he_operation = type { i32, i32 }

@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_EXT_HE_OPERATION = common dso_local global i32 0, align 4
@HE_OPERATION_DFLT_PE_DURATION_OFFSET = common dso_local global i32 0, align 4
@HE_OPERATION_TWT_REQUIRED = common dso_local global i32 0, align 4
@HE_OPERATION_RTS_THRESHOLD_OFFSET = common dso_local global i32 0, align 4
@HE_OPERATION_BSS_COLOR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_he_operation(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_he_operation*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %7, align 8
  store i32 6, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %3, align 8
  br label %137

19:                                               ; preds = %2
  %20 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 1, %23
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32, i32* @WLAN_EID_EXT_HE_OPERATION, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.ieee80211_he_operation*
  store %struct.ieee80211_he_operation* %31, %struct.ieee80211_he_operation** %6, align 8
  %32 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %6, align 8
  %33 = call i32 @os_memset(%struct.ieee80211_he_operation* %32, i32 0, i32 8)
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %19
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HE_OPERATION_DFLT_PE_DURATION_OFFSET, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %43, %19
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %58 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @HE_OPERATION_TWT_REQUIRED, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %56
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %72 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %70
  %81 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %82 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HE_OPERATION_RTS_THRESHOLD_OFFSET, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %80, %70
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %95 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %93
  %104 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %105 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HE_OPERATION_BSS_COLOR_OFFSET, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %103, %93
  %117 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %118 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @host_to_le16(i32 %124)
  %126 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %6, align 8
  %127 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @host_to_le32(i32 %128)
  %130 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %6, align 8
  %131 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %7, align 8
  %136 = load i32*, i32** %7, align 8
  store i32* %136, i32** %3, align 8
  br label %137

137:                                              ; preds = %116, %17
  %138 = load i32*, i32** %3, align 8
  ret i32* %138
}

declare dso_local i32 @os_memset(%struct.ieee80211_he_operation*, i32, i32) #1

declare dso_local i32 @host_to_le16(i32) #1

declare dso_local i32 @host_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
