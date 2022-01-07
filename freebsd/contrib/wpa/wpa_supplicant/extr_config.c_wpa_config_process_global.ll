; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i8*, i32, i64 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)* }
%struct.wpa_config = type { i32, i32, i32 }

@NUM_GLOBAL_FIELDS = common dso_local global i64 0, align 8
@global_fields = common dso_local global %struct.global_parse_data* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Line %d: failed to parse '%s'.\00", align 1
@CFG_CHANGED_NFC_PASSWORD_TOKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Line %d: unknown global field '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_process_global(%struct.wpa_config* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.global_parse_data*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %75, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @NUM_GLOBAL_FIELDS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %78

16:                                               ; preds = %12
  %17 = load %struct.global_parse_data*, %struct.global_parse_data** @global_fields, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %17, i64 %18
  store %struct.global_parse_data* %19, %struct.global_parse_data** %10, align 8
  %20 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %21 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @os_strlen(i8* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %26 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @os_strncmp(i8* %24, i8* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %16
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 61
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %16
  br label %75

40:                                               ; preds = %32
  %41 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %42 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %41, i32 0, i32 2
  %43 = load i64 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)*, i64 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)** %42, align 8
  %44 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %45 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i64 %43(%struct.global_parse_data* %44, %struct.wpa_config* %45, i32 %46, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load i32, i32* @MSG_ERROR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %56)
  store i32 -1, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %40
  %59 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %60 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CFG_CHANGED_NFC_PASSWORD_TOKEN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %66 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.global_parse_data*, %struct.global_parse_data** %10, align 8
  %69 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %72 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %78

75:                                               ; preds = %39
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %12

78:                                               ; preds = %67, %12
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @NUM_GLOBAL_FIELDS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @MSG_ERROR, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %89)
  store i32 -1, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %78
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
