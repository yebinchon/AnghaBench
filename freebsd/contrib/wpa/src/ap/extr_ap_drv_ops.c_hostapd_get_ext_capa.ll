; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_get_ext_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_get_ext_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, i32, i32, %struct.hostapd_data** }
%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32*, i32*)* }

@WPA_IF_AP_BSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_get_ext_capa(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  %4 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %5 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %4, i32 0, i32 3
  %6 = load %struct.hostapd_data**, %struct.hostapd_data*** %5, align 8
  %7 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %6, i64 0
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  store %struct.hostapd_data* %8, %struct.hostapd_data** %3, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %17, align 8
  %19 = icmp ne i32 (i32, i32, i32*, i32*, i32*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %1
  br label %38

21:                                               ; preds = %13
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %25, align 8
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WPA_IF_AP_BSS, align 4
  %31 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %32 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %31, i32 0, i32 2
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 1
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 0
  %37 = call i32 %26(i32 %29, i32 %30, i32* %32, i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %21, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
