; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_dynamic_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_dynamic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.hostapd_vlan = type { i64, %struct.hostapd_vlan*, i32 }

@VLAN_ID_WILDCARD = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"VLAN: Could not add VLAN %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.hostapd_vlan*)* @vlan_dynamic_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dynamic_add(%struct.hostapd_data* %0, %struct.hostapd_vlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.hostapd_vlan*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.hostapd_vlan* %1, %struct.hostapd_vlan** %5, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  %8 = icmp ne %struct.hostapd_vlan* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VLAN_ID_WILDCARD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  %18 = call i64 @vlan_if_add(%struct.hostapd_data* %16, %struct.hostapd_vlan* %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  %23 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  store i32 -1, i32* %3, align 4
  br label %34

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %9
  %30 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %5, align 8
  %31 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %30, i32 0, i32 1
  %32 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %31, align 8
  store %struct.hostapd_vlan* %32, %struct.hostapd_vlan** %5, align 8
  br label %6

33:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @vlan_if_add(%struct.hostapd_data*, %struct.hostapd_vlan*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
