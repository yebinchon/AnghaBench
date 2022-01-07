; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m8_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m8_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS-STRICT: No TLVs in M8 encrypted settings\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"WPS-STRICT: Failed to parse attributes in M8 encrypted settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Invalid M8 encrypted settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m8_encr(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
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
  br label %74

14:                                               ; preds = %3
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = call i64 @wps_parse_msg(%struct.wpabuf* %15, %struct.wps_parse_attr* %8)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %74

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @wps_validate_ssid(i32 %23, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @wps_validate_auth_type(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @wps_validate_encr_type(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %70, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @wps_validate_network_key_index(i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @wps_validate_mac_addr(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @wps_validate_credential(i32 %54, i32 %56, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @wps_validate_key_wrap_auth(i32 %67, i32 1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %52, %46, %41, %35, %29, %21
  %71 = load i32, i32* @MSG_INFO, align 4
  %72 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %74

73:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %70, %18, %11
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_ssid(i32, i32, i32) #1

declare dso_local i64 @wps_validate_auth_type(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_index(i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_credential(i32, i32, i32, i32) #1

declare dso_local i64 @wps_validate_key_wrap_auth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
