; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_get_vlan_id_ifname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_get_vlan_id_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_vlan = type { i32, i8*, %struct.hostapd_vlan* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostapd_get_vlan_id_ifname(%struct.hostapd_vlan* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_vlan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_vlan*, align 8
  store %struct.hostapd_vlan* %0, %struct.hostapd_vlan** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  store %struct.hostapd_vlan* %7, %struct.hostapd_vlan** %6, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %10 = icmp ne %struct.hostapd_vlan* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %13 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %19 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %23 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %22, i32 0, i32 2
  %24 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %23, align 8
  store %struct.hostapd_vlan* %24, %struct.hostapd_vlan** %6, align 8
  br label %8

25:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
