; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_TNC_TNCS_BindFunction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_TNC_TNCS_BindFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"TNC: TNC_TNCS_BindFunction(imcID=%lu, functionName='%s')\00", align 1
@TNC_RESULT_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TNC_TNCS_ReportMessageTypes\00", align 1
@TNC_TNCS_ReportMessageTypes = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"TNC_TNCS_SendMessage\00", align 1
@TNC_TNCS_SendMessage = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"TNC_TNCS_RequestHandshakeRetry\00", align 1
@TNC_TNCS_RequestHandshakeRetry = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"TNC_TNCS_ProvideRecommendation\00", align 1
@TNC_TNCS_ProvideRecommendation = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"TNC_TNCS_GetAttribute\00", align 1
@TNC_TNCS_GetAttribute = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"TNC_TNCS_SetAttribute\00", align 1
@TNC_TNCS_SetAttribute = common dso_local global i8* null, align 8
@TNC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8**)* @TNC_TNCS_BindFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TNC_TNCS_BindFunction(i64 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %9, i8* %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32* @tncs_get_imv(i64 %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %16, i32* %4, align 4
  br label %73

17:                                               ; preds = %3
  %18 = load i8**, i8*** %7, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @os_strcmp(i8* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** @TNC_TNCS_ReportMessageTypes, align 8
  %28 = load i8**, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  br label %71

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @os_strcmp(i8* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** @TNC_TNCS_SendMessage, align 8
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  br label %70

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @os_strcmp(i8* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** @TNC_TNCS_RequestHandshakeRetry, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %69

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @os_strcmp(i8* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** @TNC_TNCS_ProvideRecommendation, align 8
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  br label %68

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @os_strcmp(i8* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** @TNC_TNCS_GetAttribute, align 8
  %56 = load i8**, i8*** %7, align 8
  store i8* %55, i8** %56, align 8
  br label %67

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @os_strcmp(i8* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** @TNC_TNCS_SetAttribute, align 8
  %63 = load i8**, i8*** %7, align 8
  store i8* %62, i8** %63, align 8
  br label %66

64:                                               ; preds = %57
  %65 = load i8**, i8*** %7, align 8
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* @TNC_RESULT_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %20, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i8*) #1

declare dso_local i32* @tncs_get_imv(i64) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
