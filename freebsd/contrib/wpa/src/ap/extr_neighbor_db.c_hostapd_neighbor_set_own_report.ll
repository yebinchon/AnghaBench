; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_set_own_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_set_own_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@NEI_REP_BSSID_INFO_APSD = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_DELAYED_BA = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_HT = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_KEY_SCOPE = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_QOS = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_RM = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_SECURITY = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_VHT = common dso_local global i32 0, align 4
@NR_CHAN_WIDTH_80P80 = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@WLAN_RRM_CAPS_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@WNM_NEIGHBOR_WIDE_BW_CHAN = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_AP_UAPSD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_neighbor_set_own_report(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
