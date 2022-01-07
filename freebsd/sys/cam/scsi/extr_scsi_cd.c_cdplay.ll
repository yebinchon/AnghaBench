; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.scsi_play_10 = type { i64, i64, i32 }
%struct.scsi_play_12 = type { i64, i64, i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@PLAY_10 = common dso_local global i32 0, align 4
@PLAY_12 = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i32, i32)* @cdplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdplay(%struct.cam_periph* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_play_10*, align 8
  %12 = alloca %struct.scsi_play_12*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %14 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %15 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %13, i32 %14)
  store %union.ccb* %15, %union.ccb** %8, align 8
  %16 = load %union.ccb*, %union.ccb** %8, align 8
  %17 = bitcast %union.ccb* %16 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %17, %struct.ccb_scsiio** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_play_10*
  store %struct.scsi_play_10* %25, %struct.scsi_play_10** %11, align 8
  %26 = load %struct.scsi_play_10*, %struct.scsi_play_10** %11, align 8
  %27 = bitcast %struct.scsi_play_10* %26 to %struct.scsi_play_12*
  %28 = call i32 @bzero(%struct.scsi_play_12* %27, i32 24)
  %29 = load i32, i32* @PLAY_10, align 4
  %30 = load %struct.scsi_play_10*, %struct.scsi_play_10** %11, align 8
  %31 = getelementptr inbounds %struct.scsi_play_10, %struct.scsi_play_10* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.scsi_play_10*, %struct.scsi_play_10** %11, align 8
  %34 = getelementptr inbounds %struct.scsi_play_10, %struct.scsi_play_10* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @scsi_ulto4b(i32 %32, i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.scsi_play_10*, %struct.scsi_play_10** %11, align 8
  %40 = getelementptr inbounds %struct.scsi_play_10, %struct.scsi_play_10* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @scsi_ulto2b(i32 %38, i32* %42)
  store i32 24, i32* %10, align 4
  br label %66

44:                                               ; preds = %3
  %45 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %46 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast i32* %47 to %struct.scsi_play_12*
  store %struct.scsi_play_12* %48, %struct.scsi_play_12** %12, align 8
  %49 = load %struct.scsi_play_12*, %struct.scsi_play_12** %12, align 8
  %50 = call i32 @bzero(%struct.scsi_play_12* %49, i32 24)
  %51 = load i32, i32* @PLAY_12, align 4
  %52 = load %struct.scsi_play_12*, %struct.scsi_play_12** %12, align 8
  %53 = getelementptr inbounds %struct.scsi_play_12, %struct.scsi_play_12* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.scsi_play_12*, %struct.scsi_play_12** %12, align 8
  %56 = getelementptr inbounds %struct.scsi_play_12, %struct.scsi_play_12* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = call i32 @scsi_ulto4b(i32 %54, i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.scsi_play_12*, %struct.scsi_play_12** %12, align 8
  %62 = getelementptr inbounds %struct.scsi_play_12, %struct.scsi_play_12* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @scsi_ulto4b(i32 %60, i32* %64)
  store i32 24, i32* %10, align 4
  br label %66

66:                                               ; preds = %44, %21
  %67 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %68 = load i32, i32* @cd_retry_count, align 4
  %69 = load i32, i32* @CAM_DIR_NONE, align 4
  %70 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %71 = load i32, i32* @SSD_FULL_SIZE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %67, i32 %68, i32* null, i32 %69, i32 %70, i32* null, i32 0, i32 %71, i32 %72, i32 50000)
  %74 = load %union.ccb*, %union.ccb** %8, align 8
  %75 = load i32, i32* @cderror, align 4
  %76 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %77 = load i32, i32* @SF_RETRY_UA, align 4
  %78 = call i32 @cdrunccb(%union.ccb* %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load %union.ccb*, %union.ccb** %8, align 8
  %80 = call i32 @xpt_release_ccb(%union.ccb* %79)
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @bzero(%struct.scsi_play_12*, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
