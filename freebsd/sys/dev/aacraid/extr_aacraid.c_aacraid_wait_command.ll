; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_wait_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_wait_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { %struct.aac_softc* }
%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MA_OWNED = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"aacraid_wait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aacraid_wait_command(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %5 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %6 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %5, i32 0, i32 0
  %7 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  store %struct.aac_softc* %7, %struct.aac_softc** %3, align 8
  %8 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %9 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %10 = call i32 @fwprintf(%struct.aac_softc* %8, i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %16 = call i32 @aac_enqueue_ready(%struct.aac_command* %15)
  %17 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %18 = call i32 @aacraid_startio(%struct.aac_softc* %17)
  %19 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @PRIBIO, align 4
  %23 = call i32 @msleep(%struct.aac_command* %19, i32* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @aac_enqueue_ready(%struct.aac_command*) #1

declare dso_local i32 @aacraid_startio(%struct.aac_softc*) #1

declare dso_local i32 @msleep(%struct.aac_command*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
