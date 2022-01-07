; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_fetch_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_fetch_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_bss*, %struct.neighbor_report*, %struct.wpa_ssid* }
%struct.wpa_bss = type { i64, i32 }
%struct.neighbor_report = type { i64, i32, i64 }
%struct.wpa_ssid = type { i32 }
%struct.wpa_scan_results = type { i64, %struct.TYPE_3__, %struct.wpa_scan_res** }
%struct.TYPE_3__ = type { i64 }
%struct.wpa_scan_res = type { i64*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"WNM: Fetch current scan results from the driver for checking transition candidates\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"WNM: Failed to get scan results\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@WNM_SCAN_RESULT_AGE = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"WNM: No transition candidate matches existing scan results\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"WNM: Comparison of scan results against transition candidates did not find matches\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wnm_fetch_scan_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wnm_fetch_scan_results(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_scan_results*, align 8
  %5 = alloca %struct.wpa_bss*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.neighbor_report*, align 8
  %11 = alloca %struct.wpa_scan_res*, align 8
  %12 = alloca i64*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 3
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  store %struct.wpa_ssid* %15, %struct.wpa_ssid** %6, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_dbg(%struct.wpa_supplicant* %16, i32 %17, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = call %struct.wpa_scan_results* @wpa_drv_get_scan_results2(%struct.wpa_supplicant* %19)
  store %struct.wpa_scan_results* %20, %struct.wpa_scan_results** %4, align 8
  %21 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %22 = icmp ne %struct.wpa_scan_results* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_dbg(%struct.wpa_supplicant* %24, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

27:                                               ; preds = %1
  %28 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %34, i32 0, i32 1
  %36 = call i32 @os_get_reltime(%struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %39 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %40 = call i32 @filter_scan_res(%struct.wpa_supplicant* %38, %struct.wpa_scan_results* %39)
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %141, %37
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %144

47:                                               ; preds = %41
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 2
  %50 = load %struct.neighbor_report*, %struct.neighbor_report** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %50, i64 %51
  store %struct.neighbor_report* %52, %struct.neighbor_report** %10, align 8
  %53 = load %struct.neighbor_report*, %struct.neighbor_report** %10, align 8
  %54 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.neighbor_report*, %struct.neighbor_report** %10, align 8
  %59 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %141

63:                                               ; preds = %57, %47
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %137, %63
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %67 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %64
  %71 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %72 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %71, i32 0, i32 2
  %73 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.wpa_scan_res*, %struct.wpa_scan_res** %73, i64 %74
  %76 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %75, align 8
  store %struct.wpa_scan_res* %76, %struct.wpa_scan_res** %11, align 8
  %77 = load %struct.neighbor_report*, %struct.neighbor_report** %10, align 8
  %78 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %81 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @ETH_ALEN, align 8
  %84 = call i64 @os_memcmp(i32 %79, i64* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %70
  %87 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %88 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WNM_SCAN_RESULT_AGE, align 4
  %91 = mul nsw i32 %90, 1000
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86, %70
  br label %137

94:                                               ; preds = %86
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %96 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %95, i32 0, i32 1
  %97 = load %struct.wpa_bss*, %struct.wpa_bss** %96, align 8
  store %struct.wpa_bss* %97, %struct.wpa_bss** %5, align 8
  %98 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %99 = load i32, i32* @WLAN_EID_SSID, align 4
  %100 = call i64* @wpa_scan_get_ie(%struct.wpa_scan_res* %98, i32 %99)
  store i64* %100, i64** %12, align 8
  %101 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %102 = icmp ne %struct.wpa_bss* %101, null
  br i1 %102, label %103, label %126

103:                                              ; preds = %94
  %104 = load i64*, i64** %12, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %108 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %12, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %125, label %114

114:                                              ; preds = %106
  %115 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %116 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i64*, i64** %12, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  %120 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %121 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @os_memcmp(i32 %117, i64* %119, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114, %106
  br label %137

126:                                              ; preds = %114, %103, %94
  store i64 1, i64* %8, align 8
  %127 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %128 = call i32 @scan_snr(%struct.wpa_scan_res* %127)
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %130 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %131 = call i32 @scan_est_throughput(%struct.wpa_supplicant* %129, %struct.wpa_scan_res* %130)
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %133 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %134 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %135 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %134, i32 0, i32 1
  %136 = call i32 @wpa_bss_update_scan_res(%struct.wpa_supplicant* %132, %struct.wpa_scan_res* %133, %struct.TYPE_3__* %135)
  br label %137

137:                                              ; preds = %126, %125, %93
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %64

140:                                              ; preds = %64
  br label %141

141:                                              ; preds = %140, %62
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %7, align 8
  br label %41

144:                                              ; preds = %41
  %145 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %146 = call i32 @wpa_scan_results_free(%struct.wpa_scan_results* %145)
  %147 = load i64, i64* %8, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %151 = load i32, i32* @MSG_DEBUG, align 4
  %152 = call i32 @wpa_dbg(%struct.wpa_supplicant* %150, i32 %151, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

153:                                              ; preds = %144
  %154 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %155 = load i32, i32* @WNM_SCAN_RESULT_AGE, align 4
  %156 = call %struct.wpa_bss* @compare_scan_neighbor_results(%struct.wpa_supplicant* %154, i32 %155, i32* null)
  store %struct.wpa_bss* %156, %struct.wpa_bss** %5, align 8
  %157 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %158 = icmp ne %struct.wpa_bss* %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %153
  %160 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = call i32 @wpa_dbg(%struct.wpa_supplicant* %160, i32 %161, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

163:                                              ; preds = %153
  %164 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %165 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %166 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %167 = call i32 @wnm_bss_tm_connect(%struct.wpa_supplicant* %164, %struct.wpa_bss* %165, %struct.wpa_ssid* %166, i32 0)
  store i32 1, i32* %2, align 4
  br label %168

168:                                              ; preds = %163, %159, %149, %23
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.wpa_scan_results* @wpa_drv_get_scan_results2(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_get_reltime(%struct.TYPE_3__*) #1

declare dso_local i32 @filter_scan_res(%struct.wpa_supplicant*, %struct.wpa_scan_results*) #1

declare dso_local i64 @os_memcmp(i32, i64*, i64) #1

declare dso_local i64* @wpa_scan_get_ie(%struct.wpa_scan_res*, i32) #1

declare dso_local i32 @scan_snr(%struct.wpa_scan_res*) #1

declare dso_local i32 @scan_est_throughput(%struct.wpa_supplicant*, %struct.wpa_scan_res*) #1

declare dso_local i32 @wpa_bss_update_scan_res(%struct.wpa_supplicant*, %struct.wpa_scan_res*, %struct.TYPE_3__*) #1

declare dso_local i32 @wpa_scan_results_free(%struct.wpa_scan_results*) #1

declare dso_local %struct.wpa_bss* @compare_scan_neighbor_results(%struct.wpa_supplicant*, i32, i32*) #1

declare dso_local i32 @wnm_bss_tm_connect(%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpa_ssid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
