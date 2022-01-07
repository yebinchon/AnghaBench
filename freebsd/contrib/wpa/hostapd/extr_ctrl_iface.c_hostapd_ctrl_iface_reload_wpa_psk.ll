; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_reload_wpa_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_reload_wpa_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_bss_config* }
%struct.hostapd_bss_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reloading WPA-PSK passwords failed: %d\00", align 1
@hostapd_ctrl_iface_kick_mismatch_psk_sta_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*)* @hostapd_ctrl_iface_reload_wpa_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_reload_wpa_psk(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_bss_config*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  store %struct.hostapd_bss_config* %8, %struct.hostapd_bss_config** %4, align 8
  %9 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @hostapd_config_clear_wpa_psk(i32* %11)
  %13 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %14 = call i32 @hostapd_setup_wpa_psk(%struct.hostapd_bss_config* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %23 = load i32, i32* @hostapd_ctrl_iface_kick_mismatch_psk_sta_iter, align 4
  %24 = call i32 @ap_for_each_sta(%struct.hostapd_data* %22, i32 %23, i32* null)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @hostapd_config_clear_wpa_psk(i32*) #1

declare dso_local i32 @hostapd_setup_wpa_psk(%struct.hostapd_bss_config*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @ap_for_each_sta(%struct.hostapd_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
