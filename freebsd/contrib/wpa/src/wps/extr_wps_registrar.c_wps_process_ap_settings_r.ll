; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_ap_settings_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_ap_settings_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_6__, i32, i32 (i32, %struct.TYPE_6__*)*, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.wps_parse_attr = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WPS: Received old AP configuration from AP\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS: Update AP configuration based on new settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wps_parse_attr*)* @wps_process_ap_settings_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_ap_settings_r(%struct.wps_data* %0, %struct.wps_parse_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wps_parse_attr* %1, %struct.wps_parse_attr** %5, align 8
  %7 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %8 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %15 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %92

19:                                               ; preds = %13
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %21, i32 0, i32 0
  %23 = call i64 @wps_process_ap_settings(%struct.wps_parse_attr* %20, %struct.TYPE_6__* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %92

26:                                               ; preds = %19
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %37 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %36, i32 0, i32 0
  %38 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %39 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @wps_cred_update(%struct.TYPE_6__* %37, i64 %40)
  store i32 0, i32* %3, align 4
  br label %92

42:                                               ; preds = %26
  %43 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %44 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wps_registrar_pin_completed(i32 %47)
  %49 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %50 = call %struct.wpabuf* @wps_build_ap_cred(%struct.wps_data* %49)
  store %struct.wpabuf* %50, %struct.wpabuf** %6, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %52 = icmp eq %struct.wpabuf* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %92

54:                                               ; preds = %42
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %56 = call i32* @wpabuf_head(%struct.wpabuf* %55)
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32* %56, i32** %59, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %61 = call i64 @wpabuf_len(%struct.wpabuf* %60)
  %62 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %63 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %66 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %65, i32 0, i32 2
  %67 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %66, align 8
  %68 = icmp ne i32 (i32, %struct.TYPE_6__*)* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %54
  %70 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %71 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %70, i32 0, i32 2
  %72 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %71, align 8
  %73 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %74 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 0
  %78 = call i32 %72(i32 %75, %struct.TYPE_6__* %77)
  %79 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %80 = call i32 @wpabuf_free(%struct.wpabuf* %79)
  store i32 1, i32* %3, align 4
  br label %92

81:                                               ; preds = %54
  %82 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %83 = call i32 @wps_sta_cred_cb(%struct.wps_data* %82)
  %84 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %91 = call i32 @wpabuf_free(%struct.wpabuf* %90)
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %81, %69, %53, %33, %25, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @wps_process_ap_settings(%struct.wps_parse_attr*, %struct.TYPE_6__*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_cred_update(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @wps_registrar_pin_completed(i32) #1

declare dso_local %struct.wpabuf* @wps_build_ap_cred(%struct.wps_data*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wps_sta_cred_cb(%struct.wps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
