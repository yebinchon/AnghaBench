; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_start_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_start_stop_unit = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@START_STOP_UNIT = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@CAM_HIGH_POWER = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@SSS_IMMED = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_start_stop(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_start_stop_unit*, align 8
  %20 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %22 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %24, %struct.scsi_start_stop_unit** %19, align 8
  %25 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %19, align 8
  %26 = call i32 @bzero(%struct.scsi_start_stop_unit* %25, i32 12)
  %27 = load i32, i32* @START_STOP_UNIT, align 4
  %28 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %19, align 8
  %29 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %9
  %33 = load i32, i32* @SSS_START, align 4
  %34 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %19, align 8
  %35 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @CAM_HIGH_POWER, align 4
  %39 = load i32, i32* %20, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %32, %9
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @SSS_LOEJ, align 4
  %46 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %19, align 8
  %47 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @SSS_IMMED, align 4
  %55 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %19, align 8
  %56 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %63 = bitcast void (%struct.cam_periph*, %union.ccb*)* %62 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %64 = load i32, i32* @CAM_DIR_NONE, align 4
  %65 = load i32, i32* %20, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %60, i32 %61, void (%struct.cam_periph.0*, %union.ccb.1*)* %63, i32 %66, i32 %67, i32* null, i32 0, i32 %68, i32 12, i32 %69)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_start_stop_unit*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
