; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_build_probe_req_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_build_probe_req_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_device_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WPS: Building WPS IE for Probe Request\00", align 1
@WPS_CFG_NO_ERROR = common dso_local global i32 0, align 4
@WPS_REQ_ENROLLEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_build_probe_req_ie(i32 %0, %struct.wps_device_data* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wps_device_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.wps_device_data* %1, %struct.wps_device_data** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = call %struct.wpabuf* @wpabuf_alloc(i32 500)
  store %struct.wpabuf* %17, %struct.wpabuf** %14, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %112

21:                                               ; preds = %6
  %22 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %23 = call i64 @wps_build_version(%struct.wpabuf* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %106, label %25

25:                                               ; preds = %21
  %26 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @wps_build_req_type(%struct.wpabuf* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %106, label %30

30:                                               ; preds = %25
  %31 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %32 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %33 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wps_build_config_methods(%struct.wpabuf* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %106, label %37

37:                                               ; preds = %30
  %38 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @wps_build_uuid_e(%struct.wpabuf* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %106, label %42

42:                                               ; preds = %37
  %43 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %45 = call i64 @wps_build_primary_dev_type(%struct.wps_device_data* %43, %struct.wpabuf* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %106, label %47

47:                                               ; preds = %42
  %48 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %49 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %50 = call i64 @wps_build_rf_bands(%struct.wps_device_data* %48, %struct.wpabuf* %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %106, label %52

52:                                               ; preds = %47
  %53 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %54 = call i64 @wps_build_assoc_state(i32* null, %struct.wpabuf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %106, label %56

56:                                               ; preds = %52
  %57 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %58 = load i32, i32* @WPS_CFG_NO_ERROR, align 4
  %59 = call i64 @wps_build_config_error(%struct.wpabuf* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %56
  %62 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @wps_build_dev_password_id(%struct.wpabuf* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %106, label %66

66:                                               ; preds = %61
  %67 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %69 = call i64 @wps_build_manufacturer(%struct.wps_device_data* %67, %struct.wpabuf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %66
  %72 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %74 = call i64 @wps_build_model_name(%struct.wps_device_data* %72, %struct.wpabuf* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %106, label %76

76:                                               ; preds = %71
  %77 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %79 = call i64 @wps_build_model_number(%struct.wps_device_data* %77, %struct.wpabuf* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %84 = call i64 @wps_build_dev_name(%struct.wps_device_data* %82, %struct.wpabuf* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @WPS_REQ_ENROLLEE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %87, i32 %91, i32* null, i32 0, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %86
  %95 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %96 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = call i64 @wps_build_req_dev_type(%struct.wps_device_data* %95, %struct.wpabuf* %96, i32 %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %94
  %102 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %103 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %104 = call i64 @wps_build_secondary_dev_type(%struct.wps_device_data* %102, %struct.wpabuf* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %94, %86, %81, %76, %71, %66, %61, %56, %52, %47, %42, %37, %30, %25, %21
  %107 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %108 = call i32 @wpabuf_free(%struct.wpabuf* %107)
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %112

109:                                              ; preds = %101
  %110 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %111 = call %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf* %110)
  store %struct.wpabuf* %111, %struct.wpabuf** %7, align 8
  br label %112

112:                                              ; preds = %109, %106, %20
  %113 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %113
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_req_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_config_methods(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_uuid_e(%struct.wpabuf*, i32*) #1

declare dso_local i64 @wps_build_primary_dev_type(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(%struct.wps_device_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_assoc_state(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_dev_password_id(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_manufacturer(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_model_name(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_model_number(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_dev_name(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i64 @wps_build_req_dev_type(%struct.wps_device_data*, %struct.wpabuf*, i32, i32*) #1

declare dso_local i64 @wps_build_secondary_dev_type(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
