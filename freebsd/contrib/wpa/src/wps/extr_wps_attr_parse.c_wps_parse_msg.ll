; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_parse_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_parse_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WPS: Invalid message - %lu bytes remaining\00", align 1
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"WPS: attr type=0x%x len=%u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"WPS: Attribute overflow\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"WPS: Message data\00", align 1
@ATTR_NETWORK_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_parse_msg(%struct.wpabuf* %0, %struct.wps_parse_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.wps_parse_attr* %1, %struct.wps_parse_attr** %5, align 8
  %10 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %11 = call i32 @os_memset(%struct.wps_parse_attr* %10, i32 0, i32 4)
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i64* @wpabuf_head(%struct.wpabuf* %12)
  store i64* %13, i64** %6, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = call i32 @wpabuf_len(%struct.wpabuf* %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  store i64* %18, i64** %7, align 8
  br label %19

19:                                               ; preds = %76, %2
  %20 = load i64*, i64** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ult i64* %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = load i64*, i64** %7, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = ptrtoint i64* %24 to i64
  %27 = ptrtoint i64* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = icmp slt i64 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = ptrtoint i64* %33 to i64
  %36 = ptrtoint i64* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %38)
  store i32 -1, i32* %3, align 4
  br label %82

40:                                               ; preds = %23
  %41 = load i64*, i64** %6, align 8
  %42 = call i32 @WPA_GET_BE16(i64* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64* %44, i64** %6, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = call i32 @WPA_GET_BE16(i64* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i64*, i64** %6, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  store i64* %48, i64** %6, align 8
  %49 = load i32, i32* @MSG_EXCESSIVE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %7, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = ptrtoint i64* %55 to i64
  %58 = ptrtoint i64* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = icmp sgt i64 %54, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %40
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @MSG_MSGDUMP, align 4
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = call i32 @wpa_hexdump_buf(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %66)
  store i32 -1, i32* %3, align 4
  br label %82

68:                                               ; preds = %40
  %69 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i64*, i64** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @wps_set_attr(%struct.wps_parse_attr* %69, i32 %70, i64* %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %82

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i64*, i64** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64* %80, i64** %6, align 8
  br label %19

81:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %75, %62, %31
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @os_memset(%struct.wps_parse_attr*, i32, i32) #1

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i64*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @wps_set_attr(%struct.wps_parse_attr*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
