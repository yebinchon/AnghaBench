; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_get_recommendation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_get_recommendation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"<TNCCS-Recommendation \00", align 1
@TNCCS_RECOMMENDATION_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" type=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"TNC: TNCCS-Recommendation: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@TNCCS_RECOMMENDATION_ALLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@TNCCS_RECOMMENDATION_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"isolate\00", align 1
@TNCCS_RECOMMENDATION_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tncc_get_recommendation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_get_recommendation(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @os_strstr(i8* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @TNCCS_RECOMMENDATION_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 21
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @os_strstr(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @TNCCS_RECOMMENDATION_ERROR, align 4
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %14
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %52, %33
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 34
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 62
  br label %50

50:                                               ; preds = %45, %40, %35
  %51 = phi i1 [ false, %40 ], [ false, %35 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  br label %35

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @TNCCS_RECOMMENDATION_ERROR, align 4
  store i32 %61, i32* %2, align 4
  br label %93

62:                                               ; preds = %55
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %6, align 1
  %65 = load i8*, i8** %5, align 8
  store i8 0, i8* %65, align 1
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @TNCCS_RECOMMENDATION_ERROR, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @os_strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @TNCCS_RECOMMENDATION_ALLOW, align 4
  store i32 %74, i32* %7, align 4
  br label %89

75:                                               ; preds = %62
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @os_strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @TNCCS_RECOMMENDATION_NONE, align 4
  store i32 %80, i32* %7, align 4
  br label %88

81:                                               ; preds = %75
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @os_strcmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @TNCCS_RECOMMENDATION_ISOLATE, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %79
  br label %89

89:                                               ; preds = %88, %73
  %90 = load i8, i8* %6, align 1
  %91 = load i8*, i8** %5, align 8
  store i8 %90, i8* %91, align 1
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %60, %21, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
