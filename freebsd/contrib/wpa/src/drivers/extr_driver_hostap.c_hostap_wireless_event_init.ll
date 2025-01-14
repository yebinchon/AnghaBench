; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_wireless_event_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_wireless_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32* }
%struct.netlink_config = type { i32, %struct.hostap_driver_data* }

@hostapd_wireless_event_rtm_newlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostap_driver_data*)* @hostap_wireless_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_wireless_event_init(%struct.hostap_driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostap_driver_data*, align 8
  %4 = alloca %struct.netlink_config*, align 8
  store %struct.hostap_driver_data* %0, %struct.hostap_driver_data** %3, align 8
  %5 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %6 = call i32 @hostap_get_we_version(%struct.hostap_driver_data* %5)
  %7 = call %struct.netlink_config* @os_zalloc(i32 16)
  store %struct.netlink_config* %7, %struct.netlink_config** %4, align 8
  %8 = load %struct.netlink_config*, %struct.netlink_config** %4, align 8
  %9 = icmp eq %struct.netlink_config* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %13 = load %struct.netlink_config*, %struct.netlink_config** %4, align 8
  %14 = getelementptr inbounds %struct.netlink_config, %struct.netlink_config* %13, i32 0, i32 1
  store %struct.hostap_driver_data* %12, %struct.hostap_driver_data** %14, align 8
  %15 = load i32, i32* @hostapd_wireless_event_rtm_newlink, align 4
  %16 = load %struct.netlink_config*, %struct.netlink_config** %4, align 8
  %17 = getelementptr inbounds %struct.netlink_config, %struct.netlink_config* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.netlink_config*, %struct.netlink_config** %4, align 8
  %19 = call i32* @netlink_init(%struct.netlink_config* %18)
  %20 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %21 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %23 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.netlink_config*, %struct.netlink_config** %4, align 8
  %28 = call i32 @os_free(%struct.netlink_config* %27)
  store i32 -1, i32* %2, align 4
  br label %30

29:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @hostap_get_we_version(%struct.hostap_driver_data*) #1

declare dso_local %struct.netlink_config* @os_zalloc(i32) #1

declare dso_local i32* @netlink_init(%struct.netlink_config*) #1

declare dso_local i32 @os_free(%struct.netlink_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
