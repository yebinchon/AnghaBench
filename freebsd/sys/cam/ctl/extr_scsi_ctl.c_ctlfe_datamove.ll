; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_datamove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_datamove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cam_periph = type { i64 }
%struct.ctlfe_lun_softc = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CTL_IO_SCSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unexpected io_type (%d) in ctlfe_datamove\00", align 1
@CTL_FLAG_DMA_QUEUED = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_FLAG_STATUS_QUEUED = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctlfe_datamove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctlfe_datamove(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.ctlfe_lun_softc*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = bitcast %union.ctl_io* %6 to %struct.TYPE_6__*
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CTL_IO_SCSI, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_6__*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %12, i8* %17)
  %19 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %20 = bitcast %union.ctl_io* %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %23 = call %union.ccb* @PRIV_CCB(%union.ctl_io* %22)
  store %union.ccb* %23, %union.ccb** %3, align 8
  %24 = load %union.ccb*, %union.ccb** %3, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cam_periph* @xpt_path_periph(i32 %27)
  store %struct.cam_periph* %28, %struct.cam_periph** %4, align 8
  %29 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %30 = call i32 @cam_periph_lock(%struct.cam_periph* %29)
  %31 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %32 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.ctlfe_lun_softc*
  store %struct.ctlfe_lun_softc* %34, %struct.ctlfe_lun_softc** %5, align 8
  %35 = load i32, i32* @CTL_FLAG_DMA_QUEUED, align 4
  %36 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %37 = bitcast %union.ctl_io* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %42 = bitcast %union.ctl_io* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CTL_STATUS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CTL_STATUS_NONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %1
  %50 = load i32, i32* @CTL_FLAG_STATUS_QUEUED, align 4
  %51 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %1
  %57 = load %struct.ctlfe_lun_softc*, %struct.ctlfe_lun_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ctlfe_lun_softc, %struct.ctlfe_lun_softc* %57, i32 0, i32 0
  %59 = load %union.ccb*, %union.ccb** %3, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_8__*
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @periph_links, i32 0, i32 0), align 4
  %62 = call i32 @STAILQ_INSERT_TAIL(i32* %58, %struct.TYPE_8__* %60, i32 %61)
  %63 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %64 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %65 = call i32 @xpt_schedule(%struct.cam_periph* %63, i32 %64)
  %66 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %67 = call i32 @cam_periph_unlock(%struct.cam_periph* %66)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %union.ccb* @PRIV_CCB(%union.ctl_io*) #1

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
