; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, i64 }

@WPA_SCANNING = common dso_local global i64 0, align 8
@WPA_DISCONNECTED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WPS: Cancel operation - cancel scan\00", align 1
@WPA_ASSOCIATED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"WPS: Cancel operation - deauthenticate\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@wpas_wps_clear_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_cancel(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @WPA_SCANNING, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WPA_DISCONNECTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = call i32 @wpa_supplicant_cancel_scan(%struct.wpa_supplicant* %17)
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %20 = call i32 @wpas_clear_wps(%struct.wpa_supplicant* %19)
  br label %51

21:                                               ; preds = %8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WPA_ASSOCIATED, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %33 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %34 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %32, i32 %33)
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = call i32 @wpas_clear_wps(%struct.wpa_supplicant* %35)
  br label %50

37:                                               ; preds = %21
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %39 = call i32 @wpas_wps_reenable_networks(%struct.wpa_supplicant* %38)
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %41 = call i32 @wpas_wps_clear_ap_info(%struct.wpa_supplicant* %40)
  %42 = load i32, i32* @wpas_wps_clear_timeout, align 4
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %44 = call i64 @eloop_cancel_timeout(i32 %42, %struct.wpa_supplicant* %43, i32* null)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %48 = call i32 @wpas_clear_wps(%struct.wpa_supplicant* %47)
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50, %14
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_supplicant_cancel_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_clear_wps(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_wps_reenable_networks(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_wps_clear_ap_info(%struct.wpa_supplicant*) #1

declare dso_local i64 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
