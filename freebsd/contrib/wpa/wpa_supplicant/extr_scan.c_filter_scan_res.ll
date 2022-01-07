; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_filter_scan_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_filter_scan_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32* }
%struct.wpa_scan_results = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Filtered out %d scan results\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filter_scan_res(%struct.wpa_supplicant* %0, %struct.wpa_scan_results* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_scan_results*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_scan_results* %1, %struct.wpa_scan_results** %4, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %58, %12
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @wpa_supplicant_filter_bssid_match(%struct.wpa_supplicant* %20, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %41
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %43, align 8
  br label %57

44:                                               ; preds = %19
  %45 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @os_free(%struct.TYPE_2__* %50)
  %52 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %55
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %56, align 8
  br label %57

57:                                               ; preds = %44, %31
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %13

61:                                               ; preds = %13
  %62 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %63 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %78 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %11, %67, %61
  ret void
}

declare dso_local i64 @wpa_supplicant_filter_bssid_match(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
