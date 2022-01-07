; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_scsi_report_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_scsi_report_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_report_key = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@REPORT_KEY = common dso_local global i32 0, align 4
@RK_KF_AGID_SHIFT = common dso_local global i32 0, align 4
@RK_KF_KEYFORMAT_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_report_key(%struct.ccb_scsiio* %0, i64 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i64 %4, i32 %5, i32 %6, i32* %7, i64 %8, i32 %9, i64 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i64, align 8
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.scsi_report_key*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i64 %1, i64* %13, align 8
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i64 %10, i64* %22, align 8
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %25 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.scsi_report_key*
  store %struct.scsi_report_key* %27, %struct.scsi_report_key** %23, align 8
  %28 = load %struct.scsi_report_key*, %struct.scsi_report_key** %23, align 8
  %29 = call i32 @bzero(%struct.scsi_report_key* %28, i32 16)
  %30 = load i32, i32* @REPORT_KEY, align 4
  %31 = load %struct.scsi_report_key*, %struct.scsi_report_key** %23, align 8
  %32 = getelementptr inbounds %struct.scsi_report_key, %struct.scsi_report_key* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %16, align 8
  %34 = load %struct.scsi_report_key*, %struct.scsi_report_key** %23, align 8
  %35 = getelementptr inbounds %struct.scsi_report_key, %struct.scsi_report_key* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scsi_ulto4b(i64 %33, i32 %36)
  %38 = load i64, i64* %20, align 8
  %39 = load %struct.scsi_report_key*, %struct.scsi_report_key** %23, align 8
  %40 = getelementptr inbounds %struct.scsi_report_key, %struct.scsi_report_key* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @scsi_ulto2b(i64 %38, i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* @RK_KF_AGID_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @RK_KF_KEYFORMAT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load %struct.scsi_report_key*, %struct.scsi_report_key** %23, align 8
  %51 = getelementptr inbounds %struct.scsi_report_key, %struct.scsi_report_key* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %55 = bitcast void (%struct.cam_periph*, %union.ccb*)* %54 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %56 = load i64, i64* %20, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %11
  %59 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %62

60:                                               ; preds = %11
  %61 = load i32, i32* @CAM_DIR_IN, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i32, i32* %21, align 4
  %68 = load i64, i64* %22, align 8
  %69 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %52, i64 %53, void (%struct.cam_periph.0*, %union.ccb.1*)* %55, i32 %63, i32 %64, i32* %65, i64 %66, i32 %67, i32 16, i64 %68)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_report_key*, i32) #1

declare dso_local i32 @scsi_ulto4b(i64, i32) #1

declare dso_local i32 @scsi_ulto2b(i64, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i64, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
