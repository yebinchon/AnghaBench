; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_write_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_write_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_write_attribute = type { i32, i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@WRITE_ATTRIBUTE = common dso_local global i32 0, align 4
@SWA_WTC = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_write_attribute(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.scsi_write_attribute*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %13, align 8
  store i32 %1, i32* %14, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.scsi_write_attribute*
  store %struct.scsi_write_attribute* %29, %struct.scsi_write_attribute** %25, align 8
  %30 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %31 = call i32 @bzero(%struct.scsi_write_attribute* %30, i32 24)
  %32 = load i32, i32* @WRITE_ATTRIBUTE, align 4
  %33 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %34 = getelementptr inbounds %struct.scsi_write_attribute, %struct.scsi_write_attribute* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %12
  %38 = load i32, i32* @SWA_WTC, align 4
  %39 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %40 = getelementptr inbounds %struct.scsi_write_attribute, %struct.scsi_write_attribute* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %12
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %44 = getelementptr inbounds %struct.scsi_write_attribute, %struct.scsi_write_attribute* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_ulto3b(i32 %42, i32 %45)
  %47 = load i32, i32* %18, align 4
  %48 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %49 = getelementptr inbounds %struct.scsi_write_attribute, %struct.scsi_write_attribute* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %52 = getelementptr inbounds %struct.scsi_write_attribute, %struct.scsi_write_attribute* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.scsi_write_attribute*, %struct.scsi_write_attribute** %25, align 8
  %55 = getelementptr inbounds %struct.scsi_write_attribute, %struct.scsi_write_attribute* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @scsi_ulto4b(i32 %53, i32 %56)
  %58 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  %61 = bitcast void (%struct.cam_periph*, %union.ccb*)* %60 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %62 = load i32, i32* @CAM_DIR_OUT, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32*, i32** %21, align 8
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %58, i32 %59, void (%struct.cam_periph.0*, %union.ccb.1*)* %61, i32 %62, i32 %63, i32* %64, i32 %65, i32 %66, i32 24, i32 %67)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_write_attribute*, i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
