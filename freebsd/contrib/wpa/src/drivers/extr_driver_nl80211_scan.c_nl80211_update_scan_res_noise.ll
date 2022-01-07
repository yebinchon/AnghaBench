; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_update_scan_res_noise.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_update_scan_res_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_res = type { i32, i32, i32 }
%struct.nl80211_noise_info = type { i32, i32*, i64* }

@WPA_SCAN_NOISE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_scan_res*, %struct.nl80211_noise_info*)* @nl80211_update_scan_res_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_update_scan_res_noise(%struct.wpa_scan_res* %0, %struct.nl80211_noise_info* %1) #0 {
  %3 = alloca %struct.wpa_scan_res*, align 8
  %4 = alloca %struct.nl80211_noise_info*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_scan_res* %0, %struct.wpa_scan_res** %3, align 8
  store %struct.nl80211_noise_info* %1, %struct.nl80211_noise_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %54, %2
  %7 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %8 = icmp ne %struct.wpa_scan_res* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nl80211_noise_info*, %struct.nl80211_noise_info** %4, align 8
  %12 = getelementptr inbounds %struct.nl80211_noise_info, %struct.nl80211_noise_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i1 [ false, %6 ], [ %14, %9 ]
  br i1 %16, label %17, label %57

17:                                               ; preds = %15
  %18 = load %struct.nl80211_noise_info*, %struct.nl80211_noise_info** %4, align 8
  %19 = getelementptr inbounds %struct.nl80211_noise_info, %struct.nl80211_noise_info* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %27 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WPA_SCAN_NOISE_INVALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %17
  br label %54

38:                                               ; preds = %30
  %39 = load %struct.nl80211_noise_info*, %struct.nl80211_noise_info** %4, align 8
  %40 = getelementptr inbounds %struct.nl80211_noise_info, %struct.nl80211_noise_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @WPA_SCAN_NOISE_INVALID, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %51 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %38, %37
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %6

57:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
