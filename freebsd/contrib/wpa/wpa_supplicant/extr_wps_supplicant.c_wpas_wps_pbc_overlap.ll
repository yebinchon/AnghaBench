; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_pbc_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_pbc_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%union.wps_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WPS_CFG_MULTIPLE_PBC_DETECTED = common dso_local global i32 0, align 4
@WPS_EI_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_wps_pbc_overlap(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %union.wps_event_data, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = call i32 @os_memset(%union.wps_event_data* %3, i32 0, i32 8)
  %5 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %6 = bitcast %union.wps_event_data* %3 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @WPS_EI_NO_ERROR, align 4
  %9 = bitcast %union.wps_event_data* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = bitcast %union.wps_event_data* %3 to %struct.TYPE_2__*
  %13 = call i32 @wpas_notify_wps_event_fail(%struct.wpa_supplicant* %11, %struct.TYPE_2__* %12)
  ret void
}

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

declare dso_local i32 @wpas_notify_wps_event_fail(%struct.wpa_supplicant*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
