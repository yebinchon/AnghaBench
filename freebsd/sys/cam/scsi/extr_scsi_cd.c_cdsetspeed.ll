; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsetspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsetspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.scsi_set_speed = type { i32, i32, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@SET_CD_SPEED = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i32, i32)* @cdsetspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdsetspeed(%struct.cam_periph* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_set_speed*, align 8
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %12 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %13 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %11, i32 %12)
  store %union.ccb* %13, %union.ccb** %9, align 8
  %14 = load %union.ccb*, %union.ccb** %9, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %15, %struct.ccb_scsiio** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 177
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 177
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 177
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %25, 177
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %29 = load i32, i32* @cd_retry_count, align 4
  %30 = load i32, i32* @CAM_DIR_NONE, align 4
  %31 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %32 = load i32, i32* @SSD_FULL_SIZE, align 4
  %33 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %28, i32 %29, i32* null, i32 %30, i32 %31, i32* null, i32 0, i32 %32, i32 12, i32 50000)
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to %struct.scsi_set_speed*
  store %struct.scsi_set_speed* %37, %struct.scsi_set_speed** %7, align 8
  %38 = load %struct.scsi_set_speed*, %struct.scsi_set_speed** %7, align 8
  %39 = call i32 @bzero(%struct.scsi_set_speed* %38, i32 12)
  %40 = load i32, i32* @SET_CD_SPEED, align 4
  %41 = load %struct.scsi_set_speed*, %struct.scsi_set_speed** %7, align 8
  %42 = getelementptr inbounds %struct.scsi_set_speed, %struct.scsi_set_speed* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.scsi_set_speed*, %struct.scsi_set_speed** %7, align 8
  %45 = getelementptr inbounds %struct.scsi_set_speed, %struct.scsi_set_speed* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scsi_ulto2b(i32 %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.scsi_set_speed*, %struct.scsi_set_speed** %7, align 8
  %50 = getelementptr inbounds %struct.scsi_set_speed, %struct.scsi_set_speed* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @scsi_ulto2b(i32 %48, i32 %51)
  %53 = load %union.ccb*, %union.ccb** %9, align 8
  %54 = load i32, i32* @cderror, align 4
  %55 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %56 = load i32, i32* @SF_RETRY_UA, align 4
  %57 = call i32 @cdrunccb(%union.ccb* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %union.ccb*, %union.ccb** %9, align 8
  %59 = call i32 @xpt_release_ccb(%union.ccb* %58)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_set_speed*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
