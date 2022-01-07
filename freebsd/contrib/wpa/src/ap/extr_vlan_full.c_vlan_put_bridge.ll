; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_put_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_put_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@DVLAN_CLEAN_BR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.hostapd_data*, i32)* @vlan_put_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_put_bridge(i8* %0, %struct.hostapd_data* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hostapd_data* %1, %struct.hostapd_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %30 = call i32 @vlan_dellink_tagged(i32 %25, i8* %26, i8* %27, i32 %28, %struct.hostapd_data* %29)
  br label %31

31:                                               ; preds = %24, %3
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @dyn_iface_put(%struct.hostapd_data* %32, i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DVLAN_CLEAN_BR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @br_getnumports(i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @ifconfig_down(i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @br_delbr(i8* %46)
  br label %48

48:                                               ; preds = %43, %39, %31
  ret void
}

declare dso_local i32 @vlan_dellink_tagged(i32, i8*, i8*, i32, %struct.hostapd_data*) #1

declare dso_local i32 @dyn_iface_put(%struct.hostapd_data*, i8*) #1

declare dso_local i64 @br_getnumports(i8*) #1

declare dso_local i32 @ifconfig_down(i8*) #1

declare dso_local i32 @br_delbr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
