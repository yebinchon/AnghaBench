; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ch_softc = type { i32, i32 }

@M_SCSICH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"chstart: couldn't malloc mode sense data\0A\00", align 1
@chdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@CH_Q_NO_DBD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SMS_PAGE_CTRL_CURRENT = common dso_local global i32 0, align 4
@CH_ELEMENT_ADDR_ASSIGN_PAGE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CH_TIMEOUT_MODE_SENSE = common dso_local global i32 0, align 4
@CH_CCB_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @chstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chstart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ch_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %9 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ch_softc*
  store %struct.ch_softc* %11, %struct.ch_softc** %5, align 8
  %12 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %64 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %2
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = call i32 @xpt_release_ccb(%union.ccb* %16)
  br label %64

18:                                               ; preds = %2
  store i32 12, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @M_SCSICH, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call i8* @malloc(i32 %19, i32 %20, i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %64

27:                                               ; preds = %18
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bzero(i8* %28, i32 %29)
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to i32*
  %33 = load i32, i32* @chdone, align 4
  %34 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %35 = load %struct.ch_softc*, %struct.ch_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CH_Q_NO_DBD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @FALSE, align 4
  br label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @TRUE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* @SMS_PAGE_CTRL_CURRENT, align 4
  %48 = load i32, i32* @CH_ELEMENT_ADDR_ASSIGN_PAGE, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SSD_FULL_SIZE, align 4
  %53 = load i32, i32* @CH_TIMEOUT_MODE_SENSE, align 4
  %54 = call i32 @scsi_mode_sense(i32* %32, i32 1, i32 %33, i32 %34, i32 %46, i32 %47, i32 %48, i32* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %union.ccb*, %union.ccb** %4, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @CH_CCB_PROBE, align 4
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %union.ccb*, %union.ccb** %4, align 8
  %63 = call i32 @xpt_action(%union.ccb* %62)
  br label %64

64:                                               ; preds = %2, %45, %25, %15
  ret void
}

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @scsi_mode_sense(i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
