; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_config_methods_str2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_config_methods_str2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_KEYPAD = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@WPS_CONFIG_ETHERNET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@WPS_CONFIG_LABEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ext_nfc_token\00", align 1
@WPS_CONFIG_EXT_NFC_TOKEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"int_nfc_token\00", align 1
@WPS_CONFIG_INT_NFC_TOKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"nfc_interface\00", align 1
@WPS_CONFIG_NFC_INTERFACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"push_button\00", align 1
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"virtual_display\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"physical_display\00", align 1
@WPS_CONFIG_PHY_DISPLAY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"virtual_push_button\00", align 1
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"physical_push_button\00", align 1
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"p2ps\00", align 1
@WPS_CONFIG_P2PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_config_methods_str2bin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %6, %1
  %13 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %14 = load i32, i32* @WPS_CONFIG_KEYPAD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @WPS_CONFIG_VIRT_DISPLAY, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %126

21:                                               ; preds = %6
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @os_strstr(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @WPS_CONFIG_ETHERNET, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @os_strstr(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %2, align 8
  %39 = call i64 @os_strstr(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @os_strstr(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @WPS_CONFIG_EXT_NFC_TOKEN, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @os_strstr(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @WPS_CONFIG_INT_NFC_TOKEN, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i8*, i8** %2, align 8
  %63 = call i64 @os_strstr(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @WPS_CONFIG_NFC_INTERFACE, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %2, align 8
  %71 = call i64 @os_strstr(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i8*, i8** %2, align 8
  %79 = call i64 @os_strstr(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @WPS_CONFIG_KEYPAD, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i8*, i8** %2, align 8
  %87 = call i64 @os_strstr(i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @WPS_CONFIG_VIRT_DISPLAY, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i8*, i8** %2, align 8
  %95 = call i64 @os_strstr(i8* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @WPS_CONFIG_PHY_DISPLAY, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i8*, i8** %2, align 8
  %103 = call i64 @os_strstr(i8* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i8*, i8** %2, align 8
  %111 = call i64 @os_strstr(i8* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i8*, i8** %2, align 8
  %119 = call i64 @os_strstr(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @WPS_CONFIG_P2PS, align 4
  %123 = load i32, i32* %3, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %12
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @os_strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
