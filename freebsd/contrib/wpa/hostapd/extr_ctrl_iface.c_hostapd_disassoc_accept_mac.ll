; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_disassoc_accept_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_disassoc_accept_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.sta_info* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.sta_info = type { i32, i32, %struct.sta_info* }
%struct.vlan_description = type { i64 }

@DENY_UNLESS_ACCEPTED = common dso_local global i64 0, align 8
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*)* @hostapd_disassoc_accept_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_disassoc_accept_mac(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.vlan_description, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %5 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %6 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DENY_UNLESS_ACCEPTED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 1
  %16 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  store %struct.sta_info* %16, %struct.sta_info** %3, align 8
  br label %17

17:                                               ; preds = %55, %13
  %18 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %19 = icmp ne %struct.sta_info* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hostapd_maclist_found(i32 %25, i32 %30, i32 %33, %struct.vlan_description* %4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @vlan_compare(%struct.vlan_description* %4, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40, %20
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %53 = call i32 @ap_sta_disconnect(%struct.hostapd_data* %47, %struct.sta_info* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %40, %36
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 2
  %58 = load %struct.sta_info*, %struct.sta_info** %57, align 8
  store %struct.sta_info* %58, %struct.sta_info** %3, align 8
  br label %17

59:                                               ; preds = %12, %17
  ret void
}

declare dso_local i32 @hostapd_maclist_found(i32, i32, i32, %struct.vlan_description*) #1

declare dso_local i64 @vlan_compare(%struct.vlan_description*, i32) #1

declare dso_local i32 @ap_sta_disconnect(%struct.hostapd_data*, %struct.sta_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
