; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_sync_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_sync_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_DB_SYNC_COMMAND = common dso_local global i32 0, align 4
@AAC_MONKER_SYNCFIB = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@AAC_SYNC_TIMEOUT = common dso_local global i64 0, align 8
@HBA_FLAGS_DBG_ERROR_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@EIO = common dso_local global i32 0, align 4
@AAC_SRB_STS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aacraid_sync_command(%struct.aac_softc* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.aac_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %20 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %21 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %22 = call i32 @fwprintf(%struct.aac_softc* %20, i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %15, align 8
  %29 = call i32 @AAC_SET_MAILBOX(%struct.aac_softc* %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  %30 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %8
  %35 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %36 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %37 = call i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %8
  %39 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %40 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %41 = call i32 @AAC_QNOTIFY(%struct.aac_softc* %39, i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @AAC_MONKER_SYNCFIB, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i64*, i64** %16, align 8
  %47 = icmp eq i64* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64*, i64** %16, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %48, %45, %38
  %53 = load i64, i64* @time_uptime, align 8
  store i64 %53, i64* %18, align 8
  br label %54

54:                                               ; preds = %66, %52
  %55 = load i64, i64* @time_uptime, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* @AAC_SYNC_TIMEOUT, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %62 = load i8*, i8** @HBA_FLAGS_DBG_ERROR_B, align 8
  %63 = call i32 @fwprintf(%struct.aac_softc* %61, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* %9, align 4
  br label %98

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %68 = call i32 @AAC_GET_ISTATUS(%struct.aac_softc* %67)
  %69 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %54, label %73

73:                                               ; preds = %66
  %74 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %75 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %76 = call i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc* %74, i32 %75)
  %77 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %78 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %77, i32 0)
  store i64 %78, i64* %19, align 8
  %79 = load i64*, i64** %16, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i64, i64* %19, align 8
  %83 = load i64*, i64** %16, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i64*, i64** %17, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.aac_softc*, %struct.aac_softc** %10, align 8
  %89 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %88, i32 1)
  %90 = load i64*, i64** %17, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* @AAC_SRB_STS_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -1, i32* %9, align 4
  br label %98

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %48
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %95, %60
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_SET_MAILBOX(%struct.aac_softc*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc*, i32) #1

declare dso_local i32 @AAC_QNOTIFY(%struct.aac_softc*, i32) #1

declare dso_local i32 @AAC_GET_ISTATUS(%struct.aac_softc*) #1

declare dso_local i64 @AAC_GET_MAILBOX(%struct.aac_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
