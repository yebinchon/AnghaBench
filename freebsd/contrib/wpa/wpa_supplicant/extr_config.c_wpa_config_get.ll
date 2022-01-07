; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i8* (%struct.parse_data*, %struct.wpa_ssid*)*, i32 }
%struct.wpa_ssid = type { i32 }

@NUM_SSID_FIELDS = common dso_local global i64 0, align 8
@ssid_fields = common dso_local global %struct.parse_data* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Found newline in value for %s; not returning it\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_config_get(%struct.wpa_ssid* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.parse_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %10 = icmp eq %struct.wpa_ssid* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8
  br label %56

15:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NUM_SSID_FIELDS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load %struct.parse_data*, %struct.parse_data** @ssid_fields, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %21, i64 %22
  store %struct.parse_data* %23, %struct.parse_data** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %26 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @os_strcmp(i8* %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %20
  %31 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %32 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %31, i32 0, i32 0
  %33 = load i8* (%struct.parse_data*, %struct.wpa_ssid*)*, i8* (%struct.parse_data*, %struct.wpa_ssid*)** %32, align 8
  %34 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %36 = call i8* %33(%struct.parse_data* %34, %struct.wpa_ssid* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @has_newline(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @MSG_ERROR, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @os_free(i8* %47)
  store i8* null, i8** %8, align 8
  br label %49

49:                                               ; preds = %43, %39, %30
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %3, align 8
  br label %56

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %16

55:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %56

56:                                               ; preds = %55, %49, %14
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i64 @has_newline(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
