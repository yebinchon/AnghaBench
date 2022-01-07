; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_start_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_start_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64 }
%struct.wps_new_ap_settings = type { i32, i32, i32, i32 }
%struct.wpa_ssid = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"\22pin=%s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c" new_ssid=%s new_auth=%s new_encr=%s new_key=%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"phase1\00", align 1
@WPS_PBC_WALK_TIME = common dso_local global i32 0, align 4
@wpas_wps_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_start_reg(%struct.wpa_supplicant* %0, i32* %1, i8* %2, %struct.wps_new_ap_settings* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wps_new_ap_settings*, align 8
  %10 = alloca %struct.wpa_ssid*, align 8
  %11 = alloca [200 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.wps_new_ap_settings* %3, %struct.wps_new_ap_settings** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %141

18:                                               ; preds = %4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %20 = call i32 @wpas_clear_wps(%struct.wpa_supplicant* %19)
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.wpa_ssid* @wpas_wps_add_network(%struct.wpa_supplicant* %21, i32 1, i32* null, i32* %22)
  store %struct.wpa_ssid* %23, %struct.wpa_ssid** %10, align 8
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %25 = icmp eq %struct.wpa_ssid* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %141

27:                                               ; preds = %18
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 200
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %33, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @os_snprintf_error(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %141

52:                                               ; preds = %27
  %53 = load i32, i32* %14, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %12, align 8
  %57 = load %struct.wps_new_ap_settings*, %struct.wps_new_ap_settings** %9, align 8
  %58 = icmp ne %struct.wps_new_ap_settings* %57, null
  br i1 %58, label %59, label %95

59:                                               ; preds = %52
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.wps_new_ap_settings*, %struct.wps_new_ap_settings** %9, align 8
  %68 = getelementptr inbounds %struct.wps_new_ap_settings, %struct.wps_new_ap_settings* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wps_new_ap_settings*, %struct.wps_new_ap_settings** %9, align 8
  %71 = getelementptr inbounds %struct.wps_new_ap_settings, %struct.wps_new_ap_settings* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wps_new_ap_settings*, %struct.wps_new_ap_settings** %9, align 8
  %74 = getelementptr inbounds %struct.wps_new_ap_settings, %struct.wps_new_ap_settings* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wps_new_ap_settings*, %struct.wps_new_ap_settings** %9, align 8
  %77 = getelementptr inbounds %struct.wps_new_ap_settings, %struct.wps_new_ap_settings* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %60, i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* %14, align 4
  %87 = call i64 @os_snprintf_error(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %141

90:                                               ; preds = %59
  %91 = load i32, i32* %14, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %90, %52
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %96, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %103, i32* %14, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %14, align 4
  %111 = call i64 @os_snprintf_error(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  store i32 -1, i32* %5, align 4
  br label %141

114:                                              ; preds = %95
  %115 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %116 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %117 = call i64 @wpa_config_set(%struct.wpa_ssid* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %116, i32 0)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -1, i32* %5, align 4
  br label %141

120:                                              ; preds = %114
  %121 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %122 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %127 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %130 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %125, %120
  %133 = load i32, i32* @WPS_PBC_WALK_TIME, align 4
  %134 = load i32, i32* @wpas_wps_timeout, align 4
  %135 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %136 = call i32 @eloop_register_timeout(i32 %133, i32 0, i32 %134, %struct.wpa_supplicant* %135, i32* null)
  %137 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %138 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @wpas_wps_reassoc(%struct.wpa_supplicant* %137, %struct.wpa_ssid* %138, i32* %139, i32 0)
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %132, %119, %113, %89, %51, %26, %17
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @wpas_clear_wps(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_ssid* @wpas_wps_add_network(%struct.wpa_supplicant*, i32, i32*, i32*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @wpa_config_set(%struct.wpa_ssid*, i8*, i8*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpas_wps_reassoc(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
