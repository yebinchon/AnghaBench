; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_locate_10.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_locate_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_tape_locate = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_NONE = common dso_local global i32 0, align 4
@LOCATE = common dso_local global i32 0, align 4
@SA_SPOS_IMMED = common dso_local global i32 0, align 4
@SA_SPOS_CP = common dso_local global i32 0, align 4
@SA_SPOS_BT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_locate_10(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scsi_tape_locate*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %27 = bitcast void (%struct.cam_periph*, %union.ccb*)* %26 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %28 = load i32, i32* @CAM_DIR_NONE, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %22, align 4
  %32 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %24, i32 %25, void (%struct.cam_periph.0*, %union.ccb.1*)* %27, i32 %28, i32 %29, i32* null, i32 0, i32 %30, i32 16, i32 %31)
  %33 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %34 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.scsi_tape_locate*
  store %struct.scsi_tape_locate* %36, %struct.scsi_tape_locate** %23, align 8
  %37 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %38 = call i32 @bzero(%struct.scsi_tape_locate* %37, i32 16)
  %39 = load i32, i32* @LOCATE, align 4
  %40 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %41 = getelementptr inbounds %struct.scsi_tape_locate, %struct.scsi_tape_locate* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %11
  %45 = load i32, i32* @SA_SPOS_IMMED, align 4
  %46 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %47 = getelementptr inbounds %struct.scsi_tape_locate, %struct.scsi_tape_locate* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %11
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @SA_SPOS_CP, align 4
  %55 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %56 = getelementptr inbounds %struct.scsi_tape_locate, %struct.scsi_tape_locate* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @SA_SPOS_BT, align 4
  %64 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %65 = getelementptr inbounds %struct.scsi_tape_locate, %struct.scsi_tape_locate* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %20, align 4
  %70 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %71 = getelementptr inbounds %struct.scsi_tape_locate, %struct.scsi_tape_locate* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @scsi_ulto4b(i32 %69, i32 %72)
  %74 = load i32, i32* %19, align 4
  %75 = load %struct.scsi_tape_locate*, %struct.scsi_tape_locate** %23, align 8
  %76 = getelementptr inbounds %struct.scsi_tape_locate, %struct.scsi_tape_locate* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_tape_locate*, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
