; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_send_msr_report_mpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_send_msr_report_mpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@WLAN_ACTION_RADIO_MEASUREMENT = common dso_local global i32 0, align 4
@WLAN_RRM_RADIO_MEASUREMENT_REPORT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"RRM: Radio measurement report failed: Sending Action frame failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i64)* @wpas_rrm_send_msr_report_mpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_rrm_send_msr_report_mpdu(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = add i64 %8, 3
  %10 = call %struct.wpabuf* @wpabuf_alloc(i64 %9)
  store %struct.wpabuf* %10, %struct.wpabuf** %7, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %12 = icmp ne %struct.wpabuf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %16 = load i32, i32* @WLAN_ACTION_RADIO_MEASUREMENT, align 4
  %17 = call i32 @wpabuf_put_u8(%struct.wpabuf* %15, i32 %16)
  %18 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %19 = load i32, i32* @WLAN_RRM_RADIO_MEASUREMENT_REPORT, align 4
  %20 = call i32 @wpabuf_put_u8(%struct.wpabuf* %18, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wpabuf_put_u8(%struct.wpabuf* %21, i32 %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @wpabuf_put_data(%struct.wpabuf* %27, i32* %28, i64 %29)
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %45 = call i32 @wpabuf_head(%struct.wpabuf* %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %47 = call i32 @wpabuf_len(%struct.wpabuf* %46)
  %48 = call i64 @wpa_drv_send_action(%struct.wpa_supplicant* %31, i32 %34, i32 0, i32 %37, i32 %40, i32 %43, i32 %45, i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %14
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %14
  %54 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %55 = call i32 @wpabuf_free(%struct.wpabuf* %54)
  br label %56

56:                                               ; preds = %53, %13
  ret void
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @wpa_drv_send_action(%struct.wpa_supplicant*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
