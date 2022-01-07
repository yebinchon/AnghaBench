; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_build_lci_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_build_lci_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rrm_measurement_request_element = type { i64*, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.os_reltime = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Measurement request location subject=%u\00", align 1
@LOCATION_SUBJECT_REMOTE = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Not building LCI report - bad location subject\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"LCI request subelements\00", align 1
@LCI_REQ_SUBELEM_MAX_AGE = common dso_local global i32 0, align 4
@MEASUREMENT_REPORT_MODE_ACCEPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to add LCI report element\00", align 1
@MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"RRM: Failed to add report element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.rrm_measurement_request_element*, %struct.wpabuf**)* @wpas_rrm_build_lci_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_rrm_build_lci_report(%struct.wpa_supplicant* %0, %struct.rrm_measurement_request_element* %1, %struct.wpabuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.rrm_measurement_request_element*, align 8
  %7 = alloca %struct.wpabuf**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.os_reltime, align 4
  %11 = alloca %struct.os_reltime, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.rrm_measurement_request_element* %1, %struct.rrm_measurement_request_element** %6, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %17 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %14, align 8
  %19 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %20 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp ult i64 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %137

27:                                               ; preds = %3
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %115

33:                                               ; preds = %27
  %34 = load i64*, i64** %14, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %14, align 8
  %36 = load i64, i64* %34, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %15, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %15, align 8
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @LOCATION_SUBJECT_REMOTE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

48:                                               ; preds = %33
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @wpa_hexdump(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64* %50, i64 %51)
  %53 = load i64*, i64** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i32, i32* @LCI_REQ_SUBELEM_MAX_AGE, align 4
  %56 = call i64* @get_ie(i64* %53, i64 %54, i32 %55)
  store i64* %56, i64** %13, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i64*, i64** %13, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i64*, i64** %13, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = call i32 @WPA_GET_LE16(i64* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %59, %48
  %69 = call i64 @os_get_reltime(%struct.os_reltime* %10)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %115

72:                                               ; preds = %68
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 2
  %75 = call i32 @os_reltime_sub(%struct.os_reltime* %10, i32* %74, %struct.os_reltime* %11)
  %76 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 10
  %79 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 100000
  %82 = add nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 65535
  br i1 %85, label %86, label %92

86:                                               ; preds = %72
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %12, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %115

92:                                               ; preds = %86, %72
  %93 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %94 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %95 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MEASUREMENT_REPORT_MODE_ACCEPT, align 4
  %98 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %99 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32* @wpabuf_head_u8(i32 %103)
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %106 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wpabuf_len(i32 %107)
  %109 = call i64 @wpas_rrm_report_elem(%struct.wpabuf** %93, i32 %96, i32 %97, i32 %100, i32* %104, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %137

114:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %137

115:                                              ; preds = %91, %71, %32
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %117 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @is_multicast_ether_addr(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %115
  %123 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %124 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %125 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE, align 4
  %128 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %6, align 8
  %129 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @wpas_rrm_report_elem(%struct.wpabuf** %123, i32 %126, i32 %127, i32 %130, i32* null, i32 0)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %122
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %137

136:                                              ; preds = %122, %115
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %133, %114, %111, %45, %26
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i64* @get_ie(i64*, i64, i32) #1

declare dso_local i32 @WPA_GET_LE16(i64*) #1

declare dso_local i64 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, i32*, %struct.os_reltime*) #1

declare dso_local i64 @wpas_rrm_report_elem(%struct.wpabuf**, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @wpabuf_head_u8(i32) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
