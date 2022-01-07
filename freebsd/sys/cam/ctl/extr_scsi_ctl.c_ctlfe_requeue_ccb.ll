; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_requeue_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_requeue_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cam_periph = type { i32, i32, i64 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ctlfe_lun_softc = type { i32, i32 }
%struct.mtx = type { i32 }

@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@XPT_ACCEPT_TARGET_IO = common dso_local global i64 0, align 8
@periph_links = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*, i32)* @ctlfe_requeue_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctlfe_requeue_ccb(%struct.cam_periph* %0, %union.ccb* %1, i32 %2) #0 {
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctlfe_lun_softc*, align 8
  %8 = alloca %struct.mtx*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %17 = call %struct.mtx* @cam_periph_mtx(%struct.cam_periph* %16)
  store %struct.mtx* %17, %struct.mtx** %8, align 8
  %18 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %19 = load %union.ccb*, %union.ccb** %5, align 8
  %20 = call i32 @ctlfe_free_ccb(%struct.cam_periph* %18, %union.ccb* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.mtx*, %struct.mtx** %8, align 8
  %25 = call i32 @mtx_unlock(%struct.mtx* %24)
  br label %26

26:                                               ; preds = %23, %15
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %29 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ctlfe_lun_softc*
  store %struct.ctlfe_lun_softc* %31, %struct.ctlfe_lun_softc** %7, align 8
  %32 = load %union.ccb*, %union.ccb** %5, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XPT_ACCEPT_TARGET_IO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.ctlfe_lun_softc*, %struct.ctlfe_lun_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ctlfe_lun_softc, %struct.ctlfe_lun_softc* %39, i32 0, i32 1
  %41 = load %union.ccb*, %union.ccb** %5, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_4__*
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @periph_links, i32 0, i32 0), align 4
  %44 = call i32 @LIST_INSERT_HEAD(i32* %40, %struct.TYPE_4__* %42, i32 %43)
  br label %52

45:                                               ; preds = %27
  %46 = load %struct.ctlfe_lun_softc*, %struct.ctlfe_lun_softc** %7, align 8
  %47 = getelementptr inbounds %struct.ctlfe_lun_softc, %struct.ctlfe_lun_softc* %46, i32 0, i32 0
  %48 = load %union.ccb*, %union.ccb** %5, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_4__*
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @periph_links, i32 0, i32 0), align 4
  %51 = call i32 @LIST_INSERT_HEAD(i32* %47, %struct.TYPE_4__* %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %57 = call i32 @cam_periph_unlock(%struct.cam_periph* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %union.ccb*, %union.ccb** %5, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_4__*
  %61 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %62 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %65 = load %union.ccb*, %union.ccb** %5, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @xpt_setup_ccb_flags(%struct.TYPE_4__* %60, i32 %63, i32 %64, i32 %68)
  %70 = load %union.ccb*, %union.ccb** %5, align 8
  %71 = call i32 @xpt_action(%union.ccb* %70)
  br label %72

72:                                               ; preds = %58, %26
  ret void
}

declare dso_local %struct.mtx* @cam_periph_mtx(%struct.cam_periph*) #1

declare dso_local i32 @ctlfe_free_ccb(%struct.cam_periph*, %union.ccb*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @xpt_setup_ccb_flags(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
