; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m7_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m7_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS-STRICT: No TLVs in M7 encrypted settings\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"WPS-STRICT: Failed to parse attributes in M7 encrypted settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Invalid M7 encrypted settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m7_encr(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wps_parse_attr, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

14:                                               ; preds = %3
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = call i64 @wps_parse_msg(%struct.wpabuf* %15, %struct.wps_parse_attr* %8)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @wps_validate_e_snonce2(i32 %23, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %87, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @wps_validate_ssid(i32 %28, i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %87, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @wps_validate_mac_addr(i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %87, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @wps_validate_auth_type(i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @wps_validate_encr_type(i32 %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @wps_validate_network_key_index(i32 %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @wps_validate_network_key(i32 %71, i32 %73, i32 %75, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @wps_validate_key_wrap_auth(i32 %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %69, %64, %55, %46, %37, %26, %21
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

90:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %87, %18, %11
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_e_snonce2(i32, i32) #1

declare dso_local i64 @wps_validate_ssid(i32, i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_auth_type(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_index(i32, i32) #1

declare dso_local i64 @wps_validate_network_key(i32, i32, i32, i32) #1

declare dso_local i64 @wps_validate_key_wrap_auth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
