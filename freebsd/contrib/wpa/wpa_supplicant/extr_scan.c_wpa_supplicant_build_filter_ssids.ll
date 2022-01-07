; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_build_filter_ssids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_build_filter_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_scan_filter = type { i64, i32 }
%struct.wpa_config = type { %struct.wpa_ssid*, i32 }
%struct.wpa_ssid = type { i64, i64, %struct.wpa_ssid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_driver_scan_filter* (%struct.wpa_config*, i64*)* @wpa_supplicant_build_filter_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_driver_scan_filter* @wpa_supplicant_build_filter_ssids(%struct.wpa_config* %0, i64* %1) #0 {
  %3 = alloca %struct.wpa_driver_scan_filter*, align 8
  %4 = alloca %struct.wpa_config*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.wpa_driver_scan_filter*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i64, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.wpa_driver_scan_filter* null, %struct.wpa_driver_scan_filter** %3, align 8
  br label %99

15:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  %16 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %16, i32 0, i32 0
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %7, align 8
  br label %19

19:                                               ; preds = %36, %15
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %21 = icmp ne %struct.wpa_ssid* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %32, %27, %22
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 2
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %38, align 8
  store %struct.wpa_ssid* %39, %struct.wpa_ssid** %7, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.wpa_driver_scan_filter* null, %struct.wpa_driver_scan_filter** %3, align 8
  br label %99

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = call %struct.wpa_driver_scan_filter* @os_calloc(i64 %45, i32 16)
  store %struct.wpa_driver_scan_filter* %46, %struct.wpa_driver_scan_filter** %6, align 8
  %47 = load %struct.wpa_driver_scan_filter*, %struct.wpa_driver_scan_filter** %6, align 8
  %48 = icmp eq %struct.wpa_driver_scan_filter* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.wpa_driver_scan_filter* null, %struct.wpa_driver_scan_filter** %3, align 8
  br label %99

50:                                               ; preds = %44
  %51 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %51, i32 0, i32 0
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %52, align 8
  store %struct.wpa_ssid* %53, %struct.wpa_ssid** %7, align 8
  br label %54

54:                                               ; preds = %93, %50
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %56 = icmp ne %struct.wpa_ssid* %55, null
  br i1 %56, label %57, label %97

57:                                               ; preds = %54
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %59 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %64 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62, %57
  br label %93

68:                                               ; preds = %62
  %69 = load %struct.wpa_driver_scan_filter*, %struct.wpa_driver_scan_filter** %6, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.wpa_driver_scan_filter, %struct.wpa_driver_scan_filter* %69, i64 %71
  %73 = getelementptr inbounds %struct.wpa_driver_scan_filter, %struct.wpa_driver_scan_filter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %76 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %79 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @os_memcpy(i32 %74, i64 %77, i64 %80)
  %82 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %83 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.wpa_driver_scan_filter*, %struct.wpa_driver_scan_filter** %6, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.wpa_driver_scan_filter, %struct.wpa_driver_scan_filter* %85, i64 %87
  %89 = getelementptr inbounds %struct.wpa_driver_scan_filter, %struct.wpa_driver_scan_filter* %88, i32 0, i32 0
  store i64 %84, i64* %89, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %68, %67
  %94 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %95 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %94, i32 0, i32 2
  %96 = load %struct.wpa_ssid*, %struct.wpa_ssid** %95, align 8
  store %struct.wpa_ssid* %96, %struct.wpa_ssid** %7, align 8
  br label %54

97:                                               ; preds = %54
  %98 = load %struct.wpa_driver_scan_filter*, %struct.wpa_driver_scan_filter** %6, align 8
  store %struct.wpa_driver_scan_filter* %98, %struct.wpa_driver_scan_filter** %3, align 8
  br label %99

99:                                               ; preds = %97, %49, %43, %14
  %100 = load %struct.wpa_driver_scan_filter*, %struct.wpa_driver_scan_filter** %3, align 8
  ret %struct.wpa_driver_scan_filter* %100
}

declare dso_local %struct.wpa_driver_scan_filter* @os_calloc(i64, i32) #1

declare dso_local i32 @os_memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
