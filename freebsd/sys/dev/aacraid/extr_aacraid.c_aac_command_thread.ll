; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_command_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_command_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_AIFFLAGS_RUNNING = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_EXIT = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_PENDING = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"aacraid_aifthd\00", align 1
@AAC_PERIODIC_INTERVAL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AAC_AIFFLAGS_ALLOCFIBS = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_command_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_command_thread(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %4 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %5 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %6 = call i32 @fwprintf(%struct.aac_softc* %4, i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %8 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %7, i32 0, i32 2
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load i32, i32* @AAC_AIFFLAGS_RUNNING, align 4
  %11 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %75, %1
  %14 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AAC_AIFFLAGS_EXIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  %21 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %22 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AAC_AIFFLAGS_PENDING, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %32 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %31, i32 0, i32 2
  %33 = load i32, i32* @PRIBIO, align 4
  %34 = load i32, i32* @AAC_PERIODIC_INTERVAL, align 4
  %35 = load i32, i32* @hz, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @msleep(i32 %30, i32* %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %20
  %39 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AAC_AIFFLAGS_ALLOCFIBS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %47 = call i32 @aac_alloc_commands(%struct.aac_softc* %46)
  %48 = load i32, i32* @AAC_AIFFLAGS_ALLOCFIBS, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %51 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %55 = call i32 @aacraid_startio(%struct.aac_softc* %54)
  br label %56

56:                                               ; preds = %45, %38
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @EWOULDBLOCK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %62 = call i32 @aac_timeout(%struct.aac_softc* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %65 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %74 = call i32 @aac_print_printf(%struct.aac_softc* %73)
  br label %75

75:                                               ; preds = %72, %63
  br label %13

76:                                               ; preds = %13
  %77 = load i32, i32* @AAC_AIFFLAGS_RUNNING, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %80 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %84 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %83, i32 0, i32 2
  %85 = call i32 @mtx_unlock(i32* %84)
  %86 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %87 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wakeup(i32 %88)
  %90 = call i32 @aac_kthread_exit(i32 0)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @aac_alloc_commands(%struct.aac_softc*) #1

declare dso_local i32 @aacraid_startio(%struct.aac_softc*) #1

declare dso_local i32 @aac_timeout(%struct.aac_softc*) #1

declare dso_local i32 @aac_print_printf(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @aac_kthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
