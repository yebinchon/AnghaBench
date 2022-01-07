; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_event = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.aac_cam* }
%struct.aac_cam = type { i32 }

@M_AACRAIDCAM = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unknown event %d in aac_cam\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, %struct.aac_event*, i8*)* @aac_cam_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_cam_event(%struct.aac_softc* %0, %struct.aac_event* %1, i8* %2) #0 {
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %struct.aac_cam*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store %struct.aac_event* %1, %struct.aac_event** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.aac_event*, %struct.aac_event** %5, align 8
  %10 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %36 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %union.ccb*
  store %union.ccb* %14, %union.ccb** %7, align 8
  %15 = load %union.ccb*, %union.ccb** %7, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.aac_cam*, %struct.aac_cam** %21, align 8
  store %struct.aac_cam* %22, %struct.aac_cam** %8, align 8
  %23 = load %struct.aac_event*, %struct.aac_event** %5, align 8
  %24 = load i32, i32* @M_AACRAIDCAM, align 4
  %25 = call i32 @free(%struct.aac_event* %23, i32 %24)
  %26 = load %struct.aac_cam*, %struct.aac_cam** %8, align 8
  %27 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xpt_release_simq(i32 %28, i32 1)
  %30 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %31 = load %union.ccb*, %union.ccb** %7, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %union.ccb*, %union.ccb** %7, align 8
  %35 = call i32 @xpt_done(%union.ccb* %34)
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.aac_event*, %struct.aac_event** %5, align 8
  %41 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %36, %12
  ret void
}

declare dso_local i32 @free(%struct.aac_event*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
