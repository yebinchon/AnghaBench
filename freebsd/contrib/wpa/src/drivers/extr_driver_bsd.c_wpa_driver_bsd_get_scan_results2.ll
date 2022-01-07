; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_wpa_driver_bsd_get_scan_results2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_wpa_driver_bsd_get_scan_results2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i64 }
%struct.ieee80211req_scan_result = type { i64 }

@IEEE80211_IOC_SCAN_RESULTS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Received %d bytes of scan results (%lu BSSes)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_scan_results* @wpa_driver_bsd_get_scan_results2(i8* %0) #0 {
  %2 = alloca %struct.wpa_scan_results*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211req_scan_result*, align 8
  %5 = alloca %struct.wpa_scan_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [24576 x i32], align 16
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @IEEE80211_IOC_SCAN_RESULTS, align 4
  %12 = getelementptr inbounds [24576 x i32], [24576 x i32]* %8, i64 0, i64 0
  %13 = call i32 @get80211var(i8* %10, i32 %11, i32* %12, i32 24576)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %55

17:                                               ; preds = %1
  %18 = call %struct.wpa_scan_results* @os_zalloc(i32 8)
  store %struct.wpa_scan_results* %18, %struct.wpa_scan_results** %5, align 8
  %19 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %20 = icmp eq %struct.wpa_scan_results* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %55

22:                                               ; preds = %17
  %23 = getelementptr inbounds [24576 x i32], [24576 x i32]* %8, i64 0, i64 0
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %29, %22
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, 8
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = bitcast i32* %30 to %struct.ieee80211req_scan_result*
  store %struct.ieee80211req_scan_result* %31, %struct.ieee80211req_scan_result** %4, align 8
  %32 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %33 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %4, align 8
  %34 = call i32 @wpa_driver_bsd_add_scan_entry(%struct.wpa_scan_results* %32, %struct.ieee80211req_scan_result* %33)
  %35 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 %37
  store i32* %39, i32** %9, align 8
  %40 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52)
  %54 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  store %struct.wpa_scan_results* %54, %struct.wpa_scan_results** %2, align 8
  br label %55

55:                                               ; preds = %47, %21, %16
  %56 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %2, align 8
  ret %struct.wpa_scan_results* %56
}

declare dso_local i32 @get80211var(i8*, i32, i32*, i32) #1

declare dso_local %struct.wpa_scan_results* @os_zalloc(i32) #1

declare dso_local i32 @wpa_driver_bsd_add_scan_entry(%struct.wpa_scan_results*, %struct.ieee80211req_scan_result*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
