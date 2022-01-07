; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpa_supplicant_mesh_iface_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpa_supplicant_mesh_iface_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_mesh_iface_deinit(%struct.wpa_supplicant* %0, %struct.hostapd_iface* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.hostapd_iface*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.hostapd_iface* %1, %struct.hostapd_iface** %4, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %6 = icmp ne %struct.hostapd_iface* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %40

8:                                                ; preds = %2
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %16 = call i32 @mesh_mpm_deinit(%struct.wpa_supplicant* %14, %struct.hostapd_iface* %15)
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %13
  %29 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @os_free(%struct.TYPE_2__* %31)
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %35

35:                                               ; preds = %28, %8
  %36 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %37 = call i32 @hostapd_interface_deinit(%struct.hostapd_iface* %36)
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %39 = call i32 @hostapd_interface_free(%struct.hostapd_iface* %38)
  br label %40

40:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @mesh_mpm_deinit(%struct.wpa_supplicant*, %struct.hostapd_iface*) #1

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

declare dso_local i32 @hostapd_interface_deinit(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_interface_free(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
