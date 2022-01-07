; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_survey_interference_factor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_survey_interference_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_survey = type { i32, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i64, [8 x i8] }

@SURVEY_HAS_CHAN_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_HAS_CHAN_TIME_RX = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ACS: Survey data missing\00", align 1
@SURVEY_HAS_CHAN_TIME_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (%struct.freq_survey*, i64)* @acs_survey_interference_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @acs_survey_interference_factor(%struct.freq_survey* %0, i64 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca %struct.freq_survey*, align 8
  %5 = alloca i64, align 8
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store %struct.freq_survey* %0, %struct.freq_survey** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %10 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 16
  %12 = load i32, i32* @SURVEY_HAS_CHAN_TIME_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %17 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %16, i32 0, i32 1
  %18 = load x86_fp80, x86_fp80* %17, align 16
  store x86_fp80 %18, x86_fp80* %7, align 16
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %21 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = load i32, i32* @SURVEY_HAS_CHAN_TIME_RX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %28 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %27, i32 0, i32 2
  %29 = load x86_fp80, x86_fp80* %28, align 16
  store x86_fp80 %29, x86_fp80* %7, align 16
  br label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  br label %86

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %36 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %35, i32 0, i32 3
  %37 = load x86_fp80, x86_fp80* %36, align 16
  store x86_fp80 %37, x86_fp80* %8, align 16
  %38 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %39 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = load i32, i32* @SURVEY_HAS_CHAN_TIME_TX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %46 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 16
  %48 = sitofp i64 %47 to x86_fp80
  %49 = load x86_fp80, x86_fp80* %7, align 16
  %50 = fsub x86_fp80 %49, %48
  store x86_fp80 %50, x86_fp80* %7, align 16
  %51 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %52 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 16
  %54 = sitofp i64 %53 to x86_fp80
  %55 = load x86_fp80, x86_fp80* %8, align 16
  %56 = fsub x86_fp80 %55, %54
  store x86_fp80 %56, x86_fp80* %8, align 16
  br label %57

57:                                               ; preds = %44, %34
  %58 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %59 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %58, i32 0, i32 4
  %60 = load x86_fp80, x86_fp80* %59, align 16
  %61 = fdiv x86_fp80 %60, 0xK4001A000000000000000
  %62 = call x86_fp80 @pow(i32 10, x86_fp80 %61)
  %63 = load x86_fp80, x86_fp80* %8, align 16
  %64 = fcmp une x86_fp80 %63, 0xK00000000000000000000
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load x86_fp80, x86_fp80* %7, align 16
  %67 = load x86_fp80, x86_fp80* %8, align 16
  %68 = fdiv x86_fp80 %66, %67
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi x86_fp80 [ %68, %65 ], [ 0xK00000000000000000000, %69 ]
  %72 = load %struct.freq_survey*, %struct.freq_survey** %4, align 8
  %73 = getelementptr inbounds %struct.freq_survey, %struct.freq_survey* %72, i32 0, i32 4
  %74 = load x86_fp80, x86_fp80* %73, align 16
  %75 = fdiv x86_fp80 %74, 0xK4002A000000000000000
  %76 = call x86_fp80 @pow(i32 10, x86_fp80 %75)
  %77 = load i64, i64* %5, align 8
  %78 = sitofp i64 %77 to x86_fp80
  %79 = fdiv x86_fp80 %78, 0xK4002A000000000000000
  %80 = call x86_fp80 @pow(i32 10, x86_fp80 %79)
  %81 = fsub x86_fp80 %76, %80
  %82 = call x86_fp80 @pow(i32 2, x86_fp80 %81)
  %83 = fmul x86_fp80 %71, %82
  %84 = fadd x86_fp80 %62, %83
  store x86_fp80 %84, x86_fp80* %6, align 16
  %85 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %85, x86_fp80* %3, align 16
  br label %86

86:                                               ; preds = %70, %30
  %87 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %87
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local x86_fp80 @pow(i32, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
