; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_read_block_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_read_block_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_read_block_limits_data = type { i32 }
%struct.scsi_read_block_limits = type { i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_IN = common dso_local global i32 0, align 4
@READ_BLOCK_LIMITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_block_limits(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, %struct.scsi_read_block_limits_data* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_read_block_limits_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_read_block_limits*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %8, align 8
  store i32 %1, i32* %9, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.scsi_read_block_limits_data* %4, %struct.scsi_read_block_limits_data** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %10, align 8
  %19 = bitcast void (%struct.cam_periph*, %union.ccb*)* %18 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %20 = load i32, i32* @CAM_DIR_IN, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.scsi_read_block_limits_data*, %struct.scsi_read_block_limits_data** %12, align 8
  %23 = bitcast %struct.scsi_read_block_limits_data* %22 to i32*
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %16, i32 %17, void (%struct.cam_periph.0*, %union.ccb.1*)* %19, i32 %20, i32 %21, i32* %23, i32 4, i32 %24, i32 4, i32 %25)
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to %struct.scsi_read_block_limits*
  store %struct.scsi_read_block_limits* %30, %struct.scsi_read_block_limits** %15, align 8
  %31 = load %struct.scsi_read_block_limits*, %struct.scsi_read_block_limits** %15, align 8
  %32 = call i32 @bzero(%struct.scsi_read_block_limits* %31, i32 4)
  %33 = load i32, i32* @READ_BLOCK_LIMITS, align 4
  %34 = load %struct.scsi_read_block_limits*, %struct.scsi_read_block_limits** %15, align 8
  %35 = getelementptr inbounds %struct.scsi_read_block_limits, %struct.scsi_read_block_limits* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_read_block_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
