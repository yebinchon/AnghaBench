; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_ata_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_ata_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@AP_PROTO_DMA = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@ATA_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_DATA_SET_MANAGEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_ata_trim(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %22 = bitcast void (%struct.cam_periph*, %union.ccb*)* %21 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %23 = load i32, i32* @CAM_DIR_OUT, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @AP_EXTEND, align 4
  %26 = load i32, i32* @AP_PROTO_DMA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %29 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ATA_DSM_TRIM, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @ATA_DATA_SET_MANAGEMENT, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @scsi_ata_pass_16(%struct.ccb_scsiio* %19, i32 %20, void (%struct.cam_periph.0*, %union.ccb.1*)* %22, i32 %23, i32 %24, i32 %27, i32 %30, i32 %31, i32 %32, i32 0, i32 %33, i32 0, i32* %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @scsi_ata_pass_16(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
