; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_report_target_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_report_target_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_target_group = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_IN = common dso_local global i32 0, align 4
@MAINTENANCE_IN = common dso_local global i32 0, align 4
@REPORT_TARGET_PORT_GROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_report_target_group(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_target_group*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %23 = bitcast void (%struct.cam_periph*, %union.ccb*)* %22 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %24 = load i32, i32* @CAM_DIR_IN, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %20, i32 %21, void (%struct.cam_periph.0*, %union.ccb.1*)* %23, i32 %24, i32 %25, i32* %27, i32 %28, i32 %29, i32 12, i32 %30)
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %33 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.scsi_target_group*
  store %struct.scsi_target_group* %35, %struct.scsi_target_group** %19, align 8
  %36 = load %struct.scsi_target_group*, %struct.scsi_target_group** %19, align 8
  %37 = call i32 @bzero(%struct.scsi_target_group* %36, i32 12)
  %38 = load i32, i32* @MAINTENANCE_IN, align 4
  %39 = load %struct.scsi_target_group*, %struct.scsi_target_group** %19, align 8
  %40 = getelementptr inbounds %struct.scsi_target_group, %struct.scsi_target_group* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @REPORT_TARGET_PORT_GROUPS, align 4
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.scsi_target_group*, %struct.scsi_target_group** %19, align 8
  %45 = getelementptr inbounds %struct.scsi_target_group, %struct.scsi_target_group* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.scsi_target_group*, %struct.scsi_target_group** %19, align 8
  %48 = getelementptr inbounds %struct.scsi_target_group, %struct.scsi_target_group* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @scsi_ulto4b(i32 %46, i32 %49)
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
