; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_send_lci_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_send_lci_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.sta_info = type { i32, i32* }

@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Request LCI: Destination address is not connected\00", align 1
@WLAN_RRM_CAPS_LCI_MEASUREMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Request LCI: Station does not support LCI in RRM\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Request LCI: LCI request is already in process, overriding\00", align 1
@hostapd_lci_rep_timeout_handler = common dso_local global i32 0, align 4
@WLAN_ACTION_RADIO_MEASUREMENT = common dso_local global i32 0, align 4
@WLAN_RRM_RADIO_MEASUREMENT_REQUEST = common dso_local global i32 0, align 4
@WLAN_EID_MEASURE_REQUEST = common dso_local global i32 0, align 4
@MEASURE_TYPE_LCI = common dso_local global i32 0, align 4
@LOCATION_SUBJECT_REMOTE = common dso_local global i32 0, align 4
@LCI_REQ_SUBELEM_MAX_AGE = common dso_local global i32 0, align 4
@HOSTAPD_RRM_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_send_lci_req(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %9, i32* %10)
  store %struct.sta_info* %11, %struct.sta_info** %7, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %13 = icmp ne %struct.sta_info* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %129

24:                                               ; preds = %14
  %25 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WLAN_RRM_CAPS_LCI_MEASUREMENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %129

36:                                               ; preds = %24
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* @hostapd_lci_rep_timeout_handler, align 4
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %48 = call i32 @eloop_cancel_timeout(i32 %46, %struct.hostapd_data* %47, i32* null)
  br label %49

49:                                               ; preds = %41, %36
  %50 = call %struct.wpabuf* @wpabuf_alloc(i32 15)
  store %struct.wpabuf* %50, %struct.wpabuf** %6, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %52 = icmp ne %struct.wpabuf* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %129

54:                                               ; preds = %49
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %56 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %65 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %54
  %69 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %70 = load i32, i32* @WLAN_ACTION_RADIO_MEASUREMENT, align 4
  %71 = call i32 @wpabuf_put_u8(%struct.wpabuf* %69, i32 %70)
  %72 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %73 = load i32, i32* @WLAN_RRM_RADIO_MEASUREMENT_REQUEST, align 4
  %74 = call i32 @wpabuf_put_u8(%struct.wpabuf* %72, i32 %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %76 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %77 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @wpabuf_put_u8(%struct.wpabuf* %75, i32 %78)
  %80 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %81 = call i32 @wpabuf_put_le16(%struct.wpabuf* %80, i32 0)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %83 = load i32, i32* @WLAN_EID_MEASURE_REQUEST, align 4
  %84 = call i32 @wpabuf_put_u8(%struct.wpabuf* %82, i32 %83)
  %85 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %86 = call i32 @wpabuf_put_u8(%struct.wpabuf* %85, i32 8)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %88 = call i32 @wpabuf_put_u8(%struct.wpabuf* %87, i32 1)
  %89 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %90 = call i32 @wpabuf_put_u8(%struct.wpabuf* %89, i32 0)
  %91 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %92 = load i32, i32* @MEASURE_TYPE_LCI, align 4
  %93 = call i32 @wpabuf_put_u8(%struct.wpabuf* %91, i32 %92)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %95 = load i32, i32* @LOCATION_SUBJECT_REMOTE, align 4
  %96 = call i32 @wpabuf_put_u8(%struct.wpabuf* %94, i32 %95)
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %98 = load i32, i32* @LCI_REQ_SUBELEM_MAX_AGE, align 4
  %99 = call i32 @wpabuf_put_u8(%struct.wpabuf* %97, i32 %98)
  %100 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %101 = call i32 @wpabuf_put_u8(%struct.wpabuf* %100, i32 2)
  %102 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %103 = call i32 @wpabuf_put_le16(%struct.wpabuf* %102, i32 65535)
  %104 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %105 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %106 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %112 = call i32 @wpabuf_head(%struct.wpabuf* %111)
  %113 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %114 = call i32 @wpabuf_len(%struct.wpabuf* %113)
  %115 = call i32 @hostapd_drv_send_action(%struct.hostapd_data* %104, i32 %109, i32 0, i32* %110, i32 %112, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %117 = call i32 @wpabuf_free(%struct.wpabuf* %116)
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %68
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %129

122:                                              ; preds = %68
  %123 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %124 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* @HOSTAPD_RRM_REQUEST_TIMEOUT, align 4
  %126 = load i32, i32* @hostapd_lci_rep_timeout_handler, align 4
  %127 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %128 = call i32 @eloop_register_timeout(i32 %125, i32 0, i32 %126, %struct.hostapd_data* %127, i32* null)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %120, %53, %33, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @hostapd_drv_send_action(%struct.hostapd_data*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
