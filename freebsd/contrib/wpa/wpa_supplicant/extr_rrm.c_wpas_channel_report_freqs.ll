; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_channel_report_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_channel_report_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.oper_class_map = type { i32 }
%struct.hostapd_hw_modes = type { i32 }

@WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Beacon request: unknown operating class in AP Channel Report subelement %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_supplicant*, i32, i8*, i32*, i64)* @wpas_channel_report_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpas_channel_report_freqs(%struct.wpa_supplicant* %0, i32 %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.oper_class_map*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.hostapd_hw_modes*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %14, align 8
  br label %23

23:                                               ; preds = %103, %90, %5
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = icmp sgt i64 %29, 2
  br i1 %30, label %31, label %106

31:                                               ; preds = %23
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL, align 4
  %41 = call i32* @get_ie(i32* %32, i32 %39, i32 %40)
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  br label %106

45:                                               ; preds = %31
  %46 = load i32*, i32** %16, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %106

54:                                               ; preds = %45
  %55 = load i32*, i32** %16, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.oper_class_map* @get_oper_class(i8* %60, i32 %62)
  store %struct.oper_class_map* %63, %struct.oper_class_map** %15, align 8
  %64 = load %struct.oper_class_map*, %struct.oper_class_map** %15, align 8
  %65 = icmp ne %struct.oper_class_map* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %108

71:                                               ; preds = %54
  %72 = load i32*, i32** %17, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %17, align 8
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %18, align 4
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.oper_class_map*, %struct.oper_class_map** %15, align 8
  %85 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.hostapd_hw_modes* @get_mode(i32 %79, i32 %83, i32 %86)
  store %struct.hostapd_hw_modes* %87, %struct.hostapd_hw_modes** %19, align 8
  %88 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %19, align 8
  %89 = icmp ne %struct.hostapd_hw_modes* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %71
  br label %23

91:                                               ; preds = %71
  %92 = load %struct.oper_class_map*, %struct.oper_class_map** %15, align 8
  %93 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %19, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %18, align 4
  %97 = call i32* @wpas_add_channels(%struct.oper_class_map* %92, %struct.hostapd_hw_modes* %93, i32 %94, i32* %95, i32 %96)
  store i32* %97, i32** %13, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @int_array_concat(i32** %12, i32* %101)
  br label %103

103:                                              ; preds = %100, %91
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @os_free(i32* %104)
  br label %23

106:                                              ; preds = %53, %44, %23
  %107 = load i32*, i32** %12, align 8
  store i32* %107, i32** %6, align 8
  br label %111

108:                                              ; preds = %66
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @os_free(i32* %109)
  store i32* null, i32** %6, align 8
  br label %111

111:                                              ; preds = %108, %106
  %112 = load i32*, i32** %6, align 8
  ret i32* %112
}

declare dso_local i32* @get_ie(i32*, i32, i32) #1

declare dso_local %struct.oper_class_map* @get_oper_class(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.hostapd_hw_modes* @get_mode(i32, i32, i32) #1

declare dso_local i32* @wpas_add_channels(%struct.oper_class_map*, %struct.hostapd_hw_modes*, i32, i32*, i32) #1

declare dso_local i32 @int_array_concat(i32**, i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
