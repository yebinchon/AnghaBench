; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_ap_pin_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_ap_pin_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"WPS: Enabling AP PIN (timeout=%d)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@WPS_EVENT_AP_SETUP_UNLOCKED = common dso_local global i32 0, align 4
@hostapd_wps_ap_pin_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32)* @hostapd_wps_ap_pin_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_wps_ap_pin_enable(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i32, i32* @WPS_EVENT_AP_SETUP_UNLOCKED, align 4
  %28 = call i32 @wpa_msg(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wps_registrar_update_ie(i32 %37)
  br label %39

39:                                               ; preds = %22, %2
  %40 = load i32, i32* @hostapd_wps_ap_pin_timeout, align 4
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %42 = call i32 @eloop_cancel_timeout(i32 %40, %struct.hostapd_data* %41, i32* null)
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @hostapd_wps_ap_pin_timeout, align 4
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %49 = call i32 @eloop_register_timeout(i32 %46, i32 0, i32 %47, %struct.hostapd_data* %48, i32* null)
  br label %50

50:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @wps_registrar_update_ie(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
