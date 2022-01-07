; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_read_buffer = type { i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@READ_BUFFER = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_buffer(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scsi_read_buffer*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %25 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.scsi_read_buffer*
  store %struct.scsi_read_buffer* %27, %struct.scsi_read_buffer** %23, align 8
  %28 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %23, align 8
  %29 = call i32 @memset(%struct.scsi_read_buffer* %28, i32 0, i32 20)
  %30 = load i32, i32* @READ_BUFFER, align 4
  %31 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %23, align 8
  %32 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %23, align 8
  %35 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %23, align 8
  %38 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %23, align 8
  %41 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scsi_ulto3b(i32 %39, i32 %42)
  %44 = load i32, i32* %20, align 4
  %45 = load %struct.scsi_read_buffer*, %struct.scsi_read_buffer** %23, align 8
  %46 = getelementptr inbounds %struct.scsi_read_buffer, %struct.scsi_read_buffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @scsi_ulto3b(i32 %44, i32 %47)
  %49 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %52 = bitcast void (%struct.cam_periph*, %union.ccb*)* %51 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %53 = load i32, i32* @CAM_DIR_IN, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %22, align 4
  %59 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %49, i32 %50, void (%struct.cam_periph.0*, %union.ccb.1*)* %52, i32 %53, i32 %54, i32* %55, i32 %56, i32 %57, i32 20, i32 %58)
  ret void
}

declare dso_local i32 @memset(%struct.scsi_read_buffer*, i32, i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
