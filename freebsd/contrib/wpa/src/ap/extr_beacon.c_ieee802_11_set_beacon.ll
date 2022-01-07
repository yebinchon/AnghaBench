; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_beacon.c_ieee802_11_set_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_beacon.c_ieee802_11_set_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i64, i64, %struct.hostapd_iface* }
%struct.hostapd_iface = type { i32, %struct.hostapd_hw_modes*, %struct.hostapd_config* }
%struct.hostapd_hw_modes = type { i32*, i32 }
%struct.hostapd_config = type { i32, i32, i32, i32, i32, i32 }
%struct.wpa_driver_ap_params = type { %struct.hostapd_freq_params*, i64, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf* }
%struct.hostapd_freq_params = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot set beacons during CSA period\00", align 1
@IEEE80211_MODE_AP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set beacon parameters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_11_set_beacon(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpa_driver_ap_params, align 8
  %5 = alloca %struct.hostapd_freq_params, align 4
  %6 = alloca %struct.hostapd_iface*, align 8
  %7 = alloca %struct.hostapd_config*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 3
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %15, align 8
  store %struct.hostapd_iface* %16, %struct.hostapd_iface** %6, align 8
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %18 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %17, i32 0, i32 2
  %19 = load %struct.hostapd_config*, %struct.hostapd_config** %18, align 8
  store %struct.hostapd_config* %19, %struct.hostapd_config** %7, align 8
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %20, i32 0, i32 1
  %22 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %21, align 8
  store %struct.hostapd_hw_modes* %22, %struct.hostapd_hw_modes** %8, align 8
  store i32 -1, i32* %13, align 4
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %115

30:                                               ; preds = %1
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %34 = call i64 @ieee802_11_build_ap_params(%struct.hostapd_data* %33, %struct.wpa_driver_ap_params* %4)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %115

37:                                               ; preds = %30
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %39 = call i64 @hostapd_build_ap_extra_ies(%struct.hostapd_data* %38, %struct.wpabuf** %9, %struct.wpabuf** %10, %struct.wpabuf** %11)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %112

42:                                               ; preds = %37
  %43 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %44 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %4, i32 0, i32 4
  store %struct.wpabuf* %43, %struct.wpabuf** %44, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %46 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %4, i32 0, i32 3
  store %struct.wpabuf* %45, %struct.wpabuf** %46, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %48 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %4, i32 0, i32 2
  store %struct.wpabuf* %47, %struct.wpabuf** %48, align 8
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %4, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %56 = icmp ne %struct.hostapd_hw_modes* %55, null
  br i1 %56, label %57, label %97

57:                                               ; preds = %42
  %58 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %59 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %62 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %65 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %68 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %71 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %74 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %77 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %80 = call i32 @hostapd_get_oper_chwidth(%struct.hostapd_config* %79)
  %81 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %82 = call i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.hostapd_config* %81)
  %83 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %84 = call i32 @hostapd_get_oper_centr_freq_seg1_idx(%struct.hostapd_config* %83)
  %85 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %86 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %89 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @IEEE80211_MODE_AP, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = call i64 @hostapd_set_freq_params(%struct.hostapd_freq_params* %5, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %80, i32 %82, i32 %84, i32 %87, i32* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %57
  %96 = getelementptr inbounds %struct.wpa_driver_ap_params, %struct.wpa_driver_ap_params* %4, i32 0, i32 0
  store %struct.hostapd_freq_params* %5, %struct.hostapd_freq_params** %96, align 8
  br label %97

97:                                               ; preds = %95, %57, %42
  %98 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %99 = call i32 @hostapd_drv_set_ap(%struct.hostapd_data* %98, %struct.wpa_driver_ap_params* %4)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %102 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %103 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %104 = call i32 @hostapd_free_ap_extra_ies(%struct.hostapd_data* %100, %struct.wpabuf* %101, %struct.wpabuf* %102, %struct.wpabuf* %103)
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* @MSG_ERROR, align 4
  %109 = call i32 @wpa_printf(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %111

110:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %41
  %113 = call i32 @ieee802_11_free_ap_params(%struct.wpa_driver_ap_params* %4)
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %36, %27
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @ieee802_11_build_ap_params(%struct.hostapd_data*, %struct.wpa_driver_ap_params*) #1

declare dso_local i64 @hostapd_build_ap_extra_ies(%struct.hostapd_data*, %struct.wpabuf**, %struct.wpabuf**, %struct.wpabuf**) #1

declare dso_local i64 @hostapd_set_freq_params(%struct.hostapd_freq_params*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @hostapd_get_oper_chwidth(%struct.hostapd_config*) #1

declare dso_local i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.hostapd_config*) #1

declare dso_local i32 @hostapd_get_oper_centr_freq_seg1_idx(%struct.hostapd_config*) #1

declare dso_local i32 @hostapd_drv_set_ap(%struct.hostapd_data*, %struct.wpa_driver_ap_params*) #1

declare dso_local i32 @hostapd_free_ap_extra_ies(%struct.hostapd_data*, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @ieee802_11_free_ap_params(%struct.wpa_driver_ap_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
