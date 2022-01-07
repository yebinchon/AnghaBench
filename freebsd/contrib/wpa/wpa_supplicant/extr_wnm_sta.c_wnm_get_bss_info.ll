; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_get_bss_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_get_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_bss = type { i32 }

@NEI_REP_BSSID_INFO_AP_UNKNOWN_REACH = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_QOS = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_QOS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_APSD = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_APSD = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_RADIO_MEASUREMENT = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_RM = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DELAYED_BLOCK_ACK = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_DELAYED_BA = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IMM_BLOCK_ACK = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_IMM_BA = common dso_local global i32 0, align 4
@WLAN_EID_MOBILITY_DOMAIN = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_MOBILITY_DOMAIN = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAP = common dso_local global i32 0, align 4
@NEI_REP_BSSID_INFO_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_bss*)* @wnm_get_bss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wnm_get_bss_info(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @NEI_REP_BSSID_INFO_AP_UNKNOWN_REACH, align 4
  %7 = load i32, i32* %5, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @NEI_REP_BSSID_INFO_SPECTRUM_MGMT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WLAN_CAPABILITY_QOS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @NEI_REP_BSSID_INFO_QOS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WLAN_CAPABILITY_APSD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @NEI_REP_BSSID_INFO_APSD, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WLAN_CAPABILITY_RADIO_MEASUREMENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @NEI_REP_BSSID_INFO_RM, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WLAN_CAPABILITY_DELAYED_BLOCK_ACK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @NEI_REP_BSSID_INFO_DELAYED_BA, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %65 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WLAN_CAPABILITY_IMM_BLOCK_ACK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @NEI_REP_BSSID_INFO_IMM_BA, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WLAN_EID_MOBILITY_DOMAIN, align 4
  %80 = call i64 @wpa_bss_ies_eq(%struct.wpa_bss* %75, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @NEI_REP_BSSID_INFO_MOBILITY_DOMAIN, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %74
  %87 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WLAN_EID_HT_CAP, align 4
  %92 = call i64 @wpa_bss_ies_eq(%struct.wpa_bss* %87, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @NEI_REP_BSSID_INFO_HT, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %86
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @wpa_bss_ies_eq(%struct.wpa_bss*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
