; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.hostapd_iface = type { %struct.hostapd_data** }
%struct.hostapd_data = type { i64 }

@mesh_mpm_plink_close = common dso_local global i32 0, align 4
@peer_add_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_mpm_deinit(%struct.wpa_supplicant* %0, %struct.hostapd_iface* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.hostapd_iface* %1, %struct.hostapd_iface** %4, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 0
  %8 = load %struct.hostapd_data**, %struct.hostapd_data*** %7, align 8
  %9 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %8, i64 0
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  store %struct.hostapd_data* %10, %struct.hostapd_data** %5, align 8
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %12 = load i32, i32* @mesh_mpm_plink_close, align 4
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = call i32 @ap_for_each_sta(%struct.hostapd_data* %11, i32 %12, %struct.wpa_supplicant* %13)
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %18 = call i32 @hostapd_free_stas(%struct.hostapd_data* %17)
  %19 = load i32, i32* @peer_add_timer, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = call i32 @eloop_cancel_timeout(i32 %19, %struct.wpa_supplicant* %20, i32* null)
  ret void
}

declare dso_local i32 @ap_for_each_sta(%struct.hostapd_data*, i32, %struct.wpa_supplicant*) #1

declare dso_local i32 @hostapd_free_stas(%struct.hostapd_data*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
