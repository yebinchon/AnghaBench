; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pass_io_req*, i32 }
%struct.pass_io_req = type { i32, %union.ccb*, i32 }
%struct.pass_softc = type { i32, i32, i32, i32 }

@links = common dso_local global i32 0, align 4
@PASS_CCB_QUEUED_IO = common dso_local global i32 0, align 4
@passdone = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @passstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passstart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.pass_softc*, align 8
  %6 = alloca %struct.pass_io_req*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.pass_softc*
  store %struct.pass_softc* %10, %struct.pass_softc** %5, align 8
  %11 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %12 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %73 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %16 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %15, i32 0, i32 1
  %17 = call %struct.pass_io_req* @TAILQ_FIRST(i32* %16)
  store %struct.pass_io_req* %17, %struct.pass_io_req** %6, align 8
  %18 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %19 = icmp eq %struct.pass_io_req* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = call i32 @xpt_release_ccb(%union.ccb* %21)
  br label %74

23:                                               ; preds = %14
  %24 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %25 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %24, i32 0, i32 1
  %26 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %27 = load i32, i32* @links, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.pass_io_req* %26, i32 %27)
  %29 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %30 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %29, i32 0, i32 3
  %31 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %32 = load i32, i32* @links, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.pass_io_req* %31, i32 %32)
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %36 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %35, i32 0, i32 2
  %37 = call i32 @xpt_merge_ccb(%union.ccb* %34, i32* %36)
  %38 = load i32, i32* @PASS_CCB_QUEUED_IO, align 4
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store %struct.pass_io_req* %42, %struct.pass_io_req** %45, align 8
  %46 = load i32, i32* @passdone, align 4
  %47 = load %union.ccb*, %union.ccb** %4, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %52 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %51, i32 0, i32 1
  store %union.ccb* %50, %union.ccb** %52, align 8
  %53 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %54 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %53, i32 0, i32 0
  %55 = call i32 @binuptime(i32* %54)
  %56 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %57 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pass_io_req*, %struct.pass_io_req** %6, align 8
  %60 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %59, i32 0, i32 0
  %61 = call i32 @devstat_start_transaction(i32 %58, i32* %60)
  %62 = load %union.ccb*, %union.ccb** %4, align 8
  %63 = call i32 @xpt_action(%union.ccb* %62)
  %64 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %65 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %64, i32 0, i32 1
  %66 = call i32 @TAILQ_EMPTY(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %23
  %69 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %70 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %71 = call i32 @xpt_schedule(%struct.cam_periph* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %23
  br label %74

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %73, %72, %20
  ret void
}

declare dso_local %struct.pass_io_req* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pass_io_req*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pass_io_req*, i32) #1

declare dso_local i32 @xpt_merge_ccb(%union.ccb*, i32*) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @devstat_start_transaction(i32, i32*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
