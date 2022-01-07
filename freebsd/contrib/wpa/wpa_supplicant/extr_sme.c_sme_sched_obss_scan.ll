; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_sched_obss_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_sched_obss_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_4__, %struct.wpa_bss*, %struct.TYPE_3__, %struct.wpa_ssid* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.wpa_bss = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i64, i32 }
%struct.wpa_ssid = type { i64 }

@sme_obss_scan_timeout = common dso_local global i32 0, align 4
@HT_SEC_CHAN_UNKNOWN = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OBSS_SCAN = common dso_local global i32 0, align 4
@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAP = common dso_local global i32 0, align 4
@WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"SME: Invalid OBSS Scan Interval %u replaced with the minimum 10 sec\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SME: OBSS Scan Interval %u sec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sme_sched_obss_scan(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 2
  %12 = load %struct.wpa_bss*, %struct.wpa_bss** %11, align 8
  store %struct.wpa_bss* %12, %struct.wpa_bss** %6, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 4
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  store %struct.wpa_ssid* %15, %struct.wpa_ssid** %7, align 8
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %8, align 8
  %16 = load i32, i32* @sme_obss_scan_timeout, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = call i32 @eloop_cancel_timeout(i32 %16, %struct.wpa_supplicant* %17, i32* null)
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @HT_SEC_CHAN_UNKNOWN, align 4
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %189

29:                                               ; preds = %2
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WPA_DRIVER_FLAGS_OBSS_SCAN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36, %29
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %45 = icmp eq %struct.wpa_ssid* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %43, %36
  br label %189

53:                                               ; preds = %46
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %56, align 8
  %58 = icmp ne %struct.hostapd_hw_modes* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %189

60:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %72, i64 %74
  store %struct.hostapd_hw_modes* %75, %struct.hostapd_hw_modes** %8, align 8
  %76 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %77 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %86

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %61

86:                                               ; preds = %81, %61
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %87, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %86
  %94 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %95 = icmp ne %struct.hostapd_hw_modes* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %98 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96, %93, %86
  br label %189

104:                                              ; preds = %96
  %105 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %106 = icmp eq %struct.wpa_bss* %105, null
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %109 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 2400
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %114 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 2500
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %107, %104
  br label %189

118:                                              ; preds = %112
  %119 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %120 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %119, i32 0, i32 2
  %121 = load %struct.wpa_bss*, %struct.wpa_bss** %120, align 8
  %122 = load i32, i32* @WLAN_EID_HT_CAP, align 4
  %123 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %121, i32 %122)
  store i32* %123, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %118
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = call i32 @WPA_GET_LE16(i32* %133)
  %135 = load i32, i32* @HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131, %126, %118
  br label %189

139:                                              ; preds = %131
  %140 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %141 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %140, i32 0, i32 2
  %142 = load %struct.wpa_bss*, %struct.wpa_bss** %141, align 8
  %143 = load i32, i32* @WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS, align 4
  %144 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %142, i32 %143)
  store i32* %144, i32** %5, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 14
  br i1 %151, label %152, label %153

152:                                              ; preds = %147, %139
  br label %189

153:                                              ; preds = %147
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 6
  %156 = call i32 @WPA_GET_LE16(i32* %155)
  %157 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %158 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %161 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %163, 10
  br i1 %164, label %165, label %175

165:                                              ; preds = %153
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %168 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @wpa_printf(i32 %166, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 10, i32* %174, align 8
  br label %175

175:                                              ; preds = %165, %153
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %178 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @wpa_printf(i32 %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %183 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @sme_obss_scan_timeout, align 4
  %187 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %188 = call i32 @eloop_register_timeout(i32 %185, i32 0, i32 %186, %struct.wpa_supplicant* %187, i32* null)
  br label %189

189:                                              ; preds = %175, %152, %138, %117, %103, %59, %52, %28
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
