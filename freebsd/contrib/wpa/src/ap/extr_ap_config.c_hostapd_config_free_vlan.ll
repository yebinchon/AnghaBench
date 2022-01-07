; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_free_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_free_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { %struct.hostapd_vlan* }
%struct.hostapd_vlan = type { %struct.hostapd_vlan* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_bss_config*)* @hostapd_config_free_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_config_free_vlan(%struct.hostapd_bss_config* %0) #0 {
  %2 = alloca %struct.hostapd_bss_config*, align 8
  %3 = alloca %struct.hostapd_vlan*, align 8
  %4 = alloca %struct.hostapd_vlan*, align 8
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %2, align 8
  %5 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %6 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %5, i32 0, i32 0
  %7 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  store %struct.hostapd_vlan* %7, %struct.hostapd_vlan** %3, align 8
  store %struct.hostapd_vlan* null, %struct.hostapd_vlan** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %3, align 8
  %10 = icmp ne %struct.hostapd_vlan* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %3, align 8
  store %struct.hostapd_vlan* %12, %struct.hostapd_vlan** %4, align 8
  %13 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %3, align 8
  %14 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %13, i32 0, i32 0
  %15 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %14, align 8
  store %struct.hostapd_vlan* %15, %struct.hostapd_vlan** %3, align 8
  %16 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %17 = call i32 @os_free(%struct.hostapd_vlan* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %20 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %19, i32 0, i32 0
  store %struct.hostapd_vlan* null, %struct.hostapd_vlan** %20, align 8
  ret void
}

declare dso_local i32 @os_free(%struct.hostapd_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
