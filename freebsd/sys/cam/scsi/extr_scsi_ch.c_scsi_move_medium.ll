; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_move_medium.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_move_medium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_move_medium = type { i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@MOVE_MEDIUM = common dso_local global i32 0, align 4
@MOVE_MEDIUM_INVERT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_move_medium(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.scsi_move_medium*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %11, align 8
  store i32 %1, i32* %12, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_move_medium*
  store %struct.scsi_move_medium* %25, %struct.scsi_move_medium** %21, align 8
  %26 = load %struct.scsi_move_medium*, %struct.scsi_move_medium** %21, align 8
  %27 = call i32 @bzero(%struct.scsi_move_medium* %26, i32 20)
  %28 = load i32, i32* @MOVE_MEDIUM, align 4
  %29 = load %struct.scsi_move_medium*, %struct.scsi_move_medium** %21, align 8
  %30 = getelementptr inbounds %struct.scsi_move_medium, %struct.scsi_move_medium* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.scsi_move_medium*, %struct.scsi_move_medium** %21, align 8
  %33 = getelementptr inbounds %struct.scsi_move_medium, %struct.scsi_move_medium* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @scsi_ulto2b(i32 %31, i32 %34)
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.scsi_move_medium*, %struct.scsi_move_medium** %21, align 8
  %38 = getelementptr inbounds %struct.scsi_move_medium, %struct.scsi_move_medium* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @scsi_ulto2b(i32 %36, i32 %39)
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.scsi_move_medium*, %struct.scsi_move_medium** %21, align 8
  %43 = getelementptr inbounds %struct.scsi_move_medium, %struct.scsi_move_medium* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scsi_ulto2b(i32 %41, i32 %44)
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %10
  %49 = load i32, i32* @MOVE_MEDIUM_INVERT, align 4
  %50 = load %struct.scsi_move_medium*, %struct.scsi_move_medium** %21, align 8
  %51 = getelementptr inbounds %struct.scsi_move_medium, %struct.scsi_move_medium* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %10
  %55 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %58 = bitcast void (%struct.cam_periph*, %union.ccb*)* %57 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %59 = load i32, i32* @CAM_DIR_NONE, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %55, i32 %56, void (%struct.cam_periph.0*, %union.ccb.1*)* %58, i32 %59, i32 %60, i32* null, i32 0, i32 %61, i32 20, i32 %62)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_move_medium*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
