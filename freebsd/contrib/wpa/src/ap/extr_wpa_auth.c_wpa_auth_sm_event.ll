; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sm_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i32, i32, i32, i8*, i64, i32, i8*, i32, i64, i8*, i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8*, i32, i32*, i32, i32*, i32, i32*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LOGGER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"event %d notification\00", align 1
@TRUE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"WPA state machine had not been started - initialize now\00", align 1
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_sm_event(%struct.wpa_state_machine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_state_machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %8 = icmp eq %struct.wpa_state_machine* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %106

10:                                               ; preds = %2
  %11 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %11, i32 0, i32 24
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %14, i32 0, i32 23
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LOGGER_DEBUG, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @wpa_auth_vlogger(i32 %13, i32 %16, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %78 [
    i32 133, label %21
    i32 136, label %21
    i32 132, label %22
    i32 131, label %22
    i32 129, label %26
    i32 128, label %26
    i32 134, label %72
    i32 135, label %73
    i32 130, label %74
  ]

21:                                               ; preds = %10, %10
  br label %78

22:                                               ; preds = %10, %10
  %23 = load i8*, i8** @TRUE, align 8
  %24 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %24, i32 0, i32 22
  store i8* %23, i8** %25, align 8
  br label %78

26:                                               ; preds = %10, %10
  %27 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %37, i32 0, i32 15
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %40 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %106

43:                                               ; preds = %31
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %45, i32 0, i32 15
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %48, i32 0, i32 14
  store i8* %47, i8** %49, align 8
  br label %78

50:                                               ; preds = %26
  %51 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %51, i32 0, i32 12
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %56, i32 0, i32 13
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i8*, i8** @FALSE, align 8
  %63 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %64 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @TRUE, align 8
  %66 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %67 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %55, %50
  %69 = load i8*, i8** @TRUE, align 8
  %70 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %70, i32 0, i32 10
  store i8* %69, i8** %71, align 8
  br label %78

72:                                               ; preds = %10
  br label %78

73:                                               ; preds = %10
  br label %78

74:                                               ; preds = %10
  %75 = load i8*, i8** @FALSE, align 8
  %76 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %77 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %3, align 4
  br label %106

78:                                               ; preds = %10, %73, %72, %68, %43, %22, %21
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i8*, i8** @FALSE, align 8
  %83 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %84 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %86 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %85, i32 0, i32 5
  %87 = call i32 @os_memset(i32* %86, i32 0, i32 4)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 128
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %92 = call i32 @wpa_remove_ptk(%struct.wpa_state_machine* %91)
  br label %93

93:                                               ; preds = %90, %81
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i8*, i8** @TRUE, align 8
  %101 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %102 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  store i32 0, i32* %3, align 4
  br label %106

103:                                              ; preds = %94
  %104 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %105 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %99, %74, %42, %9
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @wpa_auth_vlogger(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_sm_step(%struct.wpa_state_machine*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @wpa_remove_ptk(%struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
