; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cam_periph = type { i64, i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.targ_softc = type { i32, i32, i32, i32 }

@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"targdone %p\0A\00", align 1
@periph_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@TARG_STATE_LUN_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"targdone: impossible xpt opcode %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @targdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targdone(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.targ_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to i8*
  %13 = call i32 @CAM_DEBUG(i32 %9, i32 %10, i8* %12)
  %14 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.targ_softc*
  store %struct.targ_softc* %17, %struct.targ_softc** %5, align 8
  %18 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %19 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %18, i32 0, i32 3
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_5__*
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %23 = call i32 @TAILQ_REMOVE(i32* %19, %struct.TYPE_5__* %21, i32 %22)
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAM_STATUS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %31 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = call i32 @targfreeccb(%struct.targ_softc* %37, %union.ccb* %38)
  br label %77

40:                                               ; preds = %2
  %41 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %42 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %41, i32 0, i32 3
  %43 = call i64 @TAILQ_EMPTY(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %47 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %46, i32 0, i32 3
  %48 = call i32 @wakeup(i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %71 [
    i32 128, label %54
    i32 129, label %54
    i32 131, label %54
    i32 130, label %54
  ]

54:                                               ; preds = %49, %49, %49, %49
  %55 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %56 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %55, i32 0, i32 2
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_5__*
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %60 = call i32 @TAILQ_INSERT_TAIL(i32* %56, %struct.TYPE_5__* %58, i32 %59)
  %61 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %62 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cam_periph_unlock(i32 %63)
  %65 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %66 = call i32 @notify_user(%struct.targ_softc* %65)
  %67 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %68 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cam_periph_lock(i32 %69)
  br label %77

71:                                               ; preds = %49
  %72 = load %union.ccb*, %union.ccb** %4, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %36, %71, %54
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @targfreeccb(%struct.targ_softc*, %union.ccb*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cam_periph_unlock(i32) #1

declare dso_local i32 @notify_user(%struct.targ_softc*) #1

declare dso_local i32 @cam_periph_lock(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
