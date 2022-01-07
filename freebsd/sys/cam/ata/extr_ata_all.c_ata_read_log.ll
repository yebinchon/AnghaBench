; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@ATA_READ_LOG_DMA_EXT = common dso_local global i32 0, align 4
@ATA_READ_LOG_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_read_log(%struct.ccb_ataio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ccb_ataio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %11, align 8
  store i32 %1, i32* %12, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %23 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %24 = bitcast void (%struct.cam_periph*, %union.ccb*)* %23 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %25 = load i32, i32* @CAM_DIR_IN, align 4
  %26 = load i32*, i32** %18, align 8
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %20, align 4
  %29 = call i32 @cam_fill_ataio(%struct.ccb_ataio* %22, i32 1, void (%struct.cam_periph.0*, %union.ccb.1*)* %24, i32 %25, i32 0, i32* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %15, align 4
  %31 = and i32 %30, 65280
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 8
  %36 = or i32 %32, %35
  %37 = load i32, i32* %14, align 4
  %38 = and i32 %37, 255
  %39 = or i32 %36, %38
  store i32 %39, i32* %21, align 4
  %40 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %10
  %46 = load i32, i32* @ATA_READ_LOG_DMA_EXT, align 4
  br label %49

47:                                               ; preds = %10
  %48 = load i32, i32* @ATA_READ_LOG_EXT, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @ata_48bit_cmd(%struct.ccb_ataio* %40, i32 %50, i32 0, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @cam_fill_ataio(%struct.ccb_ataio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_48bit_cmd(%struct.ccb_ataio*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
