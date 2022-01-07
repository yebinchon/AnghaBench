; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_if_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_if_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.hostapd_vlan = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPA deinitialization for VLAN %d failed (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_if_remove(%struct.hostapd_data* %0, %struct.hostapd_vlan* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_vlan*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.hostapd_vlan* %1, %struct.hostapd_vlan** %4, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wpa_auth_release_group(i32 %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %24 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hostapd_vlan_if_remove(%struct.hostapd_data* %23, i32 %26)
  ret i32 %27
}

declare dso_local i32 @wpa_auth_release_group(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @hostapd_vlan_if_remove(%struct.hostapd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
