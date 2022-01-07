; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_TNC_TNCC_BindFunction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_TNC_TNCC_BindFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"TNC: TNC_TNCC_BindFunction(imcID=%lu, functionName='%s')\00", align 1
@TNC_MAX_IMC_ID = common dso_local global i64 0, align 8
@tnc_imc = common dso_local global i32** null, align 8
@TNC_RESULT_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TNC_TNCC_ReportMessageTypes\00", align 1
@TNC_TNCC_ReportMessageTypes = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"TNC_TNCC_SendMessage\00", align 1
@TNC_TNCC_SendMessage = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"TNC_TNCC_RequestHandshakeRetry\00", align 1
@TNC_TNCC_RequestHandshakeRetry = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"TNC_9048_LogMessage\00", align 1
@TNC_9048_LogMessage = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"TNC_9048_UserMessage\00", align 1
@TNC_9048_UserMessage = common dso_local global i8* null, align 8
@TNC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8**)* @TNC_TNCC_BindFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TNC_TNCC_BindFunction(i64 %0, i8* %1, i8** %2) #0 {
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
  %13 = load i64, i64* @TNC_MAX_IMC_ID, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32**, i32*** @tnc_imc, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %15
  %24 = load i8**, i8*** %7, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %27, i32* %4, align 4
  br label %71

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @os_strcmp(i8* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** @TNC_TNCC_ReportMessageTypes, align 8
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %69

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @os_strcmp(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** @TNC_TNCC_SendMessage, align 8
  %41 = load i8**, i8*** %7, align 8
  store i8* %40, i8** %41, align 8
  br label %68

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @os_strcmp(i8* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** @TNC_TNCC_RequestHandshakeRetry, align 8
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  br label %67

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @os_strcmp(i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** @TNC_9048_LogMessage, align 8
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  br label %66

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @os_strcmp(i8* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** @TNC_9048_UserMessage, align 8
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  br label %65

63:                                               ; preds = %56
  %64 = load i8**, i8*** %7, align 8
  store i8* null, i8** %64, align 8
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %53
  br label %67

67:                                               ; preds = %66, %46
  br label %68

68:                                               ; preds = %67, %39
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i32, i32* @TNC_RESULT_SUCCESS, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %26, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
