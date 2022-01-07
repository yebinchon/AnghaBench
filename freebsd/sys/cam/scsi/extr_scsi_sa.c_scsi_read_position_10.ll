; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_read_position_10.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_read_position_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_tape_read_position = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_IN = common dso_local global i32 0, align 4
@READ_POSITION = common dso_local global i32 0, align 4
@SA_RPOS_EXTENDED_FORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_position_10(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_tape_read_position*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %23 = bitcast void (%struct.cam_periph*, %union.ccb*)* %22 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %24 = load i32, i32* @CAM_DIR_IN, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %20, i32 %21, void (%struct.cam_periph.0*, %union.ccb.1*)* %23, i32 %24, i32 %25, i32* %26, i32 %27, i32 %28, i32 12, i32 %29)
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %32 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to %struct.scsi_tape_read_position*
  store %struct.scsi_tape_read_position* %34, %struct.scsi_tape_read_position** %19, align 8
  %35 = load %struct.scsi_tape_read_position*, %struct.scsi_tape_read_position** %19, align 8
  %36 = call i32 @bzero(%struct.scsi_tape_read_position* %35, i32 12)
  %37 = load i32, i32* @READ_POSITION, align 4
  %38 = load %struct.scsi_tape_read_position*, %struct.scsi_tape_read_position** %19, align 8
  %39 = getelementptr inbounds %struct.scsi_tape_read_position, %struct.scsi_tape_read_position* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.scsi_tape_read_position*, %struct.scsi_tape_read_position** %19, align 8
  %42 = getelementptr inbounds %struct.scsi_tape_read_position, %struct.scsi_tape_read_position* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @SA_RPOS_EXTENDED_FORM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %9
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.scsi_tape_read_position*, %struct.scsi_tape_read_position** %19, align 8
  %49 = getelementptr inbounds %struct.scsi_tape_read_position, %struct.scsi_tape_read_position* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @scsi_ulto2b(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_tape_read_position*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
