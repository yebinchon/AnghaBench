; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_scan_snr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_scan_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_res = type { i32, i64, i64, i64, i32 }

@WPA_SCAN_NOISE_INVALID = common dso_local global i32 0, align 4
@DEFAULT_NOISE_FLOOR_5GHZ = common dso_local global i64 0, align 8
@DEFAULT_NOISE_FLOOR_2GHZ = common dso_local global i64 0, align 8
@WPA_SCAN_LEVEL_DBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_snr(%struct.wpa_scan_res* %0) #0 {
  %2 = alloca %struct.wpa_scan_res*, align 8
  store %struct.wpa_scan_res* %0, %struct.wpa_scan_res** %2, align 8
  %3 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @WPA_SCAN_NOISE_INVALID, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @IS_5GHZ(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i64, i64* @DEFAULT_NOISE_FLOOR_5GHZ, align 8
  br label %19

17:                                               ; preds = %9
  %18 = load i64, i64* @DEFAULT_NOISE_FLOOR_2GHZ, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %25 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WPA_SCAN_LEVEL_DBM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %35 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %39 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %46

40:                                               ; preds = %23
  %41 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %42 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %2, align 8
  %45 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %30
  ret void
}

declare dso_local i64 @IS_5GHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
