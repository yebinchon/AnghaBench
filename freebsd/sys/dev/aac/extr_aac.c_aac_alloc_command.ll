; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_alloc_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_alloc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i64, i64, i32, i32, i32 }
%struct.aac_command = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_AIFFLAGS_ALLOCFIBS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_alloc_command(%struct.aac_softc* %0, %struct.aac_command** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_command**, align 8
  %6 = alloca %struct.aac_command*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store %struct.aac_command** %1, %struct.aac_command*** %5, align 8
  %7 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %11 = call %struct.aac_command* @aac_dequeue_free(%struct.aac_softc* %10)
  store %struct.aac_command* %11, %struct.aac_command** %6, align 8
  %12 = icmp eq %struct.aac_command* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 3
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load i32, i32* @AAC_AIFFLAGS_ALLOCFIBS, align 4
  %26 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %27 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 3
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wakeup(i32 %35)
  br label %37

37:                                               ; preds = %21, %13
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %41 = load %struct.aac_command**, %struct.aac_command*** %5, align 8
  store %struct.aac_command* %40, %struct.aac_command** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_command* @aac_dequeue_free(%struct.aac_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
