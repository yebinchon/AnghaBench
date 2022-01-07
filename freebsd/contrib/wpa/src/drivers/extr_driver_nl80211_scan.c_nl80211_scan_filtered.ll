; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_scan_filtered.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_scan_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_nl80211_data*, i64*, i64)* @nl80211_scan_filtered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_scan_filtered(%struct.wpa_driver_nl80211_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @WLAN_EID_SSID, align 4
  %19 = call i64* @get_ie(i64* %16, i64 %17, i32 %18)
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %63

23:                                               ; preds = %15
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %59, %23
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %33, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %30
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @os_memcmp(i64* %44, i32 %51, i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %63

58:                                               ; preds = %42, %30
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %24

62:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %57, %22, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64* @get_ie(i64*, i64, i32) #1

declare dso_local i64 @os_memcmp(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
