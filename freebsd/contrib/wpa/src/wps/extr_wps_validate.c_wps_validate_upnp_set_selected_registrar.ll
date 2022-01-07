; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_upnp_set_selected_registrar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_upnp_set_selected_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32, i32, i32, i32*, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPS-STRICT: No TLVs in SetSelectedRegistrar\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"WPS-STRICT: Failed to parse attributes in SetSelectedRegistrar\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WPS-STRICT: Invalid SetSelectedRegistrar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_upnp_set_selected_registrar(%struct.wpabuf* %0) #0 {
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
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = call i64 @wps_parse_msg(%struct.wpabuf* %13, %struct.wps_parse_attr* %4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
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
  %35 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @wps_validate_version(i32 %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @wps_validate_dev_password_id(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @wps_validate_sel_reg_config_methods(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @wps_validate_version2(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @wps_validate_authorized_macs(i32 %60, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @wps_validate_uuid_r(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %58, %52, %45, %39, %32
  %73 = load i32, i32* @MSG_INFO, align 4
  %74 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %72, %16, %9
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_dev_password_id(i32, i32) #1

declare dso_local i64 @wps_validate_sel_reg_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authorized_macs(i32, i32, i32) #1

declare dso_local i64 @wps_validate_uuid_r(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
