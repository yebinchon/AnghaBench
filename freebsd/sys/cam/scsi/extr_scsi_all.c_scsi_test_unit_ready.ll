; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_test_unit_ready = type { i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_NONE = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_test_unit_ready(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_test_unit_ready*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %9, align 8
  %17 = bitcast void (%struct.cam_periph*, %union.ccb*)* %16 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %18 = load i32, i32* @CAM_DIR_NONE, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %14, i32 %15, void (%struct.cam_periph.0*, %union.ccb.1*)* %17, i32 %18, i32 %19, i32* null, i32 0, i32 %20, i32 4, i32 %21)
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.scsi_test_unit_ready*
  store %struct.scsi_test_unit_ready* %26, %struct.scsi_test_unit_ready** %13, align 8
  %27 = load %struct.scsi_test_unit_ready*, %struct.scsi_test_unit_ready** %13, align 8
  %28 = call i32 @bzero(%struct.scsi_test_unit_ready* %27, i32 4)
  %29 = load i32, i32* @TEST_UNIT_READY, align 4
  %30 = load %struct.scsi_test_unit_ready*, %struct.scsi_test_unit_ready** %13, align 8
  %31 = getelementptr inbounds %struct.scsi_test_unit_ready, %struct.scsi_test_unit_ready* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_test_unit_ready*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
