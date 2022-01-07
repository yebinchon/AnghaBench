; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_zbc_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_zbc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_zbc_out = type { i8*, i32, i8*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ZBC_OUT = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_zbc_out(%struct.ccb_scsiio* %0, i64 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i8* %3, i8* %4, i32 %5, i8* %6, i8** %7, i64 %8, i8* %9, i64 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i64, align 8
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.scsi_zbc_out*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i64 %1, i64* %13, align 8
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  store i64 %10, i64* %22, align 8
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %25 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.scsi_zbc_out*
  store %struct.scsi_zbc_out* %27, %struct.scsi_zbc_out** %23, align 8
  %28 = load i32, i32* @ZBC_OUT, align 4
  %29 = load %struct.scsi_zbc_out*, %struct.scsi_zbc_out** %23, align 8
  %30 = getelementptr inbounds %struct.scsi_zbc_out, %struct.scsi_zbc_out* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load %struct.scsi_zbc_out*, %struct.scsi_zbc_out** %23, align 8
  %33 = getelementptr inbounds %struct.scsi_zbc_out, %struct.scsi_zbc_out* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load %struct.scsi_zbc_out*, %struct.scsi_zbc_out** %23, align 8
  %36 = getelementptr inbounds %struct.scsi_zbc_out, %struct.scsi_zbc_out* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @scsi_u64to8b(i32 %34, i32 %37)
  %39 = load i8*, i8** %18, align 8
  %40 = load %struct.scsi_zbc_out*, %struct.scsi_zbc_out** %23, align 8
  %41 = getelementptr inbounds %struct.scsi_zbc_out, %struct.scsi_zbc_out* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %45 = bitcast void (%struct.cam_periph*, %union.ccb*)* %44 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %46 = load i64, i64* %20, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %11
  %49 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %52

50:                                               ; preds = %11
  %51 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i8*, i8** %15, align 8
  %55 = load i8**, i8*** %19, align 8
  %56 = load i64, i64* %20, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = load i64, i64* %22, align 8
  %59 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %42, i64 %43, void (%struct.cam_periph.0*, %union.ccb.1*)* %45, i32 %53, i8* %54, i8** %55, i64 %56, i8* %57, i32 32, i64 %58)
  ret void
}

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i64, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i8*, i8**, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
