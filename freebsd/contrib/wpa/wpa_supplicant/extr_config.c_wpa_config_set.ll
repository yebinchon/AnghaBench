; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)*, i32 }
%struct.wpa_ssid = type { i32 }

@NUM_SSID_FIELDS = common dso_local global i64 0, align 8
@ssid_fields = common dso_local global %struct.parse_data* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Line %d: failed to parse %s '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Line %d: unknown network field '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_set(%struct.wpa_ssid* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.parse_data*, align 8
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %14 = icmp eq %struct.wpa_ssid* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %4
  store i32 -1, i32* %5, align 4
  br label %78

22:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @NUM_SSID_FIELDS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load %struct.parse_data*, %struct.parse_data** @ssid_fields, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %28, i64 %29
  store %struct.parse_data* %30, %struct.parse_data** %12, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.parse_data*, %struct.parse_data** %12, align 8
  %33 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @os_strcmp(i8* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %60

38:                                               ; preds = %27
  %39 = load %struct.parse_data*, %struct.parse_data** %12, align 8
  %40 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %39, i32 0, i32 0
  %41 = load i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)*, i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)** %40, align 8
  %42 = load %struct.parse_data*, %struct.parse_data** %12, align 8
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 %41(%struct.parse_data* %42, %struct.wpa_ssid* %43, i32 %44, i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @MSG_ERROR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i32, i8*, i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %49
  store i32 -1, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %38
  br label %63

60:                                               ; preds = %37
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %23

63:                                               ; preds = %59, %23
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @NUM_SSID_FIELDS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @MSG_ERROR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 (i32, i8*, i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %70, %67
  store i32 -1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
