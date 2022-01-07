; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i64, i64, i32, i32, i32 }
%struct.hostap_sta_driver_data = type { i64, i64, i32 }

@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"updated TX/RX stats: rx_bytes=%llu [%u:%u] tx_bytes=%llu [%u:%u] bytes_64bit=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, %struct.hostap_sta_driver_data*)* @accounting_sta_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accounting_sta_update_stats(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.hostap_sta_driver_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.hostap_sta_driver_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.hostap_sta_driver_data* %2, %struct.hostap_sta_driver_data** %7, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %9 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @hostapd_drv_read_sta_data(%struct.hostapd_data* %8, %struct.hostap_sta_driver_data* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %87

16:                                               ; preds = %3
  %17 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %18 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %16
  %22 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %26 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %36 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %44 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %54 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %16
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %60 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %64 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %65 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %66 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %75 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %7, align 8
  %84 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @hostapd_logger(%struct.hostapd_data* %59, i32 %62, i32 %63, i32 %64, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %70, i64 %73, i64 %76, i32 %79, i64 %82, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %58, %15
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @hostapd_drv_read_sta_data(%struct.hostapd_data*, %struct.hostap_sta_driver_data*, i32) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i64, i32, i64, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
