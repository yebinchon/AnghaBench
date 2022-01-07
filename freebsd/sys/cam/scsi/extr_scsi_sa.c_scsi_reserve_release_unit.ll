; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_reserve_release_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_reserve_release_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_reserve_release_unit = type { i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@RESERVE_UNIT = common dso_local global i32 0, align 4
@RELEASE_UNIT = common dso_local global i32 0, align 4
@SRRU_3RD_PARTY = common dso_local global i32 0, align 4
@SRRU_3RD_SHAMT = common dso_local global i32 0, align 4
@SRRU_3RD_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_reserve_release_unit(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_reserve_release_unit*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %21 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.scsi_reserve_release_unit*
  store %struct.scsi_reserve_release_unit* %23, %struct.scsi_reserve_release_unit** %19, align 8
  %24 = load %struct.scsi_reserve_release_unit*, %struct.scsi_reserve_release_unit** %19, align 8
  %25 = call i32 @bzero(%struct.scsi_reserve_release_unit* %24, i32 8)
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %9
  %29 = load i32, i32* @RESERVE_UNIT, align 4
  %30 = load %struct.scsi_reserve_release_unit*, %struct.scsi_reserve_release_unit** %19, align 8
  %31 = getelementptr inbounds %struct.scsi_reserve_release_unit, %struct.scsi_reserve_release_unit* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %36

32:                                               ; preds = %9
  %33 = load i32, i32* @RELEASE_UNIT, align 4
  %34 = load %struct.scsi_reserve_release_unit*, %struct.scsi_reserve_release_unit** %19, align 8
  %35 = getelementptr inbounds %struct.scsi_reserve_release_unit, %struct.scsi_reserve_release_unit* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i32, i32* @SRRU_3RD_PARTY, align 4
  %41 = load %struct.scsi_reserve_release_unit*, %struct.scsi_reserve_release_unit** %19, align 8
  %42 = getelementptr inbounds %struct.scsi_reserve_release_unit, %struct.scsi_reserve_release_unit* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @SRRU_3RD_SHAMT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @SRRU_3RD_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.scsi_reserve_release_unit*, %struct.scsi_reserve_release_unit** %19, align 8
  %51 = getelementptr inbounds %struct.scsi_reserve_release_unit, %struct.scsi_reserve_release_unit* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %39, %36
  %55 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %58 = bitcast void (%struct.cam_periph*, %union.ccb*)* %57 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %59 = load i32, i32* @CAM_DIR_NONE, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %55, i32 %56, void (%struct.cam_periph.0*, %union.ccb.1*)* %58, i32 %59, i32 %60, i32* null, i32 0, i32 %61, i32 8, i32 %62)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_reserve_release_unit*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
