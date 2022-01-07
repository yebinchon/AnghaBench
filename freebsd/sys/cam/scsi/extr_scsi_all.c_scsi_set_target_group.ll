; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_set_target_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_set_target_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_target_group = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_OUT = common dso_local global i32 0, align 4
@MAINTENANCE_OUT = common dso_local global i32 0, align 4
@SET_TARGET_PORT_GROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_set_target_group(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ccb_scsiio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scsi_target_group*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %9, align 8
  store i32 %1, i32* %10, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %11, align 8
  %21 = bitcast void (%struct.cam_periph*, %union.ccb*)* %20 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %22 = load i32, i32* @CAM_DIR_OUT, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %18, i32 %19, void (%struct.cam_periph.0*, %union.ccb.1*)* %21, i32 %22, i32 %23, i32* %25, i32 %26, i32 %27, i32 12, i32 %28)
  %30 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %31 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.scsi_target_group*
  store %struct.scsi_target_group* %33, %struct.scsi_target_group** %17, align 8
  %34 = load %struct.scsi_target_group*, %struct.scsi_target_group** %17, align 8
  %35 = call i32 @bzero(%struct.scsi_target_group* %34, i32 12)
  %36 = load i32, i32* @MAINTENANCE_OUT, align 4
  %37 = load %struct.scsi_target_group*, %struct.scsi_target_group** %17, align 8
  %38 = getelementptr inbounds %struct.scsi_target_group, %struct.scsi_target_group* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SET_TARGET_PORT_GROUPS, align 4
  %40 = load %struct.scsi_target_group*, %struct.scsi_target_group** %17, align 8
  %41 = getelementptr inbounds %struct.scsi_target_group, %struct.scsi_target_group* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.scsi_target_group*, %struct.scsi_target_group** %17, align 8
  %44 = getelementptr inbounds %struct.scsi_target_group, %struct.scsi_target_group* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_ulto4b(i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_target_group*, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
