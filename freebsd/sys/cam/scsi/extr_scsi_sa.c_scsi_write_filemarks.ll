; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_write_filemarks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_write_filemarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_write_filemarks = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@WRITE_FILEMARKS = common dso_local global i32 0, align 4
@SWFMRK_IMMED = common dso_local global i32 0, align 4
@SWFMRK_WSMK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_write_filemarks(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_write_filemarks*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %21 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.scsi_write_filemarks*
  store %struct.scsi_write_filemarks* %23, %struct.scsi_write_filemarks** %19, align 8
  %24 = load %struct.scsi_write_filemarks*, %struct.scsi_write_filemarks** %19, align 8
  %25 = call i32 @bzero(%struct.scsi_write_filemarks* %24, i32 12)
  %26 = load i32, i32* @WRITE_FILEMARKS, align 4
  %27 = load %struct.scsi_write_filemarks*, %struct.scsi_write_filemarks** %19, align 8
  %28 = getelementptr inbounds %struct.scsi_write_filemarks, %struct.scsi_write_filemarks* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %9
  %32 = load i32, i32* @SWFMRK_IMMED, align 4
  %33 = load %struct.scsi_write_filemarks*, %struct.scsi_write_filemarks** %19, align 8
  %34 = getelementptr inbounds %struct.scsi_write_filemarks, %struct.scsi_write_filemarks* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %9
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @SWFMRK_WSMK, align 4
  %42 = load %struct.scsi_write_filemarks*, %struct.scsi_write_filemarks** %19, align 8
  %43 = getelementptr inbounds %struct.scsi_write_filemarks, %struct.scsi_write_filemarks* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.scsi_write_filemarks*, %struct.scsi_write_filemarks** %19, align 8
  %49 = getelementptr inbounds %struct.scsi_write_filemarks, %struct.scsi_write_filemarks* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @scsi_ulto3b(i32 %47, i32 %50)
  %52 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %55 = bitcast void (%struct.cam_periph*, %union.ccb*)* %54 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %56 = load i32, i32* @CAM_DIR_NONE, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %52, i32 %53, void (%struct.cam_periph.0*, %union.ccb.1*)* %55, i32 %56, i32 %57, i32* null, i32 0, i32 %58, i32 12, i32 %59)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_write_filemarks*, i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
