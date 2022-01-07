; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_handle_msr_req_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_handle_msr_req_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rrm_measurement_request_element = type { i32, i32, i32, i32, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Measurement request type %d token %d\00", align 1
@MEASUREMENT_REQUEST_MODE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RRM: Enable bit not supported, ignore\00", align 1
@MEASUREMENT_REQUEST_MODE_PARALLEL = common dso_local global i32 0, align 4
@MEASURE_TYPE_RPI_HIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"RRM: Parallel measurements are not supported, reject\00", align 1
@MEASUREMENT_REQUEST_MODE_DURATION_MANDATORY = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [101 x i8] c"RRM: Driver does not support dwell time configuration - reject beacon report with mandatory duration\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"RRM: Unsupported radio measurement type %u\00", align 1
@MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"RRM: Failed to add report element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.rrm_measurement_request_element*, %struct.wpabuf**)* @wpas_rrm_handle_msr_req_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_rrm_handle_msr_req_element(%struct.wpa_supplicant* %0, %struct.rrm_measurement_request_element* %1, %struct.wpabuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.rrm_measurement_request_element*, align 8
  %7 = alloca %struct.wpabuf**, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.rrm_measurement_request_element* %1, %struct.rrm_measurement_request_element** %6, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %7, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %11 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %14 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %18 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MEASUREMENT_REQUEST_MODE_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %28 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MEASUREMENT_REQUEST_MODE_PARALLEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %35 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MEASURE_TYPE_RPI_HIST, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %96

42:                                               ; preds = %33, %26
  %43 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %44 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MEASUREMENT_REQUEST_MODE_DURATION_MANDATORY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %53 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %89 [
    i32 128, label %55
    i32 129, label %60
  ]

55:                                               ; preds = %42
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %58 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %59 = call i32 @wpas_rrm_build_lci_report(%struct.wpa_supplicant* %56, %struct.rrm_measurement_request_element* %57, %struct.wpabuf** %58)
  store i32 %59, i32* %4, align 4
  br label %118

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0))
  br label %96

73:                                               ; preds = %63, %60
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %75 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %76 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %80 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %84 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 3
  %87 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %88 = call i32 @wpas_rm_handle_beacon_req(%struct.wpa_supplicant* %74, i32 %77, i32 %78, i8* %82, i32 %86, %struct.wpabuf** %87)
  store i32 %88, i32* %4, align 4
  br label %118

89:                                               ; preds = %42
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %92 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %70, %39
  %97 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %98 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @is_multicast_ether_addr(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %96
  %104 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %105 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %106 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE, align 4
  %109 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %110 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @wpas_rrm_report_elem(%struct.wpabuf** %104, i32 %107, i32 %108, i32 %111, i32* null, i32 0)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

117:                                              ; preds = %103, %96
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %114, %73, %55, %23
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_rrm_build_lci_report(%struct.wpa_supplicant*, %struct.rrm_measurement_request_element*, %struct.wpabuf**) #1

declare dso_local i32 @wpas_rm_handle_beacon_req(%struct.wpa_supplicant*, i32, i32, i8*, i32, %struct.wpabuf**) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @wpas_rrm_report_elem(%struct.wpabuf**, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
