; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targgetccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targgetccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.targ_softc = type { i32 }

@M_TARG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getccb %p\0A\00", align 1
@targdone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.ccb* (%struct.targ_softc*, i32, i32)* @targgetccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.ccb* @targgetccb(%struct.targ_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.targ_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  store %struct.targ_softc* %0, %struct.targ_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @targccblen(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @M_TARG, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call %union.ccb* @malloc(i32 %12, i32 %13, i32 %14)
  store %union.ccb* %15, %union.ccb** %8, align 8
  %16 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %17 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %20 = load %union.ccb*, %union.ccb** %8, align 8
  %21 = bitcast %union.ccb* %20 to i8*
  %22 = call i32 @CAM_DEBUG(i32 %18, i32 %19, i8* %21)
  %23 = load %union.ccb*, %union.ccb** %8, align 8
  %24 = icmp eq %union.ccb* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load %union.ccb*, %union.ccb** %8, align 8
  store %union.ccb* %26, %union.ccb** %4, align 8
  br label %59

27:                                               ; preds = %3
  %28 = load %union.ccb*, %union.ccb** %8, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_2__*
  %30 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %31 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %29, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %union.ccb*, %union.ccb** %8, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @targdone, align 4
  %40 = load %union.ccb*, %union.ccb** %8, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %44 = call i32* @targgetdescr(%struct.targ_softc* %43)
  %45 = load %union.ccb*, %union.ccb** %8, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %union.ccb*, %union.ccb** %8, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %27
  %54 = load %union.ccb*, %union.ccb** %8, align 8
  %55 = load i32, i32* @M_TARG, align 4
  %56 = call i32 @free(%union.ccb* %54, i32 %55)
  store %union.ccb* null, %union.ccb** %8, align 8
  br label %57

57:                                               ; preds = %53, %27
  %58 = load %union.ccb*, %union.ccb** %8, align 8
  store %union.ccb* %58, %union.ccb** %4, align 8
  br label %59

59:                                               ; preds = %57, %25
  %60 = load %union.ccb*, %union.ccb** %4, align 8
  ret %union.ccb* %60
}

declare dso_local i32 @targccblen(i32) #1

declare dso_local %union.ccb* @malloc(i32, i32, i32) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32* @targgetdescr(%struct.targ_softc*) #1

declare dso_local i32 @free(%union.ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
