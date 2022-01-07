; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_bss_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_bss_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_learn_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wpa_scan_res = type { i32 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgscan_learn_data*, %struct.wpa_scan_res*)* @bgscan_learn_bss_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgscan_learn_bss_match(%struct.bgscan_learn_data* %0, %struct.wpa_scan_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgscan_learn_data*, align 8
  %5 = alloca %struct.wpa_scan_res*, align 8
  %6 = alloca i64*, align 8
  store %struct.bgscan_learn_data* %0, %struct.bgscan_learn_data** %4, align 8
  store %struct.wpa_scan_res* %1, %struct.wpa_scan_res** %5, align 8
  %7 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %8 = load i32, i32* @WLAN_EID_SSID, align 4
  %9 = call i64* @wpa_scan_get_ie(%struct.wpa_scan_res* %7, i32 %8)
  store i64* %9, i64** %6, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %4, align 8
  %15 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %13
  %24 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %4, align 8
  %25 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @os_memcmp(i32 %28, i64* %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23, %13
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64* @wpa_scan_get_ie(%struct.wpa_scan_res*, i32) #1

declare dso_local i64 @os_memcmp(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
