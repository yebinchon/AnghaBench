; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS-STRICT: No TLVs in M2D\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"WPS-STRICT: Failed to parse attributes in M2D\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"WPS-STRICT: Invalid M2D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m2d(%struct.wpabuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_parse_attr, align 8
  %5 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_INFO, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %138

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %138

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 24
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @wps_validate_version(i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %134, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 23
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @wps_validate_msg_type(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %134, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 22
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wps_validate_enrollee_nonce(i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %134, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 21
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @wps_validate_registrar_nonce(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %134, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 20
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wps_validate_uuid_r(i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %134, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 19
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @wps_validate_auth_type_flags(i32 %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %134, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 18
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @wps_validate_encr_type_flags(i32 %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %134, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 17
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @wps_validate_conn_type_flags(i32 %59, i32 1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %134, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 16
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @wps_validate_config_methods(i32 %64, i32 %65, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %134, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 15
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @wps_validate_manufacturer(i32 %70, i32 %72, i32 1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %134, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 13
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @wps_validate_model_name(i32 %77, i32 %79, i32 1)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %134, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @wps_validate_model_number(i32 %84, i32 %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %134, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @wps_validate_serial_number(i32 %91, i32 %93, i32 1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %134, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @wps_validate_primary_dev_type(i32 %98, i32 1)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %134, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @wps_validate_dev_name(i32 %103, i32 %105, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %134, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @wps_validate_rf_bands(i32 %110, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @wps_validate_assoc_state(i32 %115, i32 1)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @wps_validate_config_error(i32 %120, i32 1)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @wps_validate_os_version(i32 %125, i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @wps_validate_version2(i32* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128, %123, %118, %113, %108, %101, %96, %89, %82, %75, %68, %62, %57, %52, %47, %42, %37, %32, %27, %18
  %135 = load i32, i32* @MSG_INFO, align 4
  %136 = call i32 @wpa_printf(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %138

137:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %134, %15, %8
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_registrar_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_uuid_r(i32, i32) #1

declare dso_local i64 @wps_validate_auth_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_conn_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_manufacturer(i32, i32, i32) #1

declare dso_local i64 @wps_validate_model_name(i32, i32, i32) #1

declare dso_local i64 @wps_validate_model_number(i32, i32, i32) #1

declare dso_local i64 @wps_validate_serial_number(i32, i32, i32) #1

declare dso_local i64 @wps_validate_primary_dev_type(i32, i32) #1

declare dso_local i64 @wps_validate_dev_name(i32, i32, i32) #1

declare dso_local i64 @wps_validate_rf_bands(i32, i32) #1

declare dso_local i64 @wps_validate_assoc_state(i32, i32) #1

declare dso_local i64 @wps_validate_config_error(i32, i32) #1

declare dso_local i64 @wps_validate_os_version(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
