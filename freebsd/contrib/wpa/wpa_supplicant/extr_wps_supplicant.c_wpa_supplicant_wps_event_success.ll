; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpa_supplicant_wps_event_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpa_supplicant_wps_event_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@WPS_EVENT_SUCCESS = common dso_local global i32 0, align 4
@wpas_wps_reenable_networks_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpa_supplicant_wps_event_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_wps_event_success(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = load i32, i32* @MSG_INFO, align 4
  %5 = load i32, i32* @WPS_EVENT_SUCCESS, align 4
  %6 = call i32 @wpa_msg(%struct.wpa_supplicant* %3, i32 %4, i32 %5)
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = call i32 @wpas_notify_wps_event_success(%struct.wpa_supplicant* %9)
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant* %16, i64 %19, i32 1)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @wpas_wps_reenable_networks_cb, align 4
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = call i32 @eloop_register_timeout(i32 10, i32 0, i32 %24, %struct.wpa_supplicant* %25, i32* null)
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpas_p2p_wps_success(%struct.wpa_supplicant* %27, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpas_notify_wps_event_success(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant*, i64, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpas_p2p_wps_success(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
