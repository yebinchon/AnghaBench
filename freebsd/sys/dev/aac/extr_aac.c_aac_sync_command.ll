; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_sync_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_sync_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_DB_SYNC_COMMAND = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@AAC_IMMEDIATE_TIMEOUT = common dso_local global i64 0, align 8
@HBA_FLAGS_DBG_ERROR_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@EIO = common dso_local global i32 0, align 4
@AAC_SRB_STS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i64, i64, i64, i64, i64, i64*)* @aac_sync_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_sync_command(%struct.aac_softc* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %19 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %20 = call i32 @fwprintf(%struct.aac_softc* %18, i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @AAC_SET_MAILBOX(%struct.aac_softc* %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26)
  %28 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %29 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %30 = call i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc* %28, i32 %29)
  %31 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %32 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %33 = call i32 @AAC_QNOTIFY(%struct.aac_softc* %31, i32 %32)
  %34 = load i64, i64* @time_uptime, align 8
  store i64 %34, i64* %16, align 8
  br label %35

35:                                               ; preds = %47, %7
  %36 = load i64, i64* @time_uptime, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @AAC_IMMEDIATE_TIMEOUT, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %43 = load i8*, i8** @HBA_FLAGS_DBG_ERROR_B, align 8
  %44 = call i32 @fwprintf(%struct.aac_softc* %42, i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  store i32 %45, i32* %8, align 4
  br label %71

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %49 = call i32 @AAC_GET_ISTATUS(%struct.aac_softc* %48)
  %50 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %35, label %54

54:                                               ; preds = %47
  %55 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %56 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %57 = call i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc* %55, i32 %56)
  %58 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %59 = call i64 @AAC_GET_MAILBOX(%struct.aac_softc* %58, i32 0)
  store i64 %59, i64* %17, align 8
  %60 = load i64*, i64** %15, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i64, i64* %17, align 8
  %64 = load i64*, i64** %15, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* @AAC_SRB_STS_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* %8, align 4
  br label %71

70:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %69, %41
  %72 = load i32, i32* %8, align 4
  ret i32 %72
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
