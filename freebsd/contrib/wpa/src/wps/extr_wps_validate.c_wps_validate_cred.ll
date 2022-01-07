; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WPS-STRICT: Failed to parse Credential\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS-STRICT: Invalid Credential\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @wps_validate_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_cred(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wps_parse_attr, align 4
  %7 = alloca %struct.wpabuf, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @wpabuf_set(%struct.wpabuf* %7, i32* %12, i64 %13)
  %15 = call i64 @wps_parse_msg(%struct.wpabuf* %7, %struct.wps_parse_attr* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @wps_validate_network_idx(i32 %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @wps_validate_ssid(i32 %27, i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wps_validate_auth_type(i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wps_validate_encr_type(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wps_validate_network_key_index(i32 %44, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @wps_validate_network_key(i32 %49, i32 %51, i32 %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @wps_validate_mac_addr(i32 %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @wps_validate_network_key_shareable(i32 %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56, %47, %42, %37, %32, %25, %20
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66, %17, %10
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_validate_network_idx(i32, i32) #1

declare dso_local i64 @wps_validate_ssid(i32, i32, i32) #1

declare dso_local i64 @wps_validate_auth_type(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_index(i32, i32) #1

declare dso_local i64 @wps_validate_network_key(i32, i32, i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_shareable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
