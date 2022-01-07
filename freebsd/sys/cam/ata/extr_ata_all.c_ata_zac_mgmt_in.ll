; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_zac_mgmt_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_zac_mgmt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ATA_ZAC_MANAGEMENT_IN = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@ATA_RECV_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_RFPDMA_ZAC_MGMT_IN = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@ATA_FLAG_AUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_zac_mgmt_in(%struct.ccb_ataio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %10
  %29 = load i32, i32* @ATA_ZAC_MANAGEMENT_IN, align 4
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %15, align 4
  %31 = and i32 %30, 15
  %32 = load i32, i32* %17, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %31, %33
  store i32 %34, i32* %23, align 4
  %35 = load i32, i32* @CAM_ATAIO_DMA, align 4
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* %19, align 4
  %37 = ashr i32 %36, 9
  %38 = and i32 %37, 65535
  store i32 %38, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %57

39:                                               ; preds = %10
  %40 = load i32, i32* @ATA_RECV_FPDMA_QUEUED, align 4
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* @ATA_RFPDMA_ZAC_MGMT_IN, align 4
  %42 = shl i32 %41, 8
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %15, align 4
  %44 = and i32 %43, 15
  %45 = load i32, i32* %17, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %44, %46
  store i32 %47, i32* %25, align 4
  %48 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp eq i32 %49, 33554432
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 0, i32* %23, align 4
  br label %56

52:                                               ; preds = %39
  %53 = load i32, i32* %19, align 4
  %54 = ashr i32 %53, 9
  %55 = and i32 %54, 65535
  store i32 %55, i32* %23, align 4
  br label %56

56:                                               ; preds = %52, %51
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %61 = bitcast void (%struct.cam_periph*, %union.ccb*)* %60 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %62 = load i32, i32* @CAM_DIR_IN, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @cam_fill_ataio(%struct.ccb_ataio* %58, i32 %59, void (%struct.cam_periph.0*, %union.ccb.1*)* %61, i32 %62, i32 0, i32* %63, i32 %64, i32 %65)
  %67 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %24, align 4
  %72 = call i32 @ata_48bit_cmd(%struct.ccb_ataio* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %22, align 4
  %74 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %75 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %25, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %57
  %82 = load i32, i32* @ATA_FLAG_AUX, align 4
  %83 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %84 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load %struct.ccb_ataio*, %struct.ccb_ataio** %11, align 8
  %89 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %57
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
