; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_beacon_rep_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_beacon_rep_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beacon_rep_data = type { i64, i32, i64, i32 }
%struct.wpa_bss = type { i32 }
%struct.wpabuf = type { i32 }
%struct.rrm_measurement_beacon_report = type { i32 }

@REPORTED_FRAME_BODY_SUBELEM_LEN = common dso_local global i64 0, align 8
@BEACON_REPORT_LAST_INDICATION_SUBELEM_LEN = common dso_local global i32 0, align 4
@WLAN_BEACON_REPORT_SUBELEM_FRAME_BODY_FRAGMENT_ID = common dso_local global i32 0, align 4
@BEACON_REPORT_DETAIL_NONE = common dso_local global i64 0, align 8
@REPORTED_FRAME_BODY_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@WLAN_BEACON_REPORT_SUBELEM_LAST_INDICATION = common dso_local global i32 0, align 4
@MEASUREMENT_REPORT_MODE_ACCEPT = common dso_local global i32 0, align 4
@MEASURE_TYPE_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beacon_rep_data*, %struct.wpa_bss*, %struct.wpabuf**, %struct.rrm_measurement_beacon_report*, i32**, i64*, i32)* @wpas_add_beacon_rep_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_add_beacon_rep_elem(%struct.beacon_rep_data* %0, %struct.wpa_bss* %1, %struct.wpabuf** %2, %struct.rrm_measurement_beacon_report* %3, i32** %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.beacon_rep_data*, align 8
  %10 = alloca %struct.wpa_bss*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca %struct.rrm_measurement_beacon_report*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.beacon_rep_data* %0, %struct.beacon_rep_data** %9, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %10, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %11, align 8
  store %struct.rrm_measurement_beacon_report* %3, %struct.rrm_measurement_beacon_report** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i64, i64* @REPORTED_FRAME_BODY_SUBELEM_LEN, align 8
  %21 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %9, align 8
  %22 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @BEACON_REPORT_LAST_INDICATION_SUBELEM_LEN, align 4
  br label %28

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %20, %30
  store i64 %31, i64* %19, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add i64 18, %33
  %35 = load i64, i64* %19, align 8
  %36 = add i64 %34, %35
  %37 = call i32* @os_malloc(i64 %36)
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  store i32 -1, i32* %8, align 4
  br label %139

41:                                               ; preds = %28
  %42 = load i32*, i32** %17, align 8
  %43 = load %struct.rrm_measurement_beacon_report*, %struct.rrm_measurement_beacon_report** %12, align 8
  %44 = call i32 @os_memcpy(i32* %42, %struct.rrm_measurement_beacon_report* %43, i32 4)
  %45 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %9, align 8
  %46 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %9, align 8
  %49 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.wpa_bss*, %struct.wpa_bss** %10, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add i64 14, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32**, i32*** %13, align 8
  %59 = load i64*, i64** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @wpas_beacon_rep_add_frame_body(i32 %47, i64 %50, %struct.wpa_bss* %51, i32* %53, i32 %57, i32** %58, i64* %59, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %41
  br label %135

67:                                               ; preds = %41
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %18, align 8
  %73 = load i32, i32* @WLAN_BEACON_REPORT_SUBELEM_FRAME_BODY_FRAGMENT_ID, align 4
  %74 = load i32*, i32** %18, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 2, i32* %77, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %18, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %9, align 8
  %84 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BEACON_REPORT_DETAIL_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %67
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @REPORTED_FRAME_BODY_MORE_FRAGMENTS, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %105

98:                                               ; preds = %88, %67
  %99 = load i32, i32* @REPORTED_FRAME_BODY_MORE_FRAGMENTS, align 4
  %100 = xor i32 %99, -1
  %101 = load i32*, i32** %18, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %92
  %106 = load i64, i64* @REPORTED_FRAME_BODY_SUBELEM_LEN, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %18, align 8
  %109 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %9, align 8
  %110 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load i32, i32* @WLAN_BEACON_REPORT_SUBELEM_LAST_INDICATION, align 4
  %115 = load i32*, i32** %18, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 1, i32* %118, align 4
  %119 = load i32*, i32** %18, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %105
  %122 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %123 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %9, align 8
  %124 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MEASUREMENT_REPORT_MODE_ACCEPT, align 4
  %127 = load i32, i32* @MEASURE_TYPE_BEACON, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 4
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %131, %132
  %134 = call i32 @wpas_rrm_report_elem(%struct.wpabuf** %122, i32 %125, i32 %126, i32 %127, i32* %128, i64 %133)
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %121, %66
  %136 = load i32*, i32** %17, align 8
  %137 = call i32 @os_free(i32* %136)
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %135, %40
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, %struct.rrm_measurement_beacon_report*, i32) #1

declare dso_local i32 @wpas_beacon_rep_add_frame_body(i32, i64, %struct.wpa_bss*, i32*, i32, i32**, i64*, i32) #1

declare dso_local i32 @wpas_rrm_report_elem(%struct.wpabuf**, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
