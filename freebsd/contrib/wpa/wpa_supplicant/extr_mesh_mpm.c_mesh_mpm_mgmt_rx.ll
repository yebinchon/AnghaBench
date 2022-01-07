; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_mgmt_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_mgmt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.rx_mgmt = type { i32, i32, i32, i32 }
%struct.hostapd_frame_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_mpm_mgmt_rx(%struct.wpa_supplicant* %0, %struct.rx_mgmt* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.rx_mgmt*, align 8
  %5 = alloca %struct.hostapd_frame_info, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.rx_mgmt* %1, %struct.rx_mgmt** %4, align 8
  %6 = call i32 @os_memset(%struct.hostapd_frame_info* %5, i32 0, i32 8)
  %7 = load %struct.rx_mgmt*, %struct.rx_mgmt** %4, align 8
  %8 = getelementptr inbounds %struct.rx_mgmt, %struct.rx_mgmt* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.hostapd_frame_info, %struct.hostapd_frame_info* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.rx_mgmt*, %struct.rx_mgmt** %4, align 8
  %12 = getelementptr inbounds %struct.rx_mgmt, %struct.rx_mgmt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.hostapd_frame_info, %struct.hostapd_frame_info* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rx_mgmt*, %struct.rx_mgmt** %4, align 8
  %23 = getelementptr inbounds %struct.rx_mgmt, %struct.rx_mgmt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rx_mgmt*, %struct.rx_mgmt** %4, align 8
  %26 = getelementptr inbounds %struct.rx_mgmt, %struct.rx_mgmt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ieee802_11_mgmt(i32 %21, i32 %24, i32 %27, %struct.hostapd_frame_info* %5)
  ret void
}

declare dso_local i32 @os_memset(%struct.hostapd_frame_info*, i32, i32) #1

declare dso_local i32 @ieee802_11_mgmt(i32, i32, i32, %struct.hostapd_frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
