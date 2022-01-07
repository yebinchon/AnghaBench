; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_ap_update_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_ap_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.hostapd_iface*, %struct.wpa_ssid* }
%struct.hostapd_iface = type { %struct.hostapd_data**, %struct.TYPE_4__* }
%struct.hostapd_data = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8* }
%struct.wpa_ssid = type { i64 }

@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@WPAS_MODE_IBSS = common dso_local global i64 0, align 8
@P2P_ENABLED = common dso_local global i8* null, align 8
@P2P_GROUP_FORMATION = common dso_local global i8* null, align 8
@P2P_GROUP_OWNER = common dso_local global i8* null, align 8
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_ap_update_beacon(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  store %struct.hostapd_iface* %9, %struct.hostapd_iface** %4, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 1
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %5, align 8
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %14 = icmp eq %struct.wpa_ssid* %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %1
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %17, align 8
  %19 = icmp eq %struct.hostapd_iface* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WPAS_MODE_IBSS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20, %15, %1
  store i32 -1, i32* %2, align 4
  br label %49

33:                                               ; preds = %26
  %34 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %34, i32 0, i32 0
  %36 = load %struct.hostapd_data**, %struct.hostapd_data*** %35, align 8
  %37 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %36, i64 0
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %37, align 8
  store %struct.hostapd_data* %38, %struct.hostapd_data** %6, align 8
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %46 = call i32 @ieee802_11_set_beacons(%struct.hostapd_iface* %45)
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %48 = call i32 @hostapd_set_ap_wps_ie(%struct.hostapd_data* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %43, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ieee802_11_set_beacons(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_set_ap_wps_ie(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
