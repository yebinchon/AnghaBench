; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_ssid_bss_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_ssid_bss_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32 }
%struct.wpa_ssid = type { i32, i32 }
%struct.wpa_bss = type { i32 }
%struct.wpabuf = type { i32 }
%struct.os_reltime = type { i64 }

@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4
@WPS_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"   skip - non-WPS AP\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"   skip - WPS AP without active PBC Registrar\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"   selected based on WPS IE (Active PBC)\00", align 1
@WPS_PIN_SCAN_IGNORE_SEL_REG = common dso_local global i64 0, align 8
@WPS_PIN_TIME_IGNORE_SEL_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"   skip - WPS AP without active PIN Registrar (scan_runs=%d age=%d)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"   selected based on WPS IE\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"   selected based on WPS IE (Authorized MAC or Active PIN)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_ssid_bss_match(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.os_reltime, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %7, align 8
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WPA_KEY_MGMT_WPS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %106

17:                                               ; preds = %3
  %18 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %19 = load i32, i32* @WPS_IE_VENDOR_TYPE, align 4
  %20 = call %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss* %18, i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %8, align 8
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 1
  %23 = call i64 @eap_is_wps_pbc_enrollee(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = icmp ne %struct.wpabuf* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %33 = call i32 @wps_is_selected_pbc_registrar(%struct.wpabuf* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = call i32 @wpabuf_free(%struct.wpabuf* %38)
  store i32 0, i32* %4, align 4
  br label %106

40:                                               ; preds = %31
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = call i32 @wpabuf_free(%struct.wpabuf* %43)
  store i32 1, i32* %4, align 4
  br label %106

45:                                               ; preds = %17
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 1
  %48 = call i64 @eap_is_wps_pin_enrollee(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %45
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = icmp ne %struct.wpabuf* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

56:                                               ; preds = %50
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wps_is_addr_authorized(%struct.wpabuf* %57, i32 %60, i32 1)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %56
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 1
  %66 = call i32 @os_reltime_age(i32* %65, %struct.os_reltime* %9)
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WPS_PIN_SCAN_IGNORE_SEL_REG, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %9, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WPS_PIN_TIME_IGNORE_SEL_REG, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %72, %63
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %81, i32 %84)
  %86 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %87 = call i32 @wpabuf_free(%struct.wpabuf* %86)
  store i32 0, i32* %4, align 4
  br label %106

88:                                               ; preds = %72
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %94

91:                                               ; preds = %56
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %96 = call i32 @wpabuf_free(%struct.wpabuf* %95)
  store i32 1, i32* %4, align 4
  br label %106

97:                                               ; preds = %45
  %98 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %99 = icmp ne %struct.wpabuf* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  store i32 1, i32* %4, align 4
  br label %106

105:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %100, %94, %77, %53, %40, %35, %28, %16
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss*, i32) #1

declare dso_local i64 @eap_is_wps_pbc_enrollee(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wps_is_selected_pbc_registrar(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @eap_is_wps_pin_enrollee(i32*) #1

declare dso_local i32 @wps_is_addr_authorized(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @os_reltime_age(i32*, %struct.os_reltime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
