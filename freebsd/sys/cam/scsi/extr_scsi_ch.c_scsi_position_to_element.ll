; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_position_to_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_position_to_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_position_to_element = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@POSITION_TO_ELEMENT = common dso_local global i32 0, align 4
@POSITION_TO_ELEMENT_INVERT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_position_to_element(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_position_to_element*, align 8
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
  %23 = bitcast i32* %22 to %struct.scsi_position_to_element*
  store %struct.scsi_position_to_element* %23, %struct.scsi_position_to_element** %19, align 8
  %24 = load %struct.scsi_position_to_element*, %struct.scsi_position_to_element** %19, align 8
  %25 = call i32 @bzero(%struct.scsi_position_to_element* %24, i32 16)
  %26 = load i32, i32* @POSITION_TO_ELEMENT, align 4
  %27 = load %struct.scsi_position_to_element*, %struct.scsi_position_to_element** %19, align 8
  %28 = getelementptr inbounds %struct.scsi_position_to_element, %struct.scsi_position_to_element* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.scsi_position_to_element*, %struct.scsi_position_to_element** %19, align 8
  %31 = getelementptr inbounds %struct.scsi_position_to_element, %struct.scsi_position_to_element* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scsi_ulto2b(i32 %29, i32 %32)
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.scsi_position_to_element*, %struct.scsi_position_to_element** %19, align 8
  %36 = getelementptr inbounds %struct.scsi_position_to_element, %struct.scsi_position_to_element* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @scsi_ulto2b(i32 %34, i32 %37)
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %9
  %42 = load i32, i32* @POSITION_TO_ELEMENT_INVERT, align 4
  %43 = load %struct.scsi_position_to_element*, %struct.scsi_position_to_element** %19, align 8
  %44 = getelementptr inbounds %struct.scsi_position_to_element, %struct.scsi_position_to_element* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %9
  %48 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %51 = bitcast void (%struct.cam_periph*, %union.ccb*)* %50 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %52 = load i32, i32* @CAM_DIR_NONE, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %48, i32 %49, void (%struct.cam_periph.0*, %union.ccb.1*)* %51, i32 %52, i32 %53, i32* null, i32 0, i32 %54, i32 16, i32 %55)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_position_to_element*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
