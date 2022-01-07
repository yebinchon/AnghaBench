; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_scsi_send_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_scsi_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_send_key = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@SEND_KEY = common dso_local global i32 0, align 4
@RK_KF_AGID_SHIFT = common dso_local global i32 0, align 4
@RK_KF_KEYFORMAT_MASK = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_send_key(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %21 = alloca %struct.scsi_send_key*, align 8
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
  %25 = bitcast i32* %24 to %struct.scsi_send_key*
  store %struct.scsi_send_key* %25, %struct.scsi_send_key** %21, align 8
  %26 = load %struct.scsi_send_key*, %struct.scsi_send_key** %21, align 8
  %27 = call i32 @bzero(%struct.scsi_send_key* %26, i32 12)
  %28 = load i32, i32* @SEND_KEY, align 4
  %29 = load %struct.scsi_send_key*, %struct.scsi_send_key** %21, align 8
  %30 = getelementptr inbounds %struct.scsi_send_key, %struct.scsi_send_key* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load %struct.scsi_send_key*, %struct.scsi_send_key** %21, align 8
  %33 = getelementptr inbounds %struct.scsi_send_key, %struct.scsi_send_key* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @scsi_ulto2b(i32 %31, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @RK_KF_AGID_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @RK_KF_KEYFORMAT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load %struct.scsi_send_key*, %struct.scsi_send_key** %21, align 8
  %44 = getelementptr inbounds %struct.scsi_send_key, %struct.scsi_send_key* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %48 = bitcast void (%struct.cam_periph*, %union.ccb*)* %47 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %49 = load i32, i32* @CAM_DIR_OUT, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %45, i32 %46, void (%struct.cam_periph.0*, %union.ccb.1*)* %48, i32 %49, i32 %50, i32* %51, i32 %52, i32 %53, i32 12, i32 %54)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_send_key*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
