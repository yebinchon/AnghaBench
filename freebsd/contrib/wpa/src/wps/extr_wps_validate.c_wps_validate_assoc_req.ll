; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_assoc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_assoc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"WPS-STRICT: No WPS IE in (Re)Association Request frame\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"WPS-STRICT: Failed to parse WPS IE in (Re)Association Request frame\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"WPS-STRICT: Invalid (Re)Association Request frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_assoc_req(%struct.wpabuf* %0) #0 {
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
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @wps_validate_version(i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @wps_validate_request_type(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @wps_validate_version2(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %27, %18
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38, %15, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_request_type(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
