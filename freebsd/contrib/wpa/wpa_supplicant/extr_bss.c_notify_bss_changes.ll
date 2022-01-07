; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_notify_bss_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_notify_bss_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_bss = type { i32 }

@WPA_BSS_FREQ_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_SIGNAL_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_PRIVACY_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_MODE_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_WPAIE_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_RSNIE_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_WPS_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_IES_CHANGED_FLAG = common dso_local global i32 0, align 4
@WPA_BSS_RATES_CHANGED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32, %struct.wpa_bss*)* @notify_bss_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_bss_changes(%struct.wpa_supplicant* %0, i32 %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wpa_bss* %2, %struct.wpa_bss** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @WPA_BSS_FREQ_CHANGED_FLAG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %13 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %14 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wpas_notify_bss_freq_changed(%struct.wpa_supplicant* %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WPA_BSS_SIGNAL_CHANGED_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %24 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %25 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wpas_notify_bss_signal_changed(%struct.wpa_supplicant* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WPA_BSS_PRIVACY_CHANGED_FLAG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wpas_notify_bss_privacy_changed(%struct.wpa_supplicant* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @WPA_BSS_MODE_CHANGED_FLAG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %46 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wpas_notify_bss_mode_changed(%struct.wpa_supplicant* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @WPA_BSS_WPAIE_CHANGED_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %58 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wpas_notify_bss_wpaie_changed(%struct.wpa_supplicant* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @WPA_BSS_RSNIE_CHANGED_FLAG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %68 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %69 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wpas_notify_bss_rsnie_changed(%struct.wpa_supplicant* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @WPA_BSS_WPS_CHANGED_FLAG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %79 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %80 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wpas_notify_bss_wps_changed(%struct.wpa_supplicant* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @WPA_BSS_IES_CHANGED_FLAG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %90 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %91 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wpas_notify_bss_ies_changed(%struct.wpa_supplicant* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @WPA_BSS_RATES_CHANGED_FLAG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %101 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %102 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @wpas_notify_bss_rates_changed(%struct.wpa_supplicant* %100, i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %107 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %108 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @wpas_notify_bss_seen(%struct.wpa_supplicant* %106, i32 %109)
  ret void
}

declare dso_local i32 @wpas_notify_bss_freq_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_signal_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_privacy_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_mode_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_wpaie_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_rsnie_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_wps_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_ies_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_rates_changed(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_bss_seen(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
