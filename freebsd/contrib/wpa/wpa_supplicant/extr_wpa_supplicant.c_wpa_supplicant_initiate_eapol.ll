; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_initiate_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_initiate_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i64, %struct.TYPE_2__*, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wpa_ssid = type { i64, i32, i64, i32, i32 }

@Auto = common dso_local global i32 0, align 4
@EAPOL_FLAG_REQUIRE_KEY_BROADCAST = common dso_local global i32 0, align 4
@EAPOL_FLAG_REQUIRE_KEY_UNICAST = common dso_local global i32 0, align 4
@EAPOL_LOCAL_WPS_IN_USE = common dso_local global i32 0, align 4
@EAPOL_PEER_IS_WPS20_AP = common dso_local global i32 0, align 4
@EAPOL_REQUIRE_KEY_BROADCAST = common dso_local global i32 0, align 4
@EAPOL_REQUIRE_KEY_UNICAST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ForceAuthorized = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WPAS_MODE_IBSS = common dso_local global i64 0, align 8
@WPA_DRIVER_FLAGS_WIRED = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_NONE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_WPA_NONE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_WPS = common dso_local global i64 0, align 8
@WPS_IE_VENDOR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_initiate_eapol(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
