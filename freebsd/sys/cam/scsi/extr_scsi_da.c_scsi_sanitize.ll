; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_sanitize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_sanitize = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@SANITIZE = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sanitize(%struct.ccb_scsiio* %0, i64 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7, i32 %8, i64 %9) #0 {
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.scsi_sanitize*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %11, align 8
  store i64 %1, i64* %12, align 8
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i64 %9, i64* %20, align 8
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_sanitize*
  store %struct.scsi_sanitize* %25, %struct.scsi_sanitize** %21, align 8
  %26 = load i32, i32* @SANITIZE, align 4
  %27 = load %struct.scsi_sanitize*, %struct.scsi_sanitize** %21, align 8
  %28 = getelementptr inbounds %struct.scsi_sanitize, %struct.scsi_sanitize* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.scsi_sanitize*, %struct.scsi_sanitize** %21, align 8
  %31 = getelementptr inbounds %struct.scsi_sanitize, %struct.scsi_sanitize* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.scsi_sanitize*, %struct.scsi_sanitize** %21, align 8
  %34 = getelementptr inbounds %struct.scsi_sanitize, %struct.scsi_sanitize* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %18, align 8
  %36 = load %struct.scsi_sanitize*, %struct.scsi_sanitize** %21, align 8
  %37 = getelementptr inbounds %struct.scsi_sanitize, %struct.scsi_sanitize* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @scsi_ulto2b(i64 %35, i32 %38)
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %43 = bitcast void (%struct.cam_periph*, %union.ccb*)* %42 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %44 = load i64, i64* %18, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %10
  %47 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %50

48:                                               ; preds = %10
  %49 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i32, i32* %19, align 4
  %56 = load i64, i64* %20, align 8
  %57 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %40, i64 %41, void (%struct.cam_periph.0*, %union.ccb.1*)* %43, i32 %51, i32 %52, i32* %53, i64 %54, i32 %55, i32 16, i64 %56)
  ret void
}

declare dso_local i32 @scsi_ulto2b(i64, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i64, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
