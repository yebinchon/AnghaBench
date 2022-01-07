; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_erase = type { i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ERASE = common dso_local global i32 0, align 4
@SE_IMMED = common dso_local global i32 0, align 4
@SE_LONG = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_erase(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ccb_scsiio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scsi_erase*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %9, align 8
  store i32 %1, i32* %10, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %19 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.scsi_erase*
  store %struct.scsi_erase* %21, %struct.scsi_erase** %17, align 8
  %22 = load %struct.scsi_erase*, %struct.scsi_erase** %17, align 8
  %23 = call i32 @bzero(%struct.scsi_erase* %22, i32 8)
  %24 = load i32, i32* @ERASE, align 4
  %25 = load %struct.scsi_erase*, %struct.scsi_erase** %17, align 8
  %26 = getelementptr inbounds %struct.scsi_erase, %struct.scsi_erase* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %8
  %30 = load i32, i32* @SE_IMMED, align 4
  %31 = load %struct.scsi_erase*, %struct.scsi_erase** %17, align 8
  %32 = getelementptr inbounds %struct.scsi_erase, %struct.scsi_erase* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %8
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @SE_LONG, align 4
  %40 = load %struct.scsi_erase*, %struct.scsi_erase** %17, align 8
  %41 = getelementptr inbounds %struct.scsi_erase, %struct.scsi_erase* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %11, align 8
  %48 = bitcast void (%struct.cam_periph*, %union.ccb*)* %47 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %49 = load i32, i32* @CAM_DIR_NONE, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %45, i32 %46, void (%struct.cam_periph.0*, %union.ccb.1*)* %48, i32 %49, i32 %50, i32* null, i32 0, i32 %51, i32 8, i32 %52)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_erase*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
