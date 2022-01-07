; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32 }
%struct.aac_command = type { i32, i64, i32, i32, i64 }
%struct.bio = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_QUEUE_FRZN = common dso_local global i32 0, align 4
@AAC_CMD_MAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"aac: command %p already mapped\00", align 1
@AAC_REQ_BIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_COMM_B = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"freezing queue\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"aac_startio: unexpected error %d from busdma\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_startio(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_command*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %5 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %6 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %7 = call i32 @fwprintf(%struct.aac_softc* %5, i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %102, %1
  %9 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %10 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %103

16:                                               ; preds = %8
  %17 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %18 = call %struct.aac_command* @aac_dequeue_ready(%struct.aac_softc* %17)
  store %struct.aac_command* %18, %struct.aac_command** %3, align 8
  %19 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %20 = icmp eq %struct.aac_command* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %23 = call i32 @aac_bio_command(%struct.aac_softc* %22, %struct.aac_command** %3)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %26 = icmp eq %struct.aac_command* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %103

28:                                               ; preds = %24
  %29 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %30 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %37 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.aac_command* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %40 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %38
  %44 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %45 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AAC_REQ_BIO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %55 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %58 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.bio*
  %61 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %62 = call i32 @bus_dmamap_load_bio(i32 %53, i32 %56, %struct.bio* %60, i32 (%struct.aac_command*, i32*, i32, i32)* @aac_map_command_sg, %struct.aac_command* %61, i32 0)
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %43
  %64 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %65 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %68 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %71 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %74 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %77 = call i32 @bus_dmamap_load(i32 %66, i32 %69, i32 %72, i64 %75, i32 (%struct.aac_command*, i32*, i32, i32)* @aac_map_command_sg, %struct.aac_command* %76, i32 0)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %63, %50
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @EINPROGRESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %84 = load i8*, i8** @HBA_FLAGS_DBG_COMM_B, align 8
  %85 = call i32 @fwprintf(%struct.aac_softc* %83, i8* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %87 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %88 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %98

91:                                               ; preds = %78
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %82
  br label %102

99:                                               ; preds = %38
  %100 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %101 = call i32 @aac_map_command_sg(%struct.aac_command* %100, i32* null, i32 0, i32 0)
  br label %102

102:                                              ; preds = %99, %98
  br label %8

103:                                              ; preds = %27, %15
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_command* @aac_dequeue_ready(%struct.aac_softc*) #1

declare dso_local i32 @aac_bio_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_bio(i32, i32, %struct.bio*, i32 (%struct.aac_command*, i32*, i32, i32)*, %struct.aac_command*, i32) #1

declare dso_local i32 @aac_map_command_sg(%struct.aac_command*, i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i64, i32 (%struct.aac_command*, i32*, i32, i32)*, %struct.aac_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
