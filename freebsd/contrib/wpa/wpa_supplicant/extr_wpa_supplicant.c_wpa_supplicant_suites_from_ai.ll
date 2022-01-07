; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_suites_from_ai.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_suites_from_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32, i32, i32 }
%struct.wpa_ie_data = type { i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WPA: Failed to parse WPA IE from association info\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"WPA: Using WPA IE from AssocReq to set cipher suites\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"WPA: Driver used disabled group cipher 0x%x (mask 0x%x) - reject\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"WPA: Driver used disabled pairwise cipher 0x%x (mask 0x%x) - reject\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"WPA: Driver used disabled key management 0x%x (mask 0x%x) - reject\00", align 1
@MGMT_FRAME_PROTECTION_REQUIRED = common dso_local global i64 0, align 8
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.wpa_ie_data*)* @wpa_supplicant_suites_from_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_suites_from_ai(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.wpa_ie_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.wpa_ie_data*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_ie_data* %2, %struct.wpa_ie_data** %7, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %13 = call i32 @wpa_sm_parse_own_wpa_ie(i32 %11, %struct.wpa_ie_data* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %16
  store i32 -1, i32* %4, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_dbg(%struct.wpa_supplicant* %25, i32 %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %29 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %24
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %40 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %43 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %37, i32 %38, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  store i32 -1, i32* %4, align 4
  br label %85

46:                                               ; preds = %24
  %47 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %46
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = load i32, i32* @MSG_INFO, align 4
  %58 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %59 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %62 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %56, i32 %57, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %63)
  store i32 -1, i32* %4, align 4
  br label %85

65:                                               ; preds = %46
  %66 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %67 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %65
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %7, align 8
  %78 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %81 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %75, i32 %76, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %82)
  store i32 -1, i32* %4, align 4
  br label %85

84:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %74, %55, %36, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @wpa_sm_parse_own_wpa_ie(i32, %struct.wpa_ie_data*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
