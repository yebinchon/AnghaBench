; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_derive_recommendation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_derive_recommendation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { i32, i32, i32, %struct.tnc_if_imv*, i64, %struct.TYPE_2__* }
%struct.tnc_if_imv = type { i64, %struct.tnc_if_imv* }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TNC: No more messages from IMVs\00", align 1
@TNCCS_PROCESS_OK_NO_RECOMMENDATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TNC: Recommendation: %d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@TNC_CONNECTION_STATE_ACCESS_ALLOWED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"isolate\00", align 1
@TNC_CONNECTION_STATE_ACCESS_ISOLATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@TNC_CONNECTION_STATE_ACCESS_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [123 x i8] c"<TNCC-TNCS-Message><Type>%08X</Type><XML><TNCCS-Recommendation type=\22%s\22></TNCCS-Recommendation></XML></TNCC-TNCS-Message>\00", align 1
@TNC_TNCCS_RECOMMENDATION = common dso_local global i32 0, align 4
@TNCCS_RECOMMENDATION_ALLOW = common dso_local global i32 0, align 4
@TNCCS_RECOMMENDATION_NO_ACCESS = common dso_local global i32 0, align 4
@TNCCS_RECOMMENDATION_ISOLATE = common dso_local global i32 0, align 4
@TNCCS_RECOMMENDATION_NO_RECOMMENDATION = common dso_local global i32 0, align 4
@TNCCS_PROCESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tncs_data*)* @tncs_derive_recommendation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncs_derive_recommendation(%struct.tncs_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tncs_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnc_if_imv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.tncs_data* %0, %struct.tncs_data** %3, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %12 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TNCCS_PROCESS_OK_NO_RECOMMENDATION, align 4
  store i32 %16, i32* %2, align 4
  br label %129

17:                                               ; preds = %1
  %18 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %19 = call i32 @tncs_solicit_recommendation(%struct.tncs_data* %18)
  store i32 128, i32* %4, align 4
  %20 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %21 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %20, i32 0, i32 3
  %22 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %21, align 8
  store %struct.tnc_if_imv* %22, %struct.tnc_if_imv** %5, align 8
  br label %23

23:                                               ; preds = %54, %17
  %24 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %25 = icmp ne %struct.tnc_if_imv* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %28 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %31 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 129
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 129, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 130
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 129
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 130, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %39
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %47, 131
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 131, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %46
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %56 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %55, i32 0, i32 1
  %57 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %56, align 8
  store %struct.tnc_if_imv* %57, %struct.tnc_if_imv** %5, align 8
  br label %23

58:                                               ; preds = %23
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %64 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %66 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  store i8* null, i8** %7, align 8
  %67 = load i32, i32* %4, align 4
  switch i32 %67, label %74 [
    i32 131, label %68
    i32 128, label %68
    i32 130, label %70
    i32 129, label %72
  ]

68:                                               ; preds = %58, %58
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %69 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_ALLOWED, align 4
  store i32 %69, i32* %6, align 4
  br label %76

70:                                               ; preds = %58
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %71 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_ISOLATED, align 4
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %73 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_NONE, align 4
  store i32 %73, i32* %6, align 4
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_ALLOWED, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %72, %70, %68
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %81 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @os_free(i64 %82)
  %84 = call i64 @os_zalloc(i32 200)
  %85 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %86 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %88 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %93 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @TNC_TNCCS_RECOMMENDATION, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @os_snprintf(i64 %94, i32 199, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0), i32 %95, i8* %96)
  br label %98

98:                                               ; preds = %91, %79
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %101 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %100, i32 0, i32 3
  %102 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %101, align 8
  store %struct.tnc_if_imv* %102, %struct.tnc_if_imv** %5, align 8
  br label %103

103:                                              ; preds = %113, %99
  %104 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %105 = icmp ne %struct.tnc_if_imv* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %108 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %109 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @tncs_imv_notify_connection_change(%struct.tnc_if_imv* %107, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106
  %114 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %115 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %114, i32 0, i32 1
  %116 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %115, align 8
  store %struct.tnc_if_imv* %116, %struct.tnc_if_imv** %5, align 8
  br label %103

117:                                              ; preds = %103
  %118 = load i32, i32* %4, align 4
  switch i32 %118, label %127 [
    i32 131, label %119
    i32 129, label %121
    i32 130, label %123
    i32 128, label %125
  ]

119:                                              ; preds = %117
  %120 = load i32, i32* @TNCCS_RECOMMENDATION_ALLOW, align 4
  store i32 %120, i32* %2, align 4
  br label %129

121:                                              ; preds = %117
  %122 = load i32, i32* @TNCCS_RECOMMENDATION_NO_ACCESS, align 4
  store i32 %122, i32* %2, align 4
  br label %129

123:                                              ; preds = %117
  %124 = load i32, i32* @TNCCS_RECOMMENDATION_ISOLATE, align 4
  store i32 %124, i32* %2, align 4
  br label %129

125:                                              ; preds = %117
  %126 = load i32, i32* @TNCCS_RECOMMENDATION_NO_RECOMMENDATION, align 4
  store i32 %126, i32* %2, align 4
  br label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @TNCCS_PROCESS_ERROR, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %125, %123, %121, %119, %15
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tncs_solicit_recommendation(%struct.tncs_data*) #1

declare dso_local i32 @os_free(i64) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_snprintf(i64, i32, i8*, i32, i8*) #1

declare dso_local i32 @tncs_imv_notify_connection_change(%struct.tnc_if_imv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
