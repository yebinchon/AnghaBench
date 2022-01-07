; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_driver_get_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_driver_get_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i32 }
%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_scan_results* (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_scan_results* @hostapd_driver_get_scan_results(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.wpa_scan_results*, align 8
  %3 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %4 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %5 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.wpa_scan_results* (i32)*, %struct.wpa_scan_results* (i32)** %12, align 8
  %14 = icmp ne %struct.wpa_scan_results* (i32)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.wpa_scan_results* (i32)*, %struct.wpa_scan_results* (i32)** %19, align 8
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.wpa_scan_results* %20(i32 %23)
  store %struct.wpa_scan_results* %24, %struct.wpa_scan_results** %2, align 8
  br label %26

25:                                               ; preds = %8, %1
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %2, align 8
  ret %struct.wpa_scan_results* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
