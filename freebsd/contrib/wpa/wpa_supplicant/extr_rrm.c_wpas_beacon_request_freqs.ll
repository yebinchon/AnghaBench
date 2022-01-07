; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_beacon_request_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_beacon_request_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hostapd_hw_modes = type { i32 }
%struct.oper_class_map = type { i32 }

@WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Beacon request: invalid operating class %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_supplicant*, i32, i32, i32, i32*, i64)* @wpas_beacon_request_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpas_beacon_request_freqs(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.hostapd_hw_modes*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.oper_class_map*, align 8
  %19 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %17, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %107

25:                                               ; preds = %6
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WLAN_EID_COUNTRY, align 4
  %30 = call i32* @wpa_bss_get_ie(i32 %28, i32 %29)
  store i32* %30, i32** %19, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32*, i32** %19, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %19, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %17, align 8
  br label %42

42:                                               ; preds = %38, %33, %25
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.oper_class_map* @get_oper_class(i8* %43, i32 %44)
  store %struct.oper_class_map* %45, %struct.oper_class_map** %18, align 8
  %46 = load %struct.oper_class_map*, %struct.oper_class_map** %18, align 8
  %47 = icmp ne %struct.oper_class_map* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32* null, i32** %7, align 8
  br label %107

52:                                               ; preds = %42
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.oper_class_map*, %struct.oper_class_map** %18, align 8
  %62 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.hostapd_hw_modes* @get_mode(i32 %56, i32 %60, i32 %63)
  store %struct.hostapd_hw_modes* %64, %struct.hostapd_hw_modes** %16, align 8
  %65 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %16, align 8
  %66 = icmp ne %struct.hostapd_hw_modes* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %52
  store i32* null, i32** %7, align 8
  br label %107

68:                                               ; preds = %52
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %80 [
    i32 0, label %70
    i32 255, label %79
  ]

70:                                               ; preds = %68
  %71 = load %struct.oper_class_map*, %struct.oper_class_map** %18, align 8
  %72 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %16, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32* @wpas_op_class_freqs(%struct.oper_class_map* %71, %struct.hostapd_hw_modes* %72, i32 %73)
  store i32* %74, i32** %14, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i32* null, i32** %7, align 8
  br label %107

78:                                               ; preds = %70
  br label %89

79:                                               ; preds = %68
  br label %89

80:                                               ; preds = %68
  %81 = load %struct.oper_class_map*, %struct.oper_class_map** %18, align 8
  %82 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %16, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32* @wpas_add_channels(%struct.oper_class_map* %81, %struct.hostapd_hw_modes* %82, i32 %83, i32* %10, i32 1)
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  store i32* null, i32** %7, align 8
  br label %107

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %79, %78
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i8*, i8** %17, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i32* @wpas_channel_report_freqs(%struct.wpa_supplicant* %90, i32 %91, i8* %92, i32* %93, i64 %94)
  store i32* %95, i32** %15, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @int_array_concat(i32** %14, i32* %99)
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @os_free(i32* %101)
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @int_array_sort_unique(i32* %103)
  br label %105

105:                                              ; preds = %98, %89
  %106 = load i32*, i32** %14, align 8
  store i32* %106, i32** %7, align 8
  br label %107

107:                                              ; preds = %105, %87, %77, %67, %48, %24
  %108 = load i32*, i32** %7, align 8
  ret i32* %108
}

declare dso_local i32* @wpa_bss_get_ie(i32, i32) #1

declare dso_local %struct.oper_class_map* @get_oper_class(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.hostapd_hw_modes* @get_mode(i32, i32, i32) #1

declare dso_local i32* @wpas_op_class_freqs(%struct.oper_class_map*, %struct.hostapd_hw_modes*, i32) #1

declare dso_local i32* @wpas_add_channels(%struct.oper_class_map*, %struct.hostapd_hw_modes*, i32, i32*, i32) #1

declare dso_local i32* @wpas_channel_report_freqs(%struct.wpa_supplicant*, i32, i8*, i32*, i64) #1

declare dso_local i32 @int_array_concat(i32**, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @int_array_sort_unique(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
