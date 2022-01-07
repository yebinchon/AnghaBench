; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_get_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_get_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i64, %struct.TYPE_3__, %struct.wpa_scan_res** }
%struct.TYPE_3__ = type { i64 }
%struct.wpa_scan_res = type { i32 }
%struct.wpa_supplicant = type { i64 }
%struct.scan_info = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get scan results\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Do not update BSS table based on pending post-FLUSH scan results\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_scan_results* @wpa_supplicant_get_scan_results(%struct.wpa_supplicant* %0, %struct.scan_info* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_scan_results*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.scan_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_scan_results*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca %struct.wpa_scan_res*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.scan_info* %1, %struct.scan_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (i8*, i8*)* @wpa_scan_result_compar, i32 (i8*, i8*)** %10, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = call %struct.wpa_scan_results* @wpa_drv_get_scan_results2(%struct.wpa_supplicant* %12)
  store %struct.wpa_scan_results* %13, %struct.wpa_scan_results** %8, align 8
  %14 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %15 = icmp eq %struct.wpa_scan_results* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_dbg(%struct.wpa_supplicant* %17, i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %4, align 8
  br label %112

20:                                               ; preds = %3
  %21 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %22 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %27, i32 0, i32 1
  %29 = call i32 @os_get_reltime(%struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %32 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %33 = call i32 @filter_scan_res(%struct.wpa_supplicant* %31, %struct.wpa_scan_results* %32)
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %52, %30
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %37 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %42 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %41, i32 0, i32 2
  %43 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.wpa_scan_res*, %struct.wpa_scan_res** %43, i64 %44
  %46 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %45, align 8
  store %struct.wpa_scan_res* %46, %struct.wpa_scan_res** %11, align 8
  %47 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %48 = call i32 @scan_snr(%struct.wpa_scan_res* %47)
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %50 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %11, align 8
  %51 = call i32 @scan_est_throughput(%struct.wpa_supplicant* %49, %struct.wpa_scan_res* %50)
  br label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %57 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %56, i32 0, i32 2
  %58 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %57, align 8
  %59 = icmp ne %struct.wpa_scan_res** %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %62 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %61, i32 0, i32 2
  %63 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %62, align 8
  %64 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %65 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %68 = call i32 @qsort(%struct.wpa_scan_res** %63, i64 %66, i32 8, i32 (i8*, i8*)* %67)
  br label %69

69:                                               ; preds = %60, %55
  %70 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %71 = call i32 @dump_scan_res(%struct.wpa_scan_results* %70)
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 @wpa_dbg(%struct.wpa_supplicant* %77, i32 %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  store %struct.wpa_scan_results* %82, %struct.wpa_scan_results** %4, align 8
  br label %112

83:                                               ; preds = %69
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %85 = call i32 @wpa_bss_update_start(%struct.wpa_supplicant* %84)
  store i64 0, i64* %9, align 8
  br label %86

86:                                               ; preds = %103, %83
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %89 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %94 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %95 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %94, i32 0, i32 2
  %96 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.wpa_scan_res*, %struct.wpa_scan_res** %96, i64 %97
  %99 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %98, align 8
  %100 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %101 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %100, i32 0, i32 1
  %102 = call i32 @wpa_bss_update_scan_res(%struct.wpa_supplicant* %93, %struct.wpa_scan_res* %99, %struct.TYPE_3__* %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %86

106:                                              ; preds = %86
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %108 = load %struct.scan_info*, %struct.scan_info** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @wpa_bss_update_end(%struct.wpa_supplicant* %107, %struct.scan_info* %108, i32 %109)
  %111 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  store %struct.wpa_scan_results* %111, %struct.wpa_scan_results** %4, align 8
  br label %112

112:                                              ; preds = %106, %76, %16
  %113 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  ret %struct.wpa_scan_results* %113
}

declare dso_local i32 @wpa_scan_result_compar(i8*, i8*) #1

declare dso_local %struct.wpa_scan_results* @wpa_drv_get_scan_results2(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_get_reltime(%struct.TYPE_3__*) #1

declare dso_local i32 @filter_scan_res(%struct.wpa_supplicant*, %struct.wpa_scan_results*) #1

declare dso_local i32 @scan_snr(%struct.wpa_scan_res*) #1

declare dso_local i32 @scan_est_throughput(%struct.wpa_supplicant*, %struct.wpa_scan_res*) #1

declare dso_local i32 @qsort(%struct.wpa_scan_res**, i64, i32, i32 (i8*, i8*)*) #1

declare dso_local i32 @dump_scan_res(%struct.wpa_scan_results*) #1

declare dso_local i32 @wpa_bss_update_start(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_bss_update_scan_res(%struct.wpa_supplicant*, %struct.wpa_scan_res*, %struct.TYPE_3__*) #1

declare dso_local i32 @wpa_bss_update_end(%struct.wpa_supplicant*, %struct.scan_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
