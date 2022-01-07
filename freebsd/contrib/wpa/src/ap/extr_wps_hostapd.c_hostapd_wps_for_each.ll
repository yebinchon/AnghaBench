; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_for_each.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_for_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_iface* }
%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)*, %struct.wps_for_each_data*)* }
%struct.wps_for_each_data = type { i32 (%struct.hostapd_data.0*, i8*)*, %struct.hostapd_data*, i8* }
%struct.hostapd_data.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32 (%struct.hostapd_data*, i8*)*, i8*)* @hostapd_wps_for_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wps_for_each(%struct.hostapd_data* %0, i32 (%struct.hostapd_data*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32 (%struct.hostapd_data*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hostapd_iface*, align 8
  %9 = alloca %struct.wps_for_each_data, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32 (%struct.hostapd_data*, i8*)* %1, i32 (%struct.hostapd_data*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  store %struct.hostapd_iface* %12, %struct.hostapd_iface** %8, align 8
  %13 = load i32 (%struct.hostapd_data*, i8*)*, i32 (%struct.hostapd_data*, i8*)** %6, align 8
  %14 = bitcast i32 (%struct.hostapd_data*, i8*)* %13 to i32 (%struct.hostapd_data.0*, i8*)*
  %15 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %9, i32 0, i32 0
  store i32 (%struct.hostapd_data.0*, i8*)* %14, i32 (%struct.hostapd_data.0*, i8*)** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %9, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %19 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %9, i32 0, i32 1
  store %struct.hostapd_data* %18, %struct.hostapd_data** %19, align 8
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_2__*, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)*, %struct.wps_for_each_data*)*, i32 (%struct.TYPE_2__*, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)*, %struct.wps_for_each_data*)** %28, align 8
  %30 = icmp eq i32 (%struct.TYPE_2__*, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)*, %struct.wps_for_each_data*)* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %3
  %32 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %33 = call i32 @wps_for_each(%struct.hostapd_iface* %32, %struct.wps_for_each_data* %9)
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_2__*, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)*, %struct.wps_for_each_data*)*, i32 (%struct.TYPE_2__*, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)*, %struct.wps_for_each_data*)** %38, align 8
  %40 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %41 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 %39(%struct.TYPE_2__* %42, i32 (%struct.hostapd_iface*, %struct.wps_for_each_data*)* @wps_for_each, %struct.wps_for_each_data* %9)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %31
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @wps_for_each(%struct.hostapd_iface*, %struct.wps_for_each_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
