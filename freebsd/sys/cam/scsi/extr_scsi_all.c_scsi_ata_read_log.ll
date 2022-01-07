; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_ata_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_ata_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ATA_READ_LOG_DMA_EXT = common dso_local global i32 0, align 4
@ATA_READ_LOG_EXT = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@AP_FLAG_TDIR_FROM_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_ata_read_log(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
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
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %20, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %34
  ]

31:                                               ; preds = %12
  %32 = load i32, i32* %19, align 4
  store i32 %32, i32* %27, align 4
  %33 = load i32, i32* @ATA_READ_LOG_DMA_EXT, align 4
  store i32 %33, i32* %25, align 4
  store i32 129, i32* %26, align 4
  br label %38

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %12, %34
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %27, align 4
  %37 = load i32, i32* @ATA_READ_LOG_EXT, align 4
  store i32 %37, i32* %25, align 4
  store i32 128, i32* %26, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %18, align 4
  %40 = and i32 %39, 65280
  %41 = shl i32 %40, 32
  %42 = load i32, i32* %18, align 4
  %43 = and i32 %42, 255
  %44 = shl i32 %43, 8
  %45 = or i32 %41, %44
  %46 = load i32, i32* %17, align 4
  %47 = and i32 %46, 255
  %48 = or i32 %45, %47
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* @AP_EXTEND, align 4
  %50 = load i32, i32* %26, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %26, align 4
  %52 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  %55 = bitcast void (%struct.cam_periph*, %union.ccb*)* %54 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %56 = load i32, i32* @CAM_DIR_IN, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %26, align 4
  %59 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %60 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AP_FLAG_TDIR_FROM_DEV, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %28, align 4
  %66 = load i32, i32* %25, align 4
  %67 = load i32*, i32** %21, align 8
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %24, align 4
  %71 = call i32 @scsi_ata_pass(%struct.ccb_scsiio* %52, i32 %53, void (%struct.cam_periph.0*, %union.ccb.1*)* %55, i32 %56, i32 %57, i32 %58, i32 %63, i32 0, i32 %64, i32 %65, i32 %66, i32 0, i32 0, i32 0, i32 0, i32* %67, i32 %68, i32* null, i32 0, i32 0, i32 %69, i32 %70)
  store i32 %71, i32* %29, align 4
  %72 = load i32, i32* %29, align 4
  ret i32 %72
}

declare dso_local i32 @scsi_ata_pass(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
