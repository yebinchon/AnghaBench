; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config_blob = type { i32*, i32*, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Line: %d - start of a new named blob '%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Line %d: not enough memory for blob\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Line %d: blob was not terminated properly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_config_blob* (i32*, i32*, i8*)* @wpa_config_read_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_config_blob* @wpa_config_read_blob(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.wpa_config_blob*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpa_config_blob*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %16 = load i32, i32* @MSG_MSGDUMP, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %49, %3
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @wpa_config_get_line(i8* %22, i32 256, i32* %23, i32* %24, i8** %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @os_strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %60

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @os_strlen(i8* %33)
  store i64 %34, i64* %15, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = add i64 %36, %37
  %39 = call i8* @os_realloc(i8* %35, i64 %38)
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* @MSG_ERROR, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @os_free(i8* %47)
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %4, align 8
  br label %108

49:                                               ; preds = %32
  %50 = load i8*, i8** %12, align 8
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @os_memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %14, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %14, align 8
  br label %21

60:                                               ; preds = %31, %21
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @MSG_ERROR, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @os_free(i8* %71)
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %4, align 8
  br label %108

73:                                               ; preds = %63
  %74 = call %struct.wpa_config_blob* @os_zalloc(i32 24)
  store %struct.wpa_config_blob* %74, %struct.wpa_config_blob** %8, align 8
  %75 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %76 = icmp eq %struct.wpa_config_blob* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @os_free(i8* %78)
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %4, align 8
  br label %108

80:                                               ; preds = %73
  %81 = load i8*, i8** %7, align 8
  %82 = call i32* @os_strdup(i8* %81)
  %83 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %84 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %88 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %87, i32 0, i32 2
  %89 = call i32* @base64_decode(i8* %85, i64 %86, i32* %88)
  %90 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %91 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @os_free(i8* %92)
  %94 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %95 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %80
  %99 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %100 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98, %80
  %104 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %105 = call i32 @wpa_config_free_blob(%struct.wpa_config_blob* %104)
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %4, align 8
  br label %108

106:                                              ; preds = %98
  %107 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  store %struct.wpa_config_blob* %107, %struct.wpa_config_blob** %4, align 8
  br label %108

108:                                              ; preds = %106, %103, %77, %66, %42
  %109 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %4, align 8
  ret %struct.wpa_config_blob* %109
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @wpa_config_get_line(i8*, i32, i32*, i32*, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @os_realloc(i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local %struct.wpa_config_blob* @os_zalloc(i32) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i32* @base64_decode(i8*, i64, i32*) #1

declare dso_local i32 @wpa_config_free_blob(%struct.wpa_config_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
