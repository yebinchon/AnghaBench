; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdplaytracks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdplaytracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.scsi_play_track = type { i8*, i8*, i8*, i8*, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@PLAY_TRACK = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*, i8*, i8*, i8*)* @cdplaytracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdplaytracks(%struct.cam_periph* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.cam_periph*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.scsi_play_track*, align 8
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca %union.ccb*, align 8
  %14 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.cam_periph*, %struct.cam_periph** %6, align 8
  %16 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %17 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %15, i32 %16)
  store %union.ccb* %17, %union.ccb** %13, align 8
  %18 = load %union.ccb*, %union.ccb** %13, align 8
  %19 = bitcast %union.ccb* %18 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %19, %struct.ccb_scsiio** %12, align 8
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %21 = load i32, i32* @cd_retry_count, align 4
  %22 = load i32, i32* @CAM_DIR_NONE, align 4
  %23 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %24 = load i32, i32* @SSD_FULL_SIZE, align 4
  %25 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %20, i32 %21, i32* null, i32 %22, i32 %23, i32* null, i32 0, i32 %24, i32 40, i32 50000)
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.scsi_play_track*
  store %struct.scsi_play_track* %29, %struct.scsi_play_track** %11, align 8
  %30 = load %struct.scsi_play_track*, %struct.scsi_play_track** %11, align 8
  %31 = call i32 @bzero(%struct.scsi_play_track* %30, i32 40)
  %32 = load i32, i32* @PLAY_TRACK, align 4
  %33 = load %struct.scsi_play_track*, %struct.scsi_play_track** %11, align 8
  %34 = getelementptr inbounds %struct.scsi_play_track, %struct.scsi_play_track* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.scsi_play_track*, %struct.scsi_play_track** %11, align 8
  %37 = getelementptr inbounds %struct.scsi_play_track, %struct.scsi_play_track* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.scsi_play_track*, %struct.scsi_play_track** %11, align 8
  %40 = getelementptr inbounds %struct.scsi_play_track, %struct.scsi_play_track* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.scsi_play_track*, %struct.scsi_play_track** %11, align 8
  %43 = getelementptr inbounds %struct.scsi_play_track, %struct.scsi_play_track* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.scsi_play_track*, %struct.scsi_play_track** %11, align 8
  %46 = getelementptr inbounds %struct.scsi_play_track, %struct.scsi_play_track* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %union.ccb*, %union.ccb** %13, align 8
  %48 = load i32, i32* @cderror, align 4
  %49 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %50 = load i32, i32* @SF_RETRY_UA, align 4
  %51 = call i32 @cdrunccb(%union.ccb* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %union.ccb*, %union.ccb** %13, align 8
  %53 = call i32 @xpt_release_ccb(%union.ccb* %52)
  %54 = load i32, i32* %14, align 4
  ret i32 %54
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_play_track*, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
