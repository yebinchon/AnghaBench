; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_iface_get_pref_freq_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_iface_get_pref_freq_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"STATION\00", align 1
@WPA_IF_STATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@WPA_IF_AP_BSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"P2P_GO\00", align 1
@WPA_IF_P2P_GO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"P2P_CLIENT\00", align 1
@WPA_IF_P2P_CLIENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"IBSS\00", align 1
@WPA_IF_IBSS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"TDLS\00", align 1
@WPA_IF_TDLS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"CTRL_IFACE: GET_PREF_FREQ_LIST iface_type=%d (%s)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpas_ctrl_iface_get_pref_freq_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_iface_get_pref_freq_list(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [100 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 100, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @os_strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @WPA_IF_STATION, align 4
  store i32 %25, i32* %14, align 4
  br label %62

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @os_strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @WPA_IF_AP_BSS, align 4
  store i32 %31, i32* %14, align 4
  br label %61

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @os_strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @WPA_IF_P2P_GO, align 4
  store i32 %37, i32* %14, align 4
  br label %60

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @os_strcmp(i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @WPA_IF_P2P_CLIENT, align 4
  store i32 %43, i32* %14, align 4
  br label %59

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @os_strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @WPA_IF_IBSS, align 4
  store i32 %49, i32* %14, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @os_strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @WPA_IF_TDLS, align 4
  store i32 %55, i32* %14, align 4
  br label %57

56:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %121

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60, %30
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %64, i8* %65)
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %68 = load i32, i32* %14, align 4
  %69 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  %70 = call i32 @wpa_drv_get_pref_freq_list(%struct.wpa_supplicant* %67, i32 %68, i32* %11, i32* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %121

74:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %12, align 4
  %88 = icmp ugt i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @os_snprintf(i8* %80, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %90, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @os_snprintf_error(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %121

106:                                              ; preds = %79
  %107 = load i32, i32* %13, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %15, align 8
  br label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %75

114:                                              ; preds = %75
  %115 = load i8*, i8** %15, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %114, %105, %73, %56
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @wpa_drv_get_pref_freq_list(%struct.wpa_supplicant*, i32, i32*, i32*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
