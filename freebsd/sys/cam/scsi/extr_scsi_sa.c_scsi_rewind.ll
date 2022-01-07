; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_rewind = type { i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@REWIND = common dso_local global i32 0, align 4
@SREW_IMMED = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_rewind(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_rewind*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %8, align 8
  store i32 %1, i32* %9, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %17 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.scsi_rewind*
  store %struct.scsi_rewind* %19, %struct.scsi_rewind** %15, align 8
  %20 = load %struct.scsi_rewind*, %struct.scsi_rewind** %15, align 8
  %21 = call i32 @bzero(%struct.scsi_rewind* %20, i32 8)
  %22 = load i32, i32* @REWIND, align 4
  %23 = load %struct.scsi_rewind*, %struct.scsi_rewind** %15, align 8
  %24 = getelementptr inbounds %struct.scsi_rewind, %struct.scsi_rewind* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i32, i32* @SREW_IMMED, align 4
  %29 = load %struct.scsi_rewind*, %struct.scsi_rewind** %15, align 8
  %30 = getelementptr inbounds %struct.scsi_rewind, %struct.scsi_rewind* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %7
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %10, align 8
  %35 = bitcast void (%struct.cam_periph*, %union.ccb*)* %34 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %36 = load i32, i32* @CAM_DIR_NONE, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %32, i32 %33, void (%struct.cam_periph.0*, %union.ccb.1*)* %35, i32 %36, i32 %37, i32* null, i32 0, i32 %38, i32 8, i32 %39)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_rewind*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
