; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_survey_is_sufficient.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_survey_is_sufficient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_survey = type { i32 }

@SURVEY_HAS_NF = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ACS: Survey is missing noise floor\00", align 1
@SURVEY_HAS_CHAN_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ACS: Survey is missing channel time\00", align 1
@SURVEY_HAS_CHAN_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_HAS_CHAN_TIME_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"ACS: Survey is missing RX and busy time (at least one is required)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.freq_survey*)* @acs_survey_is_sufficient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acs_survey_is_sufficient(%struct.freq_survey* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.freq_survey*, align 8
  store %struct.freq_survey* %0, %struct.freq_survey** %3, align 8
  %4 = load %struct.freq_survey*, %struct.freq_survey** %3, align 8
  %5 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SURVEY_HAS_NF, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_INFO, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.freq_survey*, %struct.freq_survey** %3, align 8
  %15 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SURVEY_HAS_CHAN_TIME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

23:                                               ; preds = %13
  %24 = load %struct.freq_survey*, %struct.freq_survey** %3, align 8
  %25 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SURVEY_HAS_CHAN_TIME_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.freq_survey*, %struct.freq_survey** %3, align 8
  %32 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SURVEY_HAS_CHAN_TIME_RX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %30, %23
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %20, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
