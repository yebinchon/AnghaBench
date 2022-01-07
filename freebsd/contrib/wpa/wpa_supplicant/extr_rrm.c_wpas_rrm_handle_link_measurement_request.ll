; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_handle_link_measurement_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_handle_link_measurement_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.rrm_link_measurement_request = type { i32 }
%struct.rrm_link_measurement_report = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@WPA_COMPLETED = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RRM: Ignoring link measurement request. Not associated\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"RRM: Ignoring link measurement request. Not RRM network\00", align 1
@WPA_DRIVER_FLAGS_TX_POWER_INSERTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"RRM: Measurement report failed. TX power insertion not supported\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"RRM: Link measurement report failed. Request too short\00", align 1
@WLAN_EID_TPC_REPORT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"RRM: Link measurement report failed. Buffer allocation failed\00", align 1
@WLAN_ACTION_RADIO_MEASUREMENT = common dso_local global i32 0, align 4
@WLAN_RRM_LINK_MEASUREMENT_REPORT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"RRM: Link measurement report\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"RRM: Link measurement report failed. Send action failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_rrm_handle_link_measurement_request(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.rrm_link_measurement_request*, align 8
  %13 = alloca %struct.rrm_link_measurement_report, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WPA_COMPLETED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %105

22:                                               ; preds = %5
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %105

31:                                               ; preds = %22
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WPA_DRIVER_FLAGS_TX_POWER_INSERTION, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %105

41:                                               ; preds = %31
  %42 = load i32*, i32** %8, align 8
  %43 = bitcast i32* %42 to %struct.rrm_link_measurement_request*
  store %struct.rrm_link_measurement_request* %43, %struct.rrm_link_measurement_request** %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %105

49:                                               ; preds = %41
  %50 = call i32 @os_memset(%struct.rrm_link_measurement_report* %13, i32 0, i32 20)
  %51 = load %struct.rrm_link_measurement_request*, %struct.rrm_link_measurement_request** %12, align 8
  %52 = getelementptr inbounds %struct.rrm_link_measurement_request, %struct.rrm_link_measurement_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.rrm_link_measurement_report, %struct.rrm_link_measurement_report* %13, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @WLAN_EID_TPC_REPORT, align 4
  %56 = getelementptr inbounds %struct.rrm_link_measurement_report, %struct.rrm_link_measurement_report* %13, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.rrm_link_measurement_report, %struct.rrm_link_measurement_report* %13, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 2, i32* %59, align 4
  %60 = getelementptr inbounds %struct.rrm_link_measurement_report, %struct.rrm_link_measurement_report* %13, i32 0, i32 0
  store i32 255, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @rssi_to_rcpi(i32 %61)
  %63 = getelementptr inbounds %struct.rrm_link_measurement_report, %struct.rrm_link_measurement_report* %13, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = call %struct.wpabuf* @wpabuf_alloc(i32 22)
  store %struct.wpabuf* %64, %struct.wpabuf** %11, align 8
  %65 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %66 = icmp eq %struct.wpabuf* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* @MSG_ERROR, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %105

70:                                               ; preds = %49
  %71 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %72 = load i32, i32* @WLAN_ACTION_RADIO_MEASUREMENT, align 4
  %73 = call i32 @wpabuf_put_u8(%struct.wpabuf* %71, i32 %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %75 = load i32, i32* @WLAN_RRM_LINK_MEASUREMENT_REPORT, align 4
  %76 = call i32 @wpabuf_put_u8(%struct.wpabuf* %74, i32 %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %78 = call i32 @wpabuf_put_data(%struct.wpabuf* %77, %struct.rrm_link_measurement_report* %13, i32 20)
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %81 = call i32 @wpa_hexdump_buf(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), %struct.wpabuf* %80)
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %91 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %94 = call i32 @wpabuf_head(%struct.wpabuf* %93)
  %95 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %96 = call i32 @wpabuf_len(%struct.wpabuf* %95)
  %97 = call i64 @wpa_drv_send_action(%struct.wpa_supplicant* %82, i32 %85, i32 0, i32* %86, i32 %89, i32 %92, i32 %94, i32 %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %70
  %100 = load i32, i32* @MSG_ERROR, align 4
  %101 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %70
  %103 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  br label %105

105:                                              ; preds = %102, %67, %46, %38, %28, %19
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(%struct.rrm_link_measurement_report*, i32, i32) #1

declare dso_local i32 @rssi_to_rcpi(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, %struct.rrm_link_measurement_report*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @wpa_drv_send_action(%struct.wpa_supplicant*, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
