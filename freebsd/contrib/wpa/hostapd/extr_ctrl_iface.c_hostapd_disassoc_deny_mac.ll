; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_disassoc_deny_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_disassoc_deny_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.sta_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sta_info = type { i32, i32, %struct.sta_info* }
%struct.vlan_description = type { i32 }

@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*)* @hostapd_disassoc_deny_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_disassoc_deny_mac(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.vlan_description, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %5 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %6 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %5, i32 0, i32 1
  %7 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  store %struct.sta_info* %7, %struct.sta_info** %3, align 8
  br label %8

8:                                                ; preds = %46, %1
  %9 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %10 = icmp ne %struct.sta_info* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @hostapd_maclist_found(i32 %16, i32 %21, i32 %24, %struct.vlan_description* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vlan_compare(%struct.vlan_description* %4, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %39 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %44 = call i32 @ap_sta_disconnect(%struct.hostapd_data* %38, %struct.sta_info* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %31, %11
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 2
  %49 = load %struct.sta_info*, %struct.sta_info** %48, align 8
  store %struct.sta_info* %49, %struct.sta_info** %3, align 8
  br label %8

50:                                               ; preds = %8
  ret void
}

declare dso_local i64 @hostapd_maclist_found(i32, i32, i32, %struct.vlan_description*) #1

declare dso_local i32 @vlan_compare(%struct.vlan_description*, i32) #1

declare dso_local i32 @ap_sta_disconnect(%struct.hostapd_data*, %struct.sta_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
