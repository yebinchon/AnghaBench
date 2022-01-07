; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_get_ssid_pmf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_get_ssid_pmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i64, i32 }

@NO_MGMT_FRAME_PROTECTION = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_DEFAULT = common dso_local global i64 0, align 8
@MGMT_FRAME_PROTECTION_OPTIONAL = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_ENC_BIP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_get_ssid_pmf(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %5 = load i32, i32* @NO_MGMT_FRAME_PROTECTION, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
