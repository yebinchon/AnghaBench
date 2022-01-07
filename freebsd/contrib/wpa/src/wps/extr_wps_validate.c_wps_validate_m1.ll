; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WPS-STRICT: No TLVs in M1\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WPS-STRICT: Failed to parse attributes in M1\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WPS-STRICT: Invalid M1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m1(%struct.wpabuf* %0) #0 {
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
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 29
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @wps_validate_version(i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %156, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 28
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @wps_validate_msg_type(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %156, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 27
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wps_validate_uuid_e(i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %156, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 26
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @wps_validate_mac_addr(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %156, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 25
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wps_validate_enrollee_nonce(i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %156, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 24
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 23
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @wps_validate_public_key(i32 %49, i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %156, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 22
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @wps_validate_auth_type_flags(i32 %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %156, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 21
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @wps_validate_encr_type_flags(i32 %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %156, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 20
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @wps_validate_conn_type_flags(i32 %66, i32 1)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %156, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 19
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @wps_validate_config_methods(i32 %71, i32 %72, i32 1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %156, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 18
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @wps_validate_wps_state(i32 %77, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %156, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 17
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 16
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @wps_validate_manufacturer(i32 %82, i32 %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %156, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 15
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 14
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @wps_validate_model_name(i32 %89, i32 %91, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %156, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 12
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @wps_validate_model_number(i32 %96, i32 %98, i32 1)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %156, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @wps_validate_serial_number(i32 %103, i32 %105, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %156, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @wps_validate_primary_dev_type(i32 %110, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %156, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @wps_validate_dev_name(i32 %115, i32 %117, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %156, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @wps_validate_rf_bands(i32 %122, i32 1)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %156, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @wps_validate_assoc_state(i32 %127, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @wps_validate_dev_password_id(i32 %132, i32 1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @wps_validate_config_error(i32 %137, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @wps_validate_os_version(i32 %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @wps_validate_version2(i32* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @wps_validate_request_to_enroll(i32 %153, i32 0)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %145, %140, %135, %130, %125, %120, %113, %108, %101, %94, %87, %80, %75, %69, %64, %59, %54, %47, %42, %37, %32, %27, %18
  %157 = load i32, i32* @MSG_INFO, align 4
  %158 = call i32 @wpa_printf(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

159:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %156, %15, %8
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_uuid_e(i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_public_key(i32, i32, i32) #1

declare dso_local i64 @wps_validate_auth_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_conn_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_wps_state(i32, i32) #1

declare dso_local i64 @wps_validate_manufacturer(i32, i32, i32) #1

declare dso_local i64 @wps_validate_model_name(i32, i32, i32) #1

declare dso_local i64 @wps_validate_model_number(i32, i32, i32) #1

declare dso_local i64 @wps_validate_serial_number(i32, i32, i32) #1

declare dso_local i64 @wps_validate_primary_dev_type(i32, i32) #1

declare dso_local i64 @wps_validate_dev_name(i32, i32, i32) #1

declare dso_local i64 @wps_validate_rf_bands(i32, i32) #1

declare dso_local i64 @wps_validate_assoc_state(i32, i32) #1

declare dso_local i64 @wps_validate_dev_password_id(i32, i32) #1

declare dso_local i64 @wps_validate_config_error(i32, i32) #1

declare dso_local i64 @wps_validate_os_version(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_request_to_enroll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
