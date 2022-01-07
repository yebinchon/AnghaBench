; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_persistent_reserve_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_persistent_reserve_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_per_res_out = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@PERSISTENT_RES_OUT = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_persistent_reserve_out(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %23 = alloca %struct.scsi_per_res_out*, align 8
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
  %27 = bitcast i32* %26 to %struct.scsi_per_res_out*
  store %struct.scsi_per_res_out* %27, %struct.scsi_per_res_out** %23, align 8
  %28 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %23, align 8
  %29 = call i32 @bzero(%struct.scsi_per_res_out* %28, i32 16)
  %30 = load i32, i32* @PERSISTENT_RES_OUT, align 4
  %31 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %23, align 8
  %32 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %23, align 8
  %35 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %23, align 8
  %40 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %23, align 8
  %43 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scsi_ulto4b(i32 %41, i32 %44)
  %46 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %49 = bitcast void (%struct.cam_periph*, %union.ccb*)* %48 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %50 = load i32, i32* @CAM_DIR_OUT, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %22, align 4
  %56 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %46, i32 %47, void (%struct.cam_periph.0*, %union.ccb.1*)* %49, i32 %50, i32 %51, i32* %52, i32 %53, i32 %54, i32 16, i32 %55)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_per_res_out*, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
