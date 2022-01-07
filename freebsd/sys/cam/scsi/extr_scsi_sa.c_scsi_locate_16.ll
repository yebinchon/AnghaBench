; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_locate_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_locate_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_locate_16 = type { i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_NONE = common dso_local global i32 0, align 4
@LOCATE_16 = common dso_local global i32 0, align 4
@SA_LC_IMMEDIATE = common dso_local global i32 0, align 4
@SA_LC_CP = common dso_local global i32 0, align 4
@SA_LC_DEST_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_locate_16(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.scsi_locate_16*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %13, align 8
  store i32 %1, i32* %14, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  %29 = bitcast void (%struct.cam_periph*, %union.ccb*)* %28 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %30 = load i32, i32* @CAM_DIR_NONE, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* %24, align 4
  %34 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %26, i32 %27, void (%struct.cam_periph.0*, %union.ccb.1*)* %29, i32 %30, i32 %31, i32* null, i32 0, i32 %32, i32 20, i32 %33)
  %35 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %36 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.scsi_locate_16*
  store %struct.scsi_locate_16* %38, %struct.scsi_locate_16** %25, align 8
  %39 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %40 = call i32 @bzero(%struct.scsi_locate_16* %39, i32 20)
  %41 = load i32, i32* @LOCATE_16, align 4
  %42 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %43 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %12
  %47 = load i32, i32* @SA_LC_IMMEDIATE, align 4
  %48 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %49 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %12
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @SA_LC_CP, align 4
  %57 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %58 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* @SA_LC_DEST_TYPE_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %66 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %71 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %76 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load %struct.scsi_locate_16*, %struct.scsi_locate_16** %25, align 8
  %79 = getelementptr inbounds %struct.scsi_locate_16, %struct.scsi_locate_16* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @scsi_u64to8b(i32 %77, i32 %80)
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_locate_16*, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
