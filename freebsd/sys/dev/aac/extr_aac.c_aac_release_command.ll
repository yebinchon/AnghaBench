; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_release_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_release_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { %struct.TYPE_4__*, i64, %struct.aac_softc*, i32, i32*, i32*, i64, i32*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i32, i32 }
%struct.aac_softc = type { i32, i32 }
%struct.aac_event = type { i32, i32 (%struct.aac_softc*, %struct.aac_event*, i32)* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_ADAP_NORM_CMD_QUEUE = common dso_local global i32 0, align 4
@AAC_FIBSTATE_EMPTY = common dso_local global i32 0, align 4
@AAC_FIBTYPE_TFIB = common dso_local global i32 0, align 4
@ev_links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_release_command(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %struct.aac_event*, align 8
  %4 = alloca %struct.aac_softc*, align 8
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %5 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %6 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %5, i32 0, i32 2
  %7 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  store %struct.aac_softc* %7, %struct.aac_softc** %4, align 8
  %8 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %9 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %10 = call i32 @fwprintf(%struct.aac_softc* %8, i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %12 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %14 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %13, i32 0, i32 7
  store i32* null, i32** %14, align 8
  %15 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %16 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %18 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %20 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @AAC_ADAP_NORM_CMD_QUEUE, align 4
  %22 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %23 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @AAC_FIBSTATE_EMPTY, align 4
  %25 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %26 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* @AAC_FIBTYPE_TFIB, align 4
  %31 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %32 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i32 %30, i32* %35, align 8
  %36 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %37 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %42 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %41, i32 0, i32 2
  %43 = load %struct.aac_softc*, %struct.aac_softc** %42, align 8
  %44 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %47 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %45, i32* %50, align 8
  %51 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %52 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %55 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 %53, i64* %58, align 8
  %59 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %60 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %65 = call i32 @aac_enqueue_free(%struct.aac_command* %64)
  %66 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %67 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %66, i32 0, i32 0
  %68 = call %struct.aac_event* @TAILQ_FIRST(i32* %67)
  store %struct.aac_event* %68, %struct.aac_event** %3, align 8
  %69 = icmp ne %struct.aac_event* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %1
  %71 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 0
  %73 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %74 = load i32, i32* @ev_links, align 4
  %75 = call i32 @TAILQ_REMOVE(i32* %72, %struct.aac_event* %73, i32 %74)
  %76 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %77 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %76, i32 0, i32 1
  %78 = load i32 (%struct.aac_softc*, %struct.aac_event*, i32)*, i32 (%struct.aac_softc*, %struct.aac_event*, i32)** %77, align 8
  %79 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %80 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %81 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %82 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %78(%struct.aac_softc* %79, %struct.aac_event* %80, i32 %83)
  br label %85

85:                                               ; preds = %70, %1
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @aac_enqueue_free(%struct.aac_command*) #1

declare dso_local %struct.aac_event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aac_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
