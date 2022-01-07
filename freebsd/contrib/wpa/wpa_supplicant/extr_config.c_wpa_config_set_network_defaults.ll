; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_set_network_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_set_network_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DEFAULT_PROTO = common dso_local global i32 0, align 4
@DEFAULT_PAIRWISE = common dso_local global i32 0, align 4
@DEFAULT_GROUP = common dso_local global i32 0, align 4
@DEFAULT_KEY_MGMT = common dso_local global i32 0, align 4
@DEFAULT_BG_SCAN_PERIOD = common dso_local global i32 0, align 4
@DEFAULT_MAX_OPER_CHWIDTH = common dso_local global i32 0, align 4
@DEFAULT_AMPDU_DENSITY = common dso_local global i32 0, align 4
@DEFAULT_AMPDU_FACTOR = common dso_local global i32 0, align 4
@DEFAULT_DISABLE_HT = common dso_local global i32 0, align 4
@DEFAULT_DISABLE_HT40 = common dso_local global i32 0, align 4
@DEFAULT_DISABLE_LDPC = common dso_local global i32 0, align 4
@DEFAULT_DISABLE_MAX_AMSDU = common dso_local global i32 0, align 4
@DEFAULT_DISABLE_SGI = common dso_local global i32 0, align 4
@DEFAULT_EAPOL_FLAGS = common dso_local global i32 0, align 4
@DEFAULT_EAP_WORKAROUND = common dso_local global i32 0, align 4
@DEFAULT_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MESH_CONFIRM_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_MESH_HOLDING_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_MESH_MAX_RETRIES = common dso_local global i32 0, align 4
@DEFAULT_MESH_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_MESH_RSSI_THRESHOLD = common dso_local global i32 0, align 4
@DEFAULT_PRIO_NOT_KEY_SERVER = common dso_local global i32 0, align 4
@DEFAULT_RX_STBC = common dso_local global i32 0, align 4
@DEFAULT_TX_STBC = common dso_local global i32 0, align 4
@DEFAULT_USER_SELECTED_SIM = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_config_set_network_defaults(%struct.wpa_ssid* %0) #0 {
  %2 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %2, align 8
  %3 = load i32, i32* @DEFAULT_PROTO, align 4
  %4 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %4, i32 0, i32 43
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @DEFAULT_PAIRWISE, align 4
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %7, i32 0, i32 42
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @DEFAULT_GROUP, align 4
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %10, i32 0, i32 41
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DEFAULT_KEY_MGMT, align 4
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %13, i32 0, i32 40
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DEFAULT_BG_SCAN_PERIOD, align 4
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 39
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 17
  store i32 -1, i32* %21, align 4
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %22, i32 0, i32 18
  store i32 -1, i32* %23, align 4
  %24 = load i32, i32* @DEFAULT_MAX_OPER_CHWIDTH, align 4
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 19
  store i32 %24, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
