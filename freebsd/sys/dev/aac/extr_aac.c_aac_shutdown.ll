; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_fib = type { i64* }
%struct.aac_close_command = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_STATE_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"shutting down controller...\00", align 1
@VM_CloseAll = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FAILED.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@AAC_FIBSTATE_SHUTDOWN = common dso_local global i32 0, align 4
@FsaHostShutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_fib*, align 8
  %5 = alloca %struct.aac_close_command*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.aac_softc* @device_get_softc(i32 %6)
  store %struct.aac_softc* %7, %struct.aac_softc** %3, align 8
  %8 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %9 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %10 = call i32 @fwprintf(%struct.aac_softc* %8, i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @AAC_STATE_SUSPEND, align 4
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %17 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %24 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %23, %struct.aac_fib** %4)
  %25 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %26 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = bitcast i64* %28 to %struct.aac_close_command*
  store %struct.aac_close_command* %29, %struct.aac_close_command** %5, align 8
  %30 = load %struct.aac_close_command*, %struct.aac_close_command** %5, align 8
  %31 = call i32 @bzero(%struct.aac_close_command* %30, i32 8)
  %32 = load i32, i32* @VM_CloseAll, align 4
  %33 = load %struct.aac_close_command*, %struct.aac_close_command** %5, align 8
  %34 = getelementptr inbounds %struct.aac_close_command, %struct.aac_close_command* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.aac_close_command*, %struct.aac_close_command** %5, align 8
  %36 = getelementptr inbounds %struct.aac_close_command, %struct.aac_close_command* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = load i32, i32* @ContainerCommand, align 4
  %39 = load %struct.aac_fib*, %struct.aac_fib** %4, align 8
  %40 = call i64 @aac_sync_fib(%struct.aac_softc* %37, i32 %38, i32 0, %struct.aac_fib* %39, i32 8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %46

44:                                               ; preds = %1
  %45 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = call i32 @AAC_MASK_INTERRUPTS(%struct.aac_softc* %47)
  %49 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %50 = call i32 @aac_release_sync_fib(%struct.aac_softc* %49)
  %51 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  ret i32 0
}

declare dso_local %struct.aac_softc* @device_get_softc(i32) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i32 @bzero(%struct.aac_close_command*, i32) #1

declare dso_local i64 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @AAC_MASK_INTERRUPTS(%struct.aac_softc*) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
