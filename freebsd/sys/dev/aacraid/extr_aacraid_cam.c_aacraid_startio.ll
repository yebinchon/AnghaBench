; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aacraid_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aacraid_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i64 }
%struct.aac_command = type { i32, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_STATE_RESET = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_ERROR_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"AAC_STATE_RESET\00", align 1
@AAC_QUEUE_FRZN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"AAC_QUEUE_FRZN\00", align 1
@AAC_FLAGS_SYNC_MODE = common dso_local global i32 0, align 4
@AAC_CMD_MAPPED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"aac: command %p already mapped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aacraid_startio(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_command*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %4 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %5 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %6 = call i32 @fwprintf(%struct.aac_softc* %4, i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %70, %1
  %8 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %9 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AAC_STATE_RESET, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %16 = load i8*, i8** @HBA_FLAGS_DBG_ERROR_B, align 8
  %17 = call i32 @fwprintf(%struct.aac_softc* %15, i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %71

18:                                               ; preds = %7
  %19 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %27 = load i8*, i8** @HBA_FLAGS_DBG_ERROR_B, align 8
  %28 = call i32 @fwprintf(%struct.aac_softc* %26, i8* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %71

29:                                               ; preds = %18
  %30 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %71

42:                                               ; preds = %36, %29
  %43 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %44 = call %struct.aac_command* @aac_dequeue_ready(%struct.aac_softc* %43)
  store %struct.aac_command* %44, %struct.aac_command** %3, align 8
  %45 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %46 = icmp eq %struct.aac_command* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %71

48:                                               ; preds = %42
  %49 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %50 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %57 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.aac_command* %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %60 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %65 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %66 = call i32 @aac_load_map_command_sg(%struct.aac_softc* %64, %struct.aac_command* %65)
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %69 = call i32 @aacraid_map_command_sg(%struct.aac_command* %68, i32* null, i32 0, i32 0)
  br label %70

70:                                               ; preds = %67, %63
  br label %7

71:                                               ; preds = %47, %41, %25, %14
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_command* @aac_dequeue_ready(%struct.aac_softc*) #1

declare dso_local i32 @panic(i8*, %struct.aac_command*) #1

declare dso_local i32 @aac_load_map_command_sg(%struct.aac_softc*, %struct.aac_command*) #1

declare dso_local i32 @aacraid_map_command_sg(%struct.aac_command*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
