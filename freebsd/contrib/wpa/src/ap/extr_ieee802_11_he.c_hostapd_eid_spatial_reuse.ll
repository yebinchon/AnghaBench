; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_spatial_reuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_spatial_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_spatial_reuse = type { i32, i32* }

@SPATIAL_REUSE_NON_SRG_OFFSET_PRESENT = common dso_local global i32 0, align 4
@SPATIAL_REUSE_SRG_INFORMATION_PRESENT = common dso_local global i32 0, align 4
@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SPATIAL_REUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_spatial_reuse(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_spatial_reuse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %7, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %3, align 8
  br label %134

22:                                               ; preds = %2
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SPATIAL_REUSE_NON_SRG_OFFSET_PRESENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SPATIAL_REUSE_SRG_INFORMATION_PRESENT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 18
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 1, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i64, i64* @WLAN_EID_EXT_SPATIAL_REUSE, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = bitcast i32* %64 to %struct.ieee80211_spatial_reuse*
  store %struct.ieee80211_spatial_reuse* %65, %struct.ieee80211_spatial_reuse** %6, align 8
  %66 = load %struct.ieee80211_spatial_reuse*, %struct.ieee80211_spatial_reuse** %6, align 8
  %67 = call i32 @os_memset(%struct.ieee80211_spatial_reuse* %66, i32 0, i32 16)
  %68 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %69 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_spatial_reuse*, %struct.ieee80211_spatial_reuse** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_spatial_reuse, %struct.ieee80211_spatial_reuse* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %7, align 8
  %80 = load %struct.ieee80211_spatial_reuse*, %struct.ieee80211_spatial_reuse** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_spatial_reuse, %struct.ieee80211_spatial_reuse* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %8, align 8
  %83 = load %struct.ieee80211_spatial_reuse*, %struct.ieee80211_spatial_reuse** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_spatial_reuse, %struct.ieee80211_spatial_reuse* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SPATIAL_REUSE_NON_SRG_OFFSET_PRESENT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %52
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %91 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  br label %102

102:                                              ; preds = %89, %52
  %103 = load %struct.ieee80211_spatial_reuse*, %struct.ieee80211_spatial_reuse** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_spatial_reuse, %struct.ieee80211_spatial_reuse* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SPATIAL_REUSE_SRG_INFORMATION_PRESENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %102
  %110 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %111 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %121 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 18
  store i32* %131, i32** %7, align 8
  br label %132

132:                                              ; preds = %109, %102
  %133 = load i32*, i32** %7, align 8
  store i32* %133, i32** %3, align 8
  br label %134

134:                                              ; preds = %132, %20
  %135 = load i32*, i32** %3, align 8
  ret i32* %135
}

declare dso_local i32 @os_memset(%struct.ieee80211_spatial_reuse*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
