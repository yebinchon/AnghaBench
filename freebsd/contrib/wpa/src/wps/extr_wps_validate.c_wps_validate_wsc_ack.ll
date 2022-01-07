; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_wsc_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_wsc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS-STRICT: No TLVs in WSC_ACK\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"WPS-STRICT: Failed to parse attributes in WSC_ACK\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"WPS-STRICT: Invalid WSC_ACK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_wsc_ack(%struct.wpabuf* %0) #0 {
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
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @wps_validate_version(i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @wps_validate_msg_type(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wps_validate_enrollee_nonce(i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @wps_validate_registrar_nonce(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @wps_validate_version2(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %37, %32, %27, %18
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %15, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_registrar_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
