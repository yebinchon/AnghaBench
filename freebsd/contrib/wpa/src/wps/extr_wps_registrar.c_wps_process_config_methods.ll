; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_config_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_config_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WPS: No Config Methods received\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"WPS: Enrollee Config Methods 0x%x%s%s%s%s%s%s%s%s%s\00", align 1
@WPS_CONFIG_USBA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" [USBA]\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WPS_CONFIG_ETHERNET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" [Ethernet]\00", align 1
@WPS_CONFIG_LABEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" [Label]\00", align 1
@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" [Display]\00", align 1
@WPS_CONFIG_EXT_NFC_TOKEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c" [Ext NFC Token]\00", align 1
@WPS_CONFIG_INT_NFC_TOKEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c" [Int NFC Token]\00", align 1
@WPS_CONFIG_NFC_INTERFACE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" [NFC]\00", align 1
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c" [PBC]\00", align 1
@WPS_CONFIG_KEYPAD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c" [Keypad]\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"WPS: Prefer PSK format key due to Enrollee not supporting display\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, i32*)* @wps_process_config_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_config_methods(%struct.wps_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %87

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @WPA_GET_BE16(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @WPS_CONFIG_USBA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @WPS_CONFIG_ETHERNET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @WPS_CONFIG_EXT_NFC_TOKEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WPS_CONFIG_INT_NFC_TOKEN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @WPS_CONFIG_NFC_INTERFACE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @WPS_CONFIG_KEYPAD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* %22, i8* %28, i8* %34, i8* %40, i8* %46, i8* %52, i8* %58, i8* %64, i8* %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %12
  %77 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %78 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  %84 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %76, %12
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %9
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
