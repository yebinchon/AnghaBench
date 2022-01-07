; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_add_scan_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_add_scan_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_driver_scan_params = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Over max scan SSIDs for manual request\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Scan SSID (manual request): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*, i64, i32*, i64)* @wpa_add_scan_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_add_scan_ssid(%struct.wpa_supplicant* %0, %struct.wpa_driver_scan_params* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_driver_scan_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %54, %5
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %12
  %19 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %20 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %18
  %30 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %41 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @os_memcmp(i32* %47, i32* %48, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %98

53:                                               ; preds = %39, %29, %18
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %12

57:                                               ; preds = %12
  %58 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %98

68:                                               ; preds = %57
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @wpa_ssid_txt(i32* %70, i64 %71)
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %76 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %79 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32* %74, i32** %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %86 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i64 %84, i64* %93, align 8
  %94 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %95 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %68, %65, %52
  ret void
}

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_ssid_txt(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
