; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_set_scan_ssids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_set_scan_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32*, i32 }
%struct.wpa_driver_scan_params = type { i32 }
%struct.wpa_ssid = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*, i64)* @wpa_set_scan_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_set_scan_ssids(%struct.wpa_supplicant* %0, %struct.wpa_driver_scan_params* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_driver_scan_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 1
  br label %16

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i64 [ %13, %11 ], [ %15, %14 ]
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %61, %16
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %27, i32 %34)
  store %struct.wpa_ssid* %35, %struct.wpa_ssid** %8, align 8
  %36 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %37 = icmp ne %struct.wpa_ssid* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  br label %61

39:                                               ; preds = %24
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %46 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wpa_add_scan_ssid(%struct.wpa_supplicant* %45, %struct.wpa_driver_scan_params* %46, i64 %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %39
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %5, align 8
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @wpa_add_owe_scan_ssid(%struct.wpa_supplicant* %56, %struct.wpa_driver_scan_params* %57, %struct.wpa_ssid* %58, i64 %59)
  br label %61

61:                                               ; preds = %55, %38
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %18

64:                                               ; preds = %18
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  ret void
}

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i32 @wpa_add_scan_ssid(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*, i64, i32, i32) #1

declare dso_local i32 @wpa_add_owe_scan_ssid(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*, %struct.wpa_ssid*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
