; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_ssid_wildcard_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_ssid_wildcard_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32 }
%struct.wpa_ssid = type { i32, i64, i32 }
%struct.wpa_bss = type { i64, i32 }
%struct.wpabuf = type { i32 }

@WPS_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPS_PIN_SCAN_IGNORE_SEL_REG = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_ssid_wildcard_ok(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %6, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %9, i32 0, i32 2
  %11 = call i64 @eap_is_wps_pbc_enrollee(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %15 = load i32, i32* @WPS_IE_VENDOR_TYPE, align 4
  %16 = call %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss* %14, i32 %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %7, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = icmp ne %struct.wpabuf* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i64 @wps_is_selected_pbc_registrar(%struct.wpabuf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %19, %13
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 2
  %28 = call i64 @eap_is_wps_pin_enrollee(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %32 = load i32, i32* @WPS_IE_VENDOR_TYPE, align 4
  %33 = call %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss* %31, i32 %32)
  store %struct.wpabuf* %33, %struct.wpabuf** %7, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @wps_is_addr_authorized(%struct.wpabuf* %37, i32 %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WPS_PIN_SCAN_IGNORE_SEL_REG, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %36
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %43, %30
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %52
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %62 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %65 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i64 @os_memcmp(i32 %63, i32 %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %60, %55, %52
  %72 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %73 = call i32 @wpabuf_free(%struct.wpabuf* %72)
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i64 @eap_is_wps_pbc_enrollee(i32*) #1

declare dso_local %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss*, i32) #1

declare dso_local i64 @wps_is_selected_pbc_registrar(%struct.wpabuf*) #1

declare dso_local i64 @eap_is_wps_pin_enrollee(i32*) #1

declare dso_local i64 @wps_is_addr_authorized(%struct.wpabuf*, i32, i32) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
