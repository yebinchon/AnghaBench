; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_ext_password_test.c_ext_password_test_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_ext_password_test.c_ext_password_test_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ext_password_test_data = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"EXT PW TEST: get(%s)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"EXT PW TEST: value\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"EXT PW TEST: get(%s) - not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i8*, i8*)* @ext_password_test_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ext_password_test_get(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ext_password_test_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ext_password_test_data*
  store %struct.ext_password_test_data* %12, %struct.ext_password_test_data** %6, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.ext_password_test_data*, %struct.ext_password_test_data** %6, align 8
  %17 = getelementptr inbounds %struct.ext_password_test_data, %struct.ext_password_test_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %111

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @os_strlen(i8* %23)
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %106, %22
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %107

35:                                               ; preds = %33
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @os_strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 61
  br i1 %47, label %48, label %97

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %66, %48
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 124
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %54

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call %struct.wpabuf* @ext_password_alloc(i32 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %10, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %78 = icmp eq %struct.wpabuf* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %111

80:                                               ; preds = %69
  %81 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @wpabuf_put_data(%struct.wpabuf* %81, i8* %82, i32 %88)
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %92 = call i32 @wpabuf_head(%struct.wpabuf* %91)
  %93 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %94 = call i32 @wpabuf_len(%struct.wpabuf* %93)
  %95 = call i32 @wpa_hexdump_ascii_key(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %96, %struct.wpabuf** %3, align 8
  br label %111

97:                                               ; preds = %41, %35
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i8* @os_strchr(i8* %99, i8 signext 124)
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  br label %106

106:                                              ; preds = %103, %97
  br label %25

107:                                              ; preds = %33
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @wpa_printf(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %111

111:                                              ; preds = %107, %80, %79, %21
  %112 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %112
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i64) #1

declare dso_local %struct.wpabuf* @ext_password_alloc(i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
