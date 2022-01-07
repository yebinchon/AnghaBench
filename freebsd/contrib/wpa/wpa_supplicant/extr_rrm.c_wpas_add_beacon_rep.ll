; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_beacon_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_beacon_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.beacon_rep_data }
%struct.beacon_rep_data = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.wpa_bss = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.rrm_measurement_beacon_report = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@broadcast_ether_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@BEACON_REPORT_DETAIL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpabuf**, %struct.wpa_bss*, i32, i32)* @wpas_add_beacon_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_add_beacon_rep(%struct.wpa_supplicant* %0, %struct.wpabuf** %1, %struct.wpa_bss* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.wpabuf**, align 8
  %9 = alloca %struct.wpa_bss*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.beacon_rep_data*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.rrm_measurement_beacon_report, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store %struct.wpabuf** %1, %struct.wpabuf*** %8, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  store %struct.beacon_rep_data* %20, %struct.beacon_rep_data** %12, align 8
  %21 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %22 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %21, i64 1
  %23 = bitcast %struct.wpa_bss* %22 to i64*
  store i64* %23, i64** %13, align 8
  %24 = load i64*, i64** %13, align 8
  store i64* %24, i64** %14, align 8
  %25 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %26 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %31 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %5
  %34 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %35 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %39 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %40 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @broadcast_ether_addr, align 4
  %43 = load i64, i64* @ETH_ALEN, align 8
  %44 = call i64 @os_memcmp(i32 %41, i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %48 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %51 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* @ETH_ALEN, align 8
  %54 = call i64 @os_memcmp(i32 %49, i32 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %147

57:                                               ; preds = %46, %37
  %58 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %59 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %64 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %67 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %72 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %75 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %78 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @os_memcmp(i32 %73, i32 %76, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70, %62
  store i32 0, i32* %6, align 4
  br label %147

83:                                               ; preds = %70, %57
  %84 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %85 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 9
  %90 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 8
  %91 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 7
  %92 = call i64 @wpas_get_op_chan_phy(i32 %86, i64* %87, i64 %88, i32* %89, i32* %90, i32* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %147

95:                                               ; preds = %83
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @host_to_le64(i32 %96)
  %98 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 6
  store i32 %97, i32* %98, align 4
  %99 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %100 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @host_to_le16(i32 %102)
  %104 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 5
  store i32 %103, i32* %104, align 8
  %105 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %106 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @rssi_to_rcpi(i32 %107)
  %109 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 4
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 0
  store i32 255, i32* %110, align 8
  %111 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %114 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* @ETH_ALEN, align 8
  %117 = call i32 @os_memcpy(i32 %112, i32 %115, i64 %116)
  %118 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @host_to_le32(i32 %119)
  %121 = getelementptr inbounds %struct.rrm_measurement_beacon_report, %struct.rrm_measurement_beacon_report* %16, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %144, %95
  %123 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %124 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %125 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %126 = load i64, i64* %17, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %17, align 8
  %128 = trunc i64 %126 to i32
  %129 = call i32 @wpas_add_beacon_rep_elem(%struct.beacon_rep_data* %123, %struct.wpa_bss* %124, %struct.wpabuf** %125, %struct.rrm_measurement_beacon_report* %16, i64** %14, i64* %15, i32 %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %6, align 4
  br label %147

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %12, align 8
  %137 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @BEACON_REPORT_DETAIL_NONE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i64, i64* %15, align 8
  %143 = icmp uge i64 %142, 2
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i1 [ false, %135 ], [ %143, %141 ]
  br i1 %145, label %122, label %146

146:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %132, %94, %82, %56
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i64 @os_memcmp(i32, i32, i64) #1

declare dso_local i64 @wpas_get_op_chan_phy(i32, i64*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @host_to_le64(i32) #1

declare dso_local i32 @host_to_le16(i32) #1

declare dso_local i32 @rssi_to_rcpi(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i64) #1

declare dso_local i32 @host_to_le32(i32) #1

declare dso_local i32 @wpas_add_beacon_rep_elem(%struct.beacon_rep_data*, %struct.wpa_bss*, %struct.wpabuf**, %struct.rrm_measurement_beacon_report*, i64**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
