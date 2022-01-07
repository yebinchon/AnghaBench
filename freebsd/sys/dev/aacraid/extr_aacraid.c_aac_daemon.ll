; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.aac_command = type { i32, i64, i32, %struct.aac_fib* }
%struct.aac_fib = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@time_uptime = common dso_local global i32 0, align 4
@AAC_CMD_WAIT = common dso_local global i32 0, align 4
@AAC_FIBSTATE_HOSTOWNED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_INITIALISED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_EMPTY = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FROMHOST = common dso_local global i32 0, align 4
@AAC_FIBSTATE_REXPECTED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_NORM = common dso_local global i32 0, align 4
@AAC_FIBSTATE_ASYNC = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FAST_RESPONSE = common dso_local global i32 0, align 4
@SendHostTime = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aac_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_daemon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.aac_command*, align 8
  %6 = alloca %struct.aac_fib*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.aac_softc*
  store %struct.aac_softc* %8, %struct.aac_softc** %3, align 8
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %11 = call i32 @fwprintf(%struct.aac_softc* %9, i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = call i32 @getmicrotime(%struct.timeval* %4)
  %16 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %17 = call i32 @aacraid_alloc_command(%struct.aac_softc* %16, %struct.aac_command** %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %1
  %20 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %21 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %20, i32 0, i32 3
  %22 = load %struct.aac_fib*, %struct.aac_fib** %21, align 8
  store %struct.aac_fib* %22, %struct.aac_fib** %6, align 8
  %23 = load i32, i32* @time_uptime, align 4
  %24 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %25 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %27 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @AAC_CMD_WAIT, align 4
  %29 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %30 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %34 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = load i32, i32* @AAC_FIBSTATE_HOSTOWNED, align 4
  %37 = load i32, i32* @AAC_FIBSTATE_INITIALISED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @AAC_FIBSTATE_EMPTY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AAC_FIBSTATE_FROMHOST, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AAC_FIBSTATE_REXPECTED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AAC_FIBSTATE_NORM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AAC_FIBSTATE_ASYNC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AAC_FIBSTATE_FAST_RESPONSE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %52 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @SendHostTime, align 4
  %55 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %56 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %61 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32 %59, i32* %63, align 4
  %64 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %65 = call i32 @aacraid_map_command_sg(%struct.aac_command* %64, i32* null, i32 0, i32 0)
  %66 = load %struct.aac_command*, %struct.aac_command** %5, align 8
  %67 = call i32 @aacraid_release_command(%struct.aac_command* %66)
  br label %68

68:                                               ; preds = %19, %1
  %69 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %70 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %69, i32 0, i32 1
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 1800, i32* %72, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %75 = bitcast %struct.aac_softc* %74 to i8*
  %76 = call i32 @tvtohz(%struct.timeval* %4)
  %77 = call i32 @timeout(void (i8*)* @aac_daemon, i8* %75, i32 %76)
  %78 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %79 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @aacraid_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @aacraid_map_command_sg(%struct.aac_command*, i32*, i32, i32) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @timeout(void (i8*)*, i8*, i32) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
