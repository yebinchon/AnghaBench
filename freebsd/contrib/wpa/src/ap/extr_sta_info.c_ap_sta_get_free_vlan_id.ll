; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_get_free_vlan_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_get_free_vlan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostapd_vlan* }
%struct.hostapd_vlan = type { i32, %struct.hostapd_vlan* }

@MAX_VLAN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*)* @ap_sta_get_free_vlan_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_sta_get_free_vlan_id(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.hostapd_vlan*, align 8
  %4 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %5 = load i32, i32* @MAX_VLAN_ID, align 4
  %6 = add nsw i32 %5, 2
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %11, align 8
  store %struct.hostapd_vlan* %12, %struct.hostapd_vlan** %3, align 8
  br label %13

13:                                               ; preds = %26, %7
  %14 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %3, align 8
  %15 = icmp ne %struct.hostapd_vlan* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %27, i32 0, i32 1
  %29 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %28, align 8
  store %struct.hostapd_vlan* %29, %struct.hostapd_vlan** %3, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
