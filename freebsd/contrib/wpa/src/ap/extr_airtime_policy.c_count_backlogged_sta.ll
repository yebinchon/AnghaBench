; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_count_backlogged_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_count_backlogged_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.sta_info* }
%struct.sta_info = type { i32, i32, %struct.sta_info* }
%struct.hostap_sta_driver_data = type { i64 }
%struct.os_reltime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*)* @count_backlogged_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_backlogged_sta(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.hostap_sta_driver_data, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.os_reltime, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %7 = bitcast %struct.hostap_sta_driver_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %8 = call i32 @os_get_reltime(%struct.os_reltime* %6)
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 1
  %11 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  store %struct.sta_info* %11, %struct.sta_info** %3, align 8
  br label %12

12:                                               ; preds = %40, %1
  %13 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %14 = icmp ne %struct.sta_info* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @hostapd_drv_read_sta_data(%struct.hostapd_data* %16, %struct.hostap_sta_driver_data* %4, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %40

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %30 = call i32 @set_new_backlog_time(%struct.hostapd_data* %28, %struct.sta_info* %29, %struct.os_reltime* %6)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 0
  %34 = call i64 @os_reltime_before(%struct.os_reltime* %6, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 2
  %43 = load %struct.sta_info*, %struct.sta_info** %42, align 8
  store %struct.sta_info* %43, %struct.sta_info** %3, align 8
  br label %12

44:                                               ; preds = %12
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #2

declare dso_local i64 @hostapd_drv_read_sta_data(%struct.hostapd_data*, %struct.hostap_sta_driver_data*, i32) #2

declare dso_local i32 @set_new_backlog_time(%struct.hostapd_data*, %struct.sta_info*, %struct.os_reltime*) #2

declare dso_local i64 @os_reltime_before(%struct.os_reltime*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
