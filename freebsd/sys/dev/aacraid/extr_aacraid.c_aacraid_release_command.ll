; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_release_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_release_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { %struct.TYPE_6__*, i64, %struct.aac_softc*, i64, i32*, i32*, i64, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_event = type { i32, i32 (%struct.aac_softc*, %struct.aac_event*, i32)* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MA_OWNED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_EMPTY = common dso_local global i32 0, align 4
@AAC_FIBTYPE_TFIB = common dso_local global i32 0, align 4
@ev_links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aacraid_release_command(%struct.aac_command* %0) #0 {
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
  %11 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 2
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %16 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %15, i32 0, i32 7
  store i32* null, i32** %16, align 8
  %17 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %18 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %20 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %22 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %24 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @AAC_FIBSTATE_EMPTY, align 4
  %26 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %27 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @AAC_FIBTYPE_TFIB, align 4
  %32 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %33 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store i32 %31, i32* %36, align 8
  %37 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %38 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %43 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %42, i32 0, i32 2
  %44 = load %struct.aac_softc*, %struct.aac_softc** %43, align 8
  %45 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %48 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  %52 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %53 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %56 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %54, i64* %60, align 8
  %61 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %62 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %67 = call i32 @aac_enqueue_free(%struct.aac_command* %66)
  br label %68

68:                                               ; preds = %73, %1
  %69 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %70 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %69, i32 0, i32 0
  %71 = call %struct.aac_event* @TAILQ_FIRST(i32* %70)
  store %struct.aac_event* %71, %struct.aac_event** %3, align 8
  %72 = icmp ne %struct.aac_event* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 0
  %76 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %77 = load i32, i32* @ev_links, align 4
  %78 = call i32 @TAILQ_REMOVE(i32* %75, %struct.aac_event* %76, i32 %77)
  %79 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %80 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %79, i32 0, i32 1
  %81 = load i32 (%struct.aac_softc*, %struct.aac_event*, i32)*, i32 (%struct.aac_softc*, %struct.aac_event*, i32)** %80, align 8
  %82 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %83 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %84 = load %struct.aac_event*, %struct.aac_event** %3, align 8
  %85 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %81(%struct.aac_softc* %82, %struct.aac_event* %83, i32 %86)
  br label %68

88:                                               ; preds = %68
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @aac_enqueue_free(%struct.aac_command*) #1

declare dso_local %struct.aac_event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aac_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
