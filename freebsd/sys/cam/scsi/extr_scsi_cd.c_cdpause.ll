; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdpause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdpause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.scsi_pause = type { i32, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i32)* @cdpause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdpause(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_pause*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %10 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %11 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %9, i32 %10)
  store %union.ccb* %11, %union.ccb** %7, align 8
  %12 = load %union.ccb*, %union.ccb** %7, align 8
  %13 = bitcast %union.ccb* %12 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %13, %struct.ccb_scsiio** %6, align 8
  %14 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %15 = load i32, i32* @cd_retry_count, align 4
  %16 = load i32, i32* @CAM_DIR_NONE, align 4
  %17 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %18 = load i32, i32* @SSD_FULL_SIZE, align 4
  %19 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %14, i32 %15, i32* null, i32 %16, i32 %17, i32* null, i32 0, i32 %18, i32 8, i32 50000)
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %21 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.scsi_pause*
  store %struct.scsi_pause* %23, %struct.scsi_pause** %5, align 8
  %24 = load %struct.scsi_pause*, %struct.scsi_pause** %5, align 8
  %25 = call i32 @bzero(%struct.scsi_pause* %24, i32 8)
  %26 = load i32, i32* @PAUSE, align 4
  %27 = load %struct.scsi_pause*, %struct.scsi_pause** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_pause, %struct.scsi_pause* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.scsi_pause*, %struct.scsi_pause** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_pause, %struct.scsi_pause* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %union.ccb*, %union.ccb** %7, align 8
  %33 = load i32, i32* @cderror, align 4
  %34 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %35 = load i32, i32* @SF_RETRY_UA, align 4
  %36 = call i32 @cdrunccb(%union.ccb* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %union.ccb*, %union.ccb** %7, align 8
  %38 = call i32 @xpt_release_ccb(%union.ccb* %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_pause*, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
