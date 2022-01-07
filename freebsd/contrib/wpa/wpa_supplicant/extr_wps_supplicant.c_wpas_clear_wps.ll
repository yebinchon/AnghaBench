; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_clear_wps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_clear_wps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, i32, i32, %struct.wpa_ssid*, i64, i64 }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, i32, %struct.wpa_ssid* }

@wpas_wps_timeout = common dso_local global i32 0, align 4
@wpas_wps_clear_timeout = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_clear_wps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_clear_wps(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 4
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  store %struct.wpa_ssid* %13, %struct.wpa_ssid** %6, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %15 = call i32 @wpas_wps_reenable_networks(%struct.wpa_supplicant* %14)
  %16 = load i32, i32* @wpas_wps_timeout, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = call i32 @eloop_cancel_timeout(i32 %16, %struct.wpa_supplicant* %17, i32* null)
  %19 = load i32, i32* @wpas_wps_clear_timeout, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = call i32 @eloop_cancel_timeout(i32 %19, %struct.wpa_supplicant* %20, i32* null)
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %25, align 8
  store %struct.wpa_ssid* %26, %struct.wpa_ssid** %4, align 8
  br label %27

27:                                               ; preds = %83, %1
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %29 = icmp ne %struct.wpa_ssid* %28, null
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WPA_KEY_MGMT_WPS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 4
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %40, align 8
  %42 = icmp eq %struct.wpa_ssid* %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %47 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %48 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %51 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  store %struct.wpa_ssid* %53, %struct.wpa_ssid** %5, align 8
  br label %55

54:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 2
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %57, align 8
  store %struct.wpa_ssid* %58, %struct.wpa_ssid** %4, align 8
  %59 = load i32, i32* %3, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %64 = icmp eq %struct.wpa_ssid* %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wpa_sm_set_config(i32 %68, i32* null)
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @eapol_sm_notify_config(i32 %72, i32* null, i32* null)
  br label %74

74:                                               ; preds = %65, %61
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %76 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %77 = call i32 @wpas_notify_network_removed(%struct.wpa_supplicant* %75, %struct.wpa_ssid* %76)
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @wpa_config_remove_network(%struct.TYPE_2__* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %55
  br label %27

84:                                               ; preds = %27
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %86 = call i32 @wpas_wps_clear_ap_info(%struct.wpa_supplicant* %85)
  ret void
}

declare dso_local i32 @wpas_wps_reenable_networks(%struct.wpa_supplicant*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_sm_set_config(i32, i32*) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @wpas_notify_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_remove_network(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @wpas_wps_clear_ap_info(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
