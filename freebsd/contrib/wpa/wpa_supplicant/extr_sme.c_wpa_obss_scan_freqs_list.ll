; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_wpa_obss_scan_freqs_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_wpa_obss_scan_freqs_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wpa_driver_scan_params = type { i32* }
%struct.hostapd_hw_modes = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@HOSTAPD_MODE_IEEE80211G = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"OBSS: assoc_freq %d possible affected range %d-%d\00", align 1
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*)* @wpa_obss_scan_freqs_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_obss_scan_freqs_list(%struct.wpa_supplicant* %0, %struct.wpa_driver_scan_params* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_driver_scan_params*, align 8
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %4, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HOSTAPD_MODE_IEEE80211G, align 4
  %22 = call %struct.hostapd_hw_modes* @get_mode(i32 %16, i32 %20, i32 %21)
  store %struct.hostapd_hw_modes* %22, %struct.hostapd_hw_modes** %5, align 8
  %23 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %24 = icmp eq %struct.hostapd_hw_modes* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = call i32* @os_zalloc(i32 4)
  %27 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  br label %184

29:                                               ; preds = %2
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %45 = call i32* @wpa_bss_get_ie(i64 %43, i32 %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %40
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 2
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 130, i32* %65, align 4
  br label %75

66:                                               ; preds = %53
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 129, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %48, %40
  br label %77

77:                                               ; preds = %76, %35, %29
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 10
  store i32 %81, i32* %8, align 4
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 10
  store i32 %85, i32* %9, align 4
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %113 [
    i32 128, label %90
    i32 130, label %107
    i32 129, label %110
  ]

90:                                               ; preds = %77
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sle i32 %93, 2452
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 20
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %100 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 2432
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 20
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %103, %98
  br label %113

107:                                              ; preds = %77
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 20
  store i32 %109, i32* %9, align 4
  br label %113

110:                                              ; preds = %77
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 20
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %77, %110, %107, %106
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %116 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  %121 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %122 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  %125 = call i32* @os_calloc(i32 %124, i32 4)
  %126 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %129 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %113
  br label %184

133:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %181, %133
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %137 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %134
  %141 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %142 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %181

153:                                              ; preds = %140
  %154 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %155 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %154, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = sub nsw i32 %162, 10
  %164 = load i32, i32* %9, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %171, label %166

166:                                              ; preds = %153
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 10
  %169 = load i32, i32* %8, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %166, %153
  br label %181

172:                                              ; preds = %166
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %4, align 8
  %175 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %173, i32* %180, align 4
  br label %181

181:                                              ; preds = %172, %171, %152
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %134

184:                                              ; preds = %25, %132, %134
  ret void
}

declare dso_local %struct.hostapd_hw_modes* @get_mode(i32, i32, i32) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32* @wpa_bss_get_ie(i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32* @os_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
