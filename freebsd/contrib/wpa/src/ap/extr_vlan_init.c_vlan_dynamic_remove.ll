; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_dynamic_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_dynamic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.hostapd_vlan = type { i64, i32, %struct.hostapd_vlan* }

@VLAN_ID_WILDCARD = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"VLAN: Could not remove VLAN iface: %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.hostapd_vlan*)* @vlan_dynamic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_dynamic_remove(%struct.hostapd_data* %0, %struct.hostapd_vlan* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_vlan*, align 8
  %5 = alloca %struct.hostapd_vlan*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.hostapd_vlan* %1, %struct.hostapd_vlan** %4, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %8 = icmp ne %struct.hostapd_vlan* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %10, i32 0, i32 2
  %12 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %11, align 8
  store %struct.hostapd_vlan* %12, %struct.hostapd_vlan** %5, align 8
  %13 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VLAN_ID_WILDCARD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %20 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %21 = call i64 @vlan_if_remove(%struct.hostapd_data* %19, %struct.hostapd_vlan* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %26 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %23, %18, %9
  %32 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  store %struct.hostapd_vlan* %32, %struct.hostapd_vlan** %4, align 8
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i64 @vlan_if_remove(%struct.hostapd_data*, %struct.hostapd_vlan*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
