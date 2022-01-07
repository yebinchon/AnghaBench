; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_common_module_tests.c_ieee802_11_parse_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_common_module_tests.c_ieee802_11_parse_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_11_parse_test_data = type { i64, i64, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.ieee802_11_elems = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ieee802_11_parse tests\00", align 1
@parse_tests = common dso_local global %struct.ieee802_11_parse_test_data* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ieee802_11_parse test %d failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\00\01\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ieee802_11_vendor_ie_concat test failed\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\DD\05\11\223D\01\DD\05\11\223D\02\00\01\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"ieee802_11_vendor_ie_concat test 2 failed\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"ieee802_11_vendor_ie_concat test 3 failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ieee802_11_parse_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_11_parse_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.ieee802_11_parse_test_data*, align 8
  %5 = alloca %struct.ieee802_11_elems, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @MSG_INFO, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %52, %0
  %11 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** @parse_tests, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %11, i64 %13
  %15 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %10
  %19 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** @parse_tests, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %19, i64 %21
  store %struct.ieee802_11_parse_test_data* %22, %struct.ieee802_11_parse_test_data** %4, align 8
  %23 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** %4, align 8
  %27 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ieee802_11_parse_elems(i64 %25, i32 %28, %struct.ieee802_11_elems* %5, i32 1)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** %4, align 8
  %32 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %18
  %36 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** %4, align 8
  %37 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** %4, align 8
  %40 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ieee802_11_ie_count(i64 %38, i32 %41)
  %43 = load %struct.ieee802_11_parse_test_data*, %struct.ieee802_11_parse_test_data** %4, align 8
  %44 = getelementptr inbounds %struct.ieee802_11_parse_test_data, %struct.ieee802_11_parse_test_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %35, %18
  %48 = load i32, i32* @MSG_ERROR, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %10

55:                                               ; preds = %10
  %56 = call %struct.wpabuf* @ieee802_11_vendor_ie_concat(i32* bitcast ([3 x i8]* @.str.2 to i32*), i32 2, i32 0)
  %57 = icmp ne %struct.wpabuf* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @MSG_ERROR, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = call %struct.wpabuf* @ieee802_11_vendor_ie_concat(i32* bitcast ([17 x i8]* @.str.4 to i32*), i32 16, i32 287454020)
  store %struct.wpabuf* %62, %struct.wpabuf** %3, align 8
  br label %63

63:                                               ; preds = %61
  %64 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %65 = icmp ne %struct.wpabuf* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @MSG_ERROR, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

69:                                               ; preds = %63
  %70 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %71 = call i32 @wpabuf_len(%struct.wpabuf* %70)
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @MSG_ERROR, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

76:                                               ; preds = %69
  %77 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %78 = call i32* @wpabuf_head(%struct.wpabuf* %77)
  store i32* %78, i32** %7, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %76
  %89 = load i32, i32* @MSG_ERROR, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %88, %73, %66
  %93 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %94 = call i32 @wpabuf_free(%struct.wpabuf* %93)
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @ieee802_11_parse_elems(i64, i32, %struct.ieee802_11_elems*, i32) #1

declare dso_local i64 @ieee802_11_ie_count(i64, i32) #1

declare dso_local %struct.wpabuf* @ieee802_11_vendor_ie_concat(i32*, i32, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
