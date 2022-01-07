; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WPS-STRICT: No TLVs in M4\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WPS-STRICT: Failed to parse attributes in M4\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WPS-STRICT: Invalid M4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m4(%struct.wpabuf* %0) #0 {
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
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @wps_validate_version(i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @wps_validate_msg_type(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @wps_validate_enrollee_nonce(i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wps_validate_r_hash1(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @wps_validate_r_hash2(i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @wps_validate_encr_settings(i32 %49, i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @wps_validate_version2(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @wps_validate_authenticator(i32 %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %54, %47, %42, %37, %32, %27, %18
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %15, %8
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_r_hash1(i32, i32) #1

declare dso_local i64 @wps_validate_r_hash2(i32, i32) #1

declare dso_local i64 @wps_validate_encr_settings(i32, i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authenticator(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
