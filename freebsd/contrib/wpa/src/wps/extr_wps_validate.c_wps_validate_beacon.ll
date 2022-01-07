; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPS-STRICT: No WPS IE in Beacon frame\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS-STRICT: Failed to parse WPS IE in Beacon frame\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WPS-STRICT: Invalid Beacon frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_beacon(%struct.wpabuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_parse_attr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_INFO, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = call i64 @wps_parse_msg(%struct.wpabuf* %13, %struct.wps_parse_attr* %4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %94

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ false, %19 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @wps_validate_version(i32 %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %90, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @wps_validate_wps_state(i32 %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %90, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @wps_validate_ap_setup_locked(i32 %46, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %90, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = call i64 @wps_validate_selected_registrar(i64* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %90, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @wps_validate_dev_password_id(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @wps_validate_sel_reg_config_methods(i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wps_validate_uuid_e(i32 %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @wps_validate_rf_bands(i32 %74, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @wps_validate_version2(i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @wps_validate_authorized_macs(i32 %85, i32 %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83, %77, %72, %67, %60, %54, %49, %44, %39, %32
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %94

93:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %90, %16, %9
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_wps_state(i32, i32) #1

declare dso_local i64 @wps_validate_ap_setup_locked(i32, i32) #1

declare dso_local i64 @wps_validate_selected_registrar(i64*, i32) #1

declare dso_local i64 @wps_validate_dev_password_id(i32, i32) #1

declare dso_local i64 @wps_validate_sel_reg_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_uuid_e(i32, i32) #1

declare dso_local i64 @wps_validate_rf_bands(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authorized_macs(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
