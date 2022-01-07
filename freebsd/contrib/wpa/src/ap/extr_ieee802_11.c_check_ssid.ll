; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_check_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_check_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sta_info = type { i32 }

@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Station tried to associate with unknown SSID '%s'\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i32*, i64)* @check_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ssid(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %13, i32* %5, align 4
  br label %48

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %15, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @os_memcmp(i32* %24, i32 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %23, %14
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %36 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %40 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @wpa_ssid_txt(i32* %41, i64 %42)
  %44 = call i32 @hostapd_logger(%struct.hostapd_data* %35, i32 %38, i32 %39, i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %45, i32* %5, align 4
  br label %48

46:                                               ; preds = %23
  %47 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %34, %12
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @wpa_ssid_txt(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
