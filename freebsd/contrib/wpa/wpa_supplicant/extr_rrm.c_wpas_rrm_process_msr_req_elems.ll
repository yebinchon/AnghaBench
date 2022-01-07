; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_process_msr_req_elems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_process_msr_req_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_supplicant = type { i32 }
%struct.rrm_measurement_request_element = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RRM: Truncated element\00", align 1
@WLAN_EID_MEASURE_REQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"RRM: Expected Measurement Request element, but EID is %u\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RRM: Element length too short\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"RRM: Element length too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wpa_supplicant*, i32*, i64)* @wpas_rrm_process_msr_req_elems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wpas_rrm_process_msr_req_elems(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.rrm_measurement_request_element*, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %77

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.rrm_measurement_request_element*
  store %struct.rrm_measurement_request_element* %22, %struct.rrm_measurement_request_element** %9, align 8
  %23 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %24 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLAN_EID_MEASURE_REQUEST, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %31 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %77

34:                                               ; preds = %20
  %35 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %36 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %77

42:                                               ; preds = %34
  %43 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %44 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 2
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %77

53:                                               ; preds = %42
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %56 = call i32 @wpas_rrm_handle_msr_req_element(%struct.wpa_supplicant* %54, %struct.rrm_measurement_request_element* %55, %struct.wpabuf** %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %77

60:                                               ; preds = %53
  %61 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %62 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 2
  %65 = load i32*, i32** %6, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %6, align 8
  %68 = load %struct.rrm_measurement_request_element*, %struct.rrm_measurement_request_element** %9, align 8
  %69 = getelementptr inbounds %struct.rrm_measurement_request_element, %struct.rrm_measurement_request_element* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %7, align 8
  br label %11

75:                                               ; preds = %11
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %76, %struct.wpabuf** %4, align 8
  br label %80

77:                                               ; preds = %59, %50, %39, %28, %17
  %78 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %79 = call i32 @wpabuf_free(%struct.wpabuf* %78)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %80

80:                                               ; preds = %77, %75
  %81 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %81
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_rrm_handle_msr_req_element(%struct.wpa_supplicant*, %struct.rrm_measurement_request_element*, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
