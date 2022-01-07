; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreadtoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreadtoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.ccb_scsiio = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@CD_MSF_FORMAT = common dso_local global i64 0, align 8
@CD_MSF = common dso_local global i32 0, align 4
@SRTOC_FORMAT_TOC = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i64, i64, i32*, i64, i64)* @cdreadtoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdreadtoc(%struct.cam_periph* %0, i64 %1, i64 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ccb_scsiio*, align 8
  %15 = alloca %union.ccb*, align 8
  %16 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64, i64* %11, align 8
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %19 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %20 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %18, i32 %19)
  store %union.ccb* %20, %union.ccb** %15, align 8
  %21 = load %union.ccb*, %union.ccb** %15, align 8
  %22 = bitcast %union.ccb* %21 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %22, %struct.ccb_scsiio** %14, align 8
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %24 = load i32, i32* @cd_retry_count, align 4
  %25 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @CD_MSF_FORMAT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @CD_MSF, align 4
  br label %32

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load i32, i32* @SRTOC_FORMAT_TOC, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @SSD_FULL_SIZE, align 4
  %39 = call i32 @scsi_read_toc(%struct.ccb_scsiio* %23, i32 %24, i32* null, i32 %25, i32 %33, i32 %34, i64 %35, i32* %36, i64 %37, i32 %38, i32 50000)
  %40 = load %union.ccb*, %union.ccb** %15, align 8
  %41 = load i32, i32* @cderror, align 4
  %42 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %43 = load i64, i64* @SF_RETRY_UA, align 8
  %44 = load i64, i64* %12, align 8
  %45 = or i64 %43, %44
  %46 = call i32 @cdrunccb(%union.ccb* %40, i32 %41, i32 %42, i64 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %union.ccb*, %union.ccb** %15, align 8
  %48 = call i32 @xpt_release_ccb(%union.ccb* %47)
  %49 = load i32, i32* %16, align 4
  ret i32 %49
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_read_toc(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32, i64, i32*, i64, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i64) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
