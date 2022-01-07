; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_beacon_rep_update_last_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_beacon_rep_update_last_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrm_measurement_report_element = type { i32, i64, i64, i64 }
%struct.rrm_measurement_beacon_report = type { i32* }

@WLAN_EID_MEASURE_REPORT = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"RRM: non-measurement report element in measurement report frame\00", align 1
@MEASURE_TYPE_BEACON = common dso_local global i64 0, align 8
@WLAN_BEACON_REPORT_SUBELEM_LAST_INDICATION = common dso_local global i32 0, align 4
@BEACON_REPORT_LAST_INDICATION_SUBELEM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @wpas_rrm_beacon_rep_update_last_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_rrm_beacon_rep_update_last_frame(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rrm_measurement_report_element*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rrm_measurement_beacon_report*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %7, align 8
  store %struct.rrm_measurement_beacon_report* null, %struct.rrm_measurement_beacon_report** %9, align 8
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = icmp sge i64 %20, 32
  br i1 %21, label %22, label %63

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = bitcast i32* %23 to %struct.rrm_measurement_report_element*
  store %struct.rrm_measurement_report_element* %24, %struct.rrm_measurement_report_element** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.rrm_measurement_report_element*, %struct.rrm_measurement_report_element** %6, align 8
  %27 = getelementptr inbounds %struct.rrm_measurement_report_element, %struct.rrm_measurement_report_element* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %8, align 8
  %32 = load %struct.rrm_measurement_report_element*, %struct.rrm_measurement_report_element** %6, align 8
  %33 = getelementptr inbounds %struct.rrm_measurement_report_element, %struct.rrm_measurement_report_element* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WLAN_EID_MEASURE_REPORT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ugt i32* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %22
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

44:                                               ; preds = %37
  %45 = load %struct.rrm_measurement_report_element*, %struct.rrm_measurement_report_element** %6, align 8
  %46 = getelementptr inbounds %struct.rrm_measurement_report_element, %struct.rrm_measurement_report_element* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MEASURE_TYPE_BEACON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.rrm_measurement_report_element*, %struct.rrm_measurement_report_element** %6, align 8
  %52 = getelementptr inbounds %struct.rrm_measurement_report_element, %struct.rrm_measurement_report_element* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.rrm_measurement_beacon_report*
  store %struct.rrm_measurement_beacon_report* %54, %struct.rrm_measurement_beacon_report** %9, align 8
  br label %55

55:                                               ; preds = %50, %44
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 2
  %60 = load i32*, i32** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %4, align 8
  br label %14

63:                                               ; preds = %14
  %64 = load %struct.rrm_measurement_beacon_report*, %struct.rrm_measurement_beacon_report** %9, align 8
  %65 = icmp ne %struct.rrm_measurement_beacon_report* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %119

67:                                               ; preds = %63
  %68 = load %struct.rrm_measurement_beacon_report*, %struct.rrm_measurement_beacon_report** %9, align 8
  %69 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %10, align 8
  br label %71

71:                                               ; preds = %84, %67
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ult i32* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @WLAN_BEACON_REPORT_SUBELEM_LAST_INDICATION, align 4
  %81 = icmp ne i32 %79, %80
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi i1 [ false, %71 ], [ %81, %76 ]
  br i1 %83, label %84, label %92

84:                                               ; preds = %82
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 2, %87
  %89 = load i32*, i32** %10, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %10, align 8
  br label %71

92:                                               ; preds = %82
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ult i32* %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WLAN_BEACON_REPORT_SUBELEM_LAST_INDICATION, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* @BEACON_REPORT_LAST_INDICATION_SUBELEM_LEN, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ule i32* %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %108, %103, %97, %92
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %66, %41
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
