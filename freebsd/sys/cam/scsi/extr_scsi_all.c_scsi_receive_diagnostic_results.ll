; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_receive_diagnostic_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_receive_diagnostic_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_receive_diag = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@RECEIVE_DIAGNOSTIC = common dso_local global i32 0, align 4
@SRD_PCV = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_receive_diagnostic_results(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.scsi_receive_diag*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %11, align 8
  store i32 %1, i32* %12, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_receive_diag*
  store %struct.scsi_receive_diag* %25, %struct.scsi_receive_diag** %21, align 8
  %26 = load %struct.scsi_receive_diag*, %struct.scsi_receive_diag** %21, align 8
  %27 = call i32 @memset(%struct.scsi_receive_diag* %26, i32 0, i32 16)
  %28 = load i32, i32* @RECEIVE_DIAGNOSTIC, align 4
  %29 = load %struct.scsi_receive_diag*, %struct.scsi_receive_diag** %21, align 8
  %30 = getelementptr inbounds %struct.scsi_receive_diag, %struct.scsi_receive_diag* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %10
  %34 = load i32, i32* @SRD_PCV, align 4
  %35 = load %struct.scsi_receive_diag*, %struct.scsi_receive_diag** %21, align 8
  %36 = getelementptr inbounds %struct.scsi_receive_diag, %struct.scsi_receive_diag* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.scsi_receive_diag*, %struct.scsi_receive_diag** %21, align 8
  %41 = getelementptr inbounds %struct.scsi_receive_diag, %struct.scsi_receive_diag* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %10
  %43 = load i32, i32* %18, align 4
  %44 = load %struct.scsi_receive_diag*, %struct.scsi_receive_diag** %21, align 8
  %45 = getelementptr inbounds %struct.scsi_receive_diag, %struct.scsi_receive_diag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scsi_ulto2b(i32 %43, i32 %46)
  %48 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %51 = bitcast void (%struct.cam_periph*, %union.ccb*)* %50 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %52 = load i32, i32* @CAM_DIR_IN, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %17, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %48, i32 %49, void (%struct.cam_periph.0*, %union.ccb.1*)* %51, i32 %52, i32 %53, i32* %54, i32 %55, i32 %56, i32 16, i32 %57)
  ret void
}

declare dso_local i32 @memset(%struct.scsi_receive_diag*, i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
