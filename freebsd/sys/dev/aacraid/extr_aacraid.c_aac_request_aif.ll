; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_request_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_request_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_command = type { %struct.aac_fib* }
%struct.aac_fib = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.aac_aif_command = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_FIBSTATE_HOSTOWNED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_INITIALISED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_EMPTY = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FROMHOST = common dso_local global i32 0, align 4
@AAC_FIBSTATE_REXPECTED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_NORM = common dso_local global i32 0, align 4
@AAC_FIBSTATE_ASYNC = common dso_local global i32 0, align 4
@AifRequest = common dso_local global i32 0, align 4
@AifReqEvent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_request_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_request_aif(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_command*, align 8
  %4 = alloca %struct.aac_fib*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %5 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %6 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %7 = call i32 @fwprintf(%struct.aac_softc* %5, i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %9 = call i64 @aacraid_alloc_command(%struct.aac_softc* %8, %struct.aac_command** %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %18 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %17, i32 0, i32 0
  %19 = load %struct.aac_fib*, %struct.aac_fib** %18, align 8
  store %struct.aac_fib* %19, %struct.aac_fib** %4, align 8
  %20 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %21 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 24, i32* %22, align 8
  %23 = load i32, i32* @AAC_FIBSTATE_HOSTOWNED, align 4
  %24 = load i32, i32* @AAC_FIBSTATE_INITIALISED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AAC_FIBSTATE_EMPTY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AAC_FIBSTATE_FROMHOST, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AAC_FIBSTATE_REXPECTED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AAC_FIBSTATE_NORM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AAC_FIBSTATE_ASYNC, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %37 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %40 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 8388608, i32* %41, align 8
  %42 = load i32, i32* @AifRequest, align 4
  %43 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %44 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @AifReqEvent, align 4
  %47 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %48 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.aac_aif_command*
  %51 = getelementptr inbounds %struct.aac_aif_command, %struct.aac_aif_command* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.aac_command*, %struct.aac_command** %3, align 8
  %53 = call i32 @aacraid_map_command_sg(%struct.aac_command* %52, i32* null, i32 0, i32 0)
  br label %54

54:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i64 @aacraid_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @aacraid_map_command_sg(%struct.aac_command*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
