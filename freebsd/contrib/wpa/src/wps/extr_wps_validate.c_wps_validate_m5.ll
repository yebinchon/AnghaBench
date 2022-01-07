; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32*, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WPS-STRICT: No TLVs in M5\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WPS-STRICT: Failed to parse attributes in M5\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WPS-STRICT: Invalid M5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m5(%struct.wpabuf* %0) #0 {
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
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %59

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @wps_validate_version(i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @wps_validate_msg_type(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @wps_validate_registrar_nonce(i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @wps_validate_encr_settings(i32 %39, i32 %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @wps_validate_version2(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @wps_validate_authenticator(i32 %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %44, %37, %32, %27, %18
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %15, %8
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_registrar_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_encr_settings(i32, i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authenticator(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
