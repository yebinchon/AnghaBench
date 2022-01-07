; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_included_in_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_included_in_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i64, i64, i32 }
%struct.scan_info = type { i64, i64*, i64, %struct.wpa_driver_scan_ssid* }
%struct.wpa_driver_scan_ssid = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_bss*, %struct.scan_info*)* @wpa_bss_included_in_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_bss_included_in_scan(%struct.wpa_bss* %0, %struct.scan_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca %struct.scan_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpa_driver_scan_ssid*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store %struct.scan_info* %1, %struct.scan_info** %5, align 8
  %9 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %10 = icmp eq %struct.scan_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %103

12:                                               ; preds = %2
  %13 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %14 = getelementptr inbounds %struct.scan_info, %struct.scan_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %21 = getelementptr inbounds %struct.scan_info, %struct.scan_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %29 = getelementptr inbounds %struct.scan_info, %struct.scan_info* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %18

40:                                               ; preds = %35, %18
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %103

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %12
  %46 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %47 = getelementptr inbounds %struct.scan_info, %struct.scan_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %102

50:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %94, %50
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %54 = getelementptr inbounds %struct.scan_info, %struct.scan_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %51
  %58 = load %struct.scan_info*, %struct.scan_info** %5, align 8
  %59 = getelementptr inbounds %struct.scan_info, %struct.scan_info* %58, i32 0, i32 3
  %60 = load %struct.wpa_driver_scan_ssid*, %struct.wpa_driver_scan_ssid** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.wpa_driver_scan_ssid, %struct.wpa_driver_scan_ssid* %60, i64 %61
  store %struct.wpa_driver_scan_ssid* %62, %struct.wpa_driver_scan_ssid** %8, align 8
  %63 = load %struct.wpa_driver_scan_ssid*, %struct.wpa_driver_scan_ssid** %8, align 8
  %64 = getelementptr inbounds %struct.wpa_driver_scan_ssid, %struct.wpa_driver_scan_ssid* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %57
  %68 = load %struct.wpa_driver_scan_ssid*, %struct.wpa_driver_scan_ssid** %8, align 8
  %69 = getelementptr inbounds %struct.wpa_driver_scan_ssid, %struct.wpa_driver_scan_ssid* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %67
  %73 = load %struct.wpa_driver_scan_ssid*, %struct.wpa_driver_scan_ssid** %8, align 8
  %74 = getelementptr inbounds %struct.wpa_driver_scan_ssid, %struct.wpa_driver_scan_ssid* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %77 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load %struct.wpa_driver_scan_ssid*, %struct.wpa_driver_scan_ssid** %8, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_scan_ssid, %struct.wpa_driver_scan_ssid* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %85 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %88 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @os_memcmp(i32* %83, i32 %86, i64 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80, %67, %57
  store i32 1, i32* %6, align 4
  br label %97

93:                                               ; preds = %80, %72
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %51

97:                                               ; preds = %92, %51
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %103

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %45
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %100, %43, %11
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
