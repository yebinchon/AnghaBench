; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_set_vendor_ext_wfa_subelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_set_vendor_ext_wfa_subelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32*, i32*, i32, i32*, i32*, i32*, i32*, i32 }

@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"WPS: WFA subelement id=%u len=%u\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"WPS: Invalid Version2 length %u\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"WPS: Invalid Network Key Shareable length %u\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"WPS: Invalid Request to Enroll length %u\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"WPS: Invalid Settings Delay Time length %u\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"WPS: Invalid Registrar Configuration Methods length %u\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"WPS: Invalid Multi-AP Extension length %u\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"WPS: Multi-AP Extension 0x%02x\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"WPS: Skipped unknown WFA Vendor Extension subelement %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_parse_attr*, i32, i32, i32*)* @wps_set_vendor_ext_wfa_subelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_set_vendor_ext_wfa_subelem(%struct.wps_parse_attr* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wps_parse_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @MSG_EXCESSIVE, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %94 [
    i32 128, label %15
    i32 134, label %26
    i32 132, label %33
    i32 130, label %44
    i32 129, label %55
    i32 131, label %66
    i32 133, label %77
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %5, align 4
  br label %99

22:                                               ; preds = %15
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %25 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  br label %98

26:                                               ; preds = %4
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %29 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %32 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %98

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %5, align 4
  br label %99

40:                                               ; preds = %33
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  br label %98

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %5, align 4
  br label %99

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %54 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  br label %98

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %5, align 4
  br label %99

62:                                               ; preds = %55
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  br label %98

66:                                               ; preds = %4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %5, align 4
  br label %99

73:                                               ; preds = %66
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %76 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  br label %98

77:                                               ; preds = %4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  store i32 -1, i32* %5, align 4
  br label %99

84:                                               ; preds = %77
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %88 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  br label %98

94:                                               ; preds = %4
  %95 = load i32, i32* @MSG_MSGDUMP, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %84, %73, %62, %51, %40, %26, %22
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %80, %69, %58, %47, %36, %18
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
