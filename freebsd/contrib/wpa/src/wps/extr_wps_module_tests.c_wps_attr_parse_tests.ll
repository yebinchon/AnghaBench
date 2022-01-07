; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_module_tests.c_wps_attr_parse_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_module_tests.c_wps_attr_parse_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_attr_parse_test = type { i64, i32, i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS attribute parsing tests\00", align 1
@wps_attr_parse_test_cases = common dso_local global %struct.wps_attr_parse_test* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"WPS attribute parsing test %u failed: %s\00", align 1
@MAX_CRED_COUNT = common dso_local global i32 0, align 4
@MAX_REQ_DEV_TYPE_COUNT = common dso_local global i32 0, align 4
@MAX_WPS_PARSE_VENDOR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wps_attr_parse_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_attr_parse_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wps_parse_attr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wps_attr_parse_test*, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @MSG_INFO, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %124, %0
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** @wps_attr_parse_test_cases, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.wps_attr_parse_test* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %127

15:                                               ; preds = %10
  %16 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** @wps_attr_parse_test_cases, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.wps_attr_parse_test, %struct.wps_attr_parse_test* %16, i64 %18
  store %struct.wps_attr_parse_test* %19, %struct.wps_attr_parse_test** %7, align 8
  %20 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** %7, align 8
  %21 = getelementptr inbounds %struct.wps_attr_parse_test, %struct.wps_attr_parse_test* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @os_strlen(i32 %22)
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.wpabuf* @wpabuf_alloc(i64 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %5, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = icmp eq %struct.wpabuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 -1, i32* %1, align 4
  br label %129

31:                                               ; preds = %15
  %32 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** %7, align 8
  %33 = getelementptr inbounds %struct.wps_attr_parse_test, %struct.wps_attr_parse_test* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @wpabuf_put(%struct.wpabuf* %35, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @hexstr2bin(i32 %34, i32 %37, i64 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %43 = call i32 @wpabuf_free(%struct.wpabuf* %42)
  store i32 -1, i32* %1, align 4
  br label %129

44:                                               ; preds = %31
  %45 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %46 = call i64 @wps_parse_msg(%struct.wpabuf* %45, %struct.wps_parse_attr* %2)
  %47 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** %7, align 8
  %48 = getelementptr inbounds %struct.wps_attr_parse_test, %struct.wps_attr_parse_test* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @MSG_ERROR, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** %7, align 8
  %55 = getelementptr inbounds %struct.wps_attr_parse_test, %struct.wps_attr_parse_test* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.wps_attr_parse_test*, %struct.wps_attr_parse_test** %7, align 8
  %60 = getelementptr inbounds %struct.wps_attr_parse_test, %struct.wps_attr_parse_test* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %121 [
    i32 1, label %62
    i32 2, label %72
    i32 3, label %79
    i32 4, label %85
    i32 5, label %92
    i32 6, label %99
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66, %62
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %66
  br label %121

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MAX_CRED_COUNT, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %72
  br label %121

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %121

85:                                               ; preds = %58
  %86 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MAX_REQ_DEV_TYPE_COUNT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %85
  br label %121

92:                                               ; preds = %58
  %93 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MAX_WPS_PARSE_VENDOR_EXT, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %92
  br label %121

99:                                               ; preds = %58
  %100 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %2, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115, %111, %107, %103, %99
  store i32 -1, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %115
  br label %121

121:                                              ; preds = %58, %120, %98, %91, %84, %78, %71
  %122 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %123 = call i32 @wpabuf_free(%struct.wpabuf* %122)
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %10

127:                                              ; preds = %10
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %1, align 4
  br label %129

129:                                              ; preds = %127, %41, %30
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.wps_attr_parse_test*) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @hexstr2bin(i32, i32, i64) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
