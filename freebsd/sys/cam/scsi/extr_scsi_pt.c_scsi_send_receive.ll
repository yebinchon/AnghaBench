; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_scsi_send_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_scsi_send_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_send_receive = type { i64, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@RECEIVE = common dso_local global i32 0, align 4
@SEND = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_send_receive(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.scsi_send_receive*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %11, align 8
  store i32 %1, i32* %12, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_send_receive*
  store %struct.scsi_send_receive* %25, %struct.scsi_send_receive** %21, align 8
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %10
  %29 = load i32, i32* @RECEIVE, align 4
  br label %32

30:                                               ; preds = %10
  %31 = load i32, i32* @SEND, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.scsi_send_receive*, %struct.scsi_send_receive** %21, align 8
  %35 = getelementptr inbounds %struct.scsi_send_receive, %struct.scsi_send_receive* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.scsi_send_receive*, %struct.scsi_send_receive** %21, align 8
  %38 = getelementptr inbounds %struct.scsi_send_receive, %struct.scsi_send_receive* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.scsi_send_receive*, %struct.scsi_send_receive** %21, align 8
  %41 = getelementptr inbounds %struct.scsi_send_receive, %struct.scsi_send_receive* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @scsi_ulto3b(i32 %39, i32 %42)
  %44 = load %struct.scsi_send_receive*, %struct.scsi_send_receive** %21, align 8
  %45 = getelementptr inbounds %struct.scsi_send_receive, %struct.scsi_send_receive* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %49 = bitcast void (%struct.cam_periph*, %union.ccb*)* %48 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @CAM_DIR_IN, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %46, i32 %47, void (%struct.cam_periph.0*, %union.ccb.1*)* %49, i32 %57, i32 %58, i32* %59, i32 %60, i32 %61, i32 24, i32 %62)
  ret void
}

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
