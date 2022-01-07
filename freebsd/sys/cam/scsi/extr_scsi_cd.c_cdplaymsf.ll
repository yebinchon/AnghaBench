; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdplaymsf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdplaymsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.scsi_play_msf = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@PLAY_MSF = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*, i8*, i8*, i8*, i8*, i8*)* @cdplaymsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdplaymsf(%struct.cam_periph* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.cam_periph*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.scsi_play_msf*, align 8
  %16 = alloca %struct.ccb_scsiio*, align 8
  %17 = alloca %union.ccb*, align 8
  %18 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %20 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %21 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %19, i32 %20)
  store %union.ccb* %21, %union.ccb** %17, align 8
  %22 = load %union.ccb*, %union.ccb** %17, align 8
  %23 = bitcast %union.ccb* %22 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %23, %struct.ccb_scsiio** %16, align 8
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %25 = load i32, i32* @cd_retry_count, align 4
  %26 = load i32, i32* @CAM_DIR_NONE, align 4
  %27 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %28 = load i32, i32* @SSD_FULL_SIZE, align 4
  %29 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %24, i32 %25, i32* null, i32 %26, i32 %27, i32* null, i32 0, i32 %28, i32 56, i32 50000)
  %30 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %31 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.scsi_play_msf*
  store %struct.scsi_play_msf* %33, %struct.scsi_play_msf** %15, align 8
  %34 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %35 = call i32 @bzero(%struct.scsi_play_msf* %34, i32 56)
  %36 = load i32, i32* @PLAY_MSF, align 4
  %37 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %38 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %41 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %44 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %47 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %50 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %53 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.scsi_play_msf*, %struct.scsi_play_msf** %15, align 8
  %56 = getelementptr inbounds %struct.scsi_play_msf, %struct.scsi_play_msf* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %union.ccb*, %union.ccb** %17, align 8
  %58 = load i32, i32* @cderror, align 4
  %59 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %60 = load i32, i32* @SF_RETRY_UA, align 4
  %61 = call i32 @cdrunccb(%union.ccb* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = load %union.ccb*, %union.ccb** %17, align 8
  %63 = call i32 @xpt_release_ccb(%union.ccb* %62)
  %64 = load i32, i32* %18, align 4
  ret i32 %64
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_play_msf*, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
