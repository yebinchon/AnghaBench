; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_no_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_no_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i8* (%struct.parse_data*, %struct.wpa_ssid*)*, i64, i32 }
%struct.wpa_ssid = type { i32 }

@NUM_SSID_FIELDS = common dso_local global i64 0, align 8
@ssid_fields = common dso_local global %struct.parse_data* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Do not allow key_data field to be exposed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_config_get_no_key(%struct.wpa_ssid* %0, i8* %1) #0 {
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
  br label %66

15:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %62, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NUM_SSID_FIELDS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load %struct.parse_data*, %struct.parse_data** @ssid_fields, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %21, i64 %22
  store %struct.parse_data* %23, %struct.parse_data** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %26 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @os_strcmp(i8* %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %20
  %31 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %32 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %31, i32 0, i32 0
  %33 = load i8* (%struct.parse_data*, %struct.wpa_ssid*)*, i8* (%struct.parse_data*, %struct.wpa_ssid*)** %32, align 8
  %34 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %36 = call i8* %33(%struct.parse_data* %34, %struct.wpa_ssid* %35)
  store i8* %36, i8** %8, align 8
  %37 = load %struct.parse_data*, %struct.parse_data** %7, align 8
  %38 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %30
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @str_clear_free(i8* %53)
  %55 = call i8* @os_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %3, align 8
  br label %66

56:                                               ; preds = %44, %41
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @os_free(i8* %57)
  store i8* null, i8** %3, align 8
  br label %66

59:                                               ; preds = %30
  %60 = load i8*, i8** %8, align 8
  store i8* %60, i8** %3, align 8
  br label %66

61:                                               ; preds = %20
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %16

65:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %66

66:                                               ; preds = %65, %59, %56, %50, %14
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
