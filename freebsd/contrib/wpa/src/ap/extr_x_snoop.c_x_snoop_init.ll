; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_x_snoop.c_x_snoop_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_x_snoop.c_x_snoop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_bss_config* }
%struct.hostapd_bss_config = type { i8*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"x_snoop: ap_isolate must be enabled for x_snoop\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"x_snoop: Bridge must be configured for x_snoop\00", align 1
@DRV_BR_PORT_ATTR_HAIRPIN_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"x_snoop: Failed to enable hairpin_mode on the bridge port\00", align 1
@DRV_BR_PORT_ATTR_PROXYARP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"x_snoop: Failed to enable proxyarp on the bridge port\00", align 1
@DRV_BR_NET_PARAM_GARP_ACCEPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"x_snoop: Failed to enable accepting gratuitous ARP on the bridge\00", align 1
@DRV_BR_MULTICAST_SNOOPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x_snoop_init(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_bss_config*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %5 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %5, i32 0, i32 0
  %7 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %6, align 8
  store %struct.hostapd_bss_config* %7, %struct.hostapd_bss_config** %4, align 8
  %8 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %9 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

26:                                               ; preds = %15
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = load i32, i32* @DRV_BR_PORT_ATTR_HAIRPIN_MODE, align 4
  %29 = call i64 @hostapd_drv_br_port_set_attr(%struct.hostapd_data* %27, i32 %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

34:                                               ; preds = %26
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %36 = load i32, i32* @DRV_BR_PORT_ATTR_PROXYARP, align 4
  %37 = call i64 @hostapd_drv_br_port_set_attr(%struct.hostapd_data* %35, i32 %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %44 = load i32, i32* @DRV_BR_NET_PARAM_GARP_ACCEPT, align 4
  %45 = call i64 @hostapd_drv_br_set_net_param(%struct.hostapd_data* %43, i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %47, %39, %31, %23, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hostapd_drv_br_port_set_attr(%struct.hostapd_data*, i32, i32) #1

declare dso_local i64 @hostapd_drv_br_set_net_param(%struct.hostapd_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
