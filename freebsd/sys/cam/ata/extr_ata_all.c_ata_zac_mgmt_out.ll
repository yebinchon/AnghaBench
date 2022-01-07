; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_zac_mgmt_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_zac_mgmt_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ATA_ZAC_MANAGEMENT_OUT = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@ATA_NCQ_NON_DATA = common dso_local global i32 0, align 4
@ATA_NCQ_ZAC_MGMT_OUT = common dso_local global i32 0, align 4
@ATA_SEND_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_SFPDMA_ZAC_MGMT_OUT = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@ATA_FLAG_AUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_zac_mgmt_out(%struct.ccb_ataio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_ataio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %11
  %31 = load i32, i32* @ATA_ZAC_MANAGEMENT_OUT, align 4
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %16, align 4
  %33 = and i32 %32, 15
  %34 = load i32, i32* %18, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %33, %35
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* @CAM_ATAIO_DMA, align 4
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* %21, align 4
  %43 = ashr i32 %42, 9
  %44 = and i32 %43, 65535
  store i32 %44, i32* %26, align 4
  br label %45

45:                                               ; preds = %40, %39
  store i32 0, i32* %27, align 4
  br label %71

46:                                               ; preds = %11
  %47 = load i32, i32* %21, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ATA_NCQ_NON_DATA, align 4
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* @ATA_NCQ_ZAC_MGMT_OUT, align 4
  store i32 %51, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %64

52:                                               ; preds = %46
  %53 = load i32, i32* @ATA_SEND_FPDMA_QUEUED, align 4
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* @ATA_SFPDMA_ZAC_MGMT_OUT, align 4
  %55 = shl i32 %54, 8
  store i32 %55, i32* %26, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp eq i32 %56, 33554432
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %25, align 4
  br label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %21, align 4
  %61 = ashr i32 %60, 9
  %62 = and i32 %61, 65535
  store i32 %62, i32* %25, align 4
  br label %63

63:                                               ; preds = %59, %58
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %16, align 4
  %66 = and i32 %65, 15
  %67 = load i32, i32* %18, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %66, %68
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  store i32 %70, i32* %24, align 4
  br label %71

71:                                               ; preds = %64, %45
  %72 = load %struct.ccb_ataio*, %struct.ccb_ataio** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %75 = bitcast void (%struct.cam_periph*, %union.ccb*)* %74 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %76 = load i32, i32* %21, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32*, i32** %20, align 8
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @cam_fill_ataio(%struct.ccb_ataio* %72, i32 %73, void (%struct.cam_periph.0*, %union.ccb.1*)* %75, i32 %83, i32 0, i32* %84, i32 %85, i32 %86)
  %88 = load %struct.ccb_ataio*, %struct.ccb_ataio** %12, align 8
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %26, align 4
  %93 = call i32 @ata_48bit_cmd(%struct.ccb_ataio* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %24, align 4
  %95 = load %struct.ccb_ataio*, %struct.ccb_ataio** %12, align 8
  %96 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %27, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %82
  %103 = load i32, i32* @ATA_FLAG_AUX, align 4
  %104 = load %struct.ccb_ataio*, %struct.ccb_ataio** %12, align 8
  %105 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %27, align 4
  %109 = load %struct.ccb_ataio*, %struct.ccb_ataio** %12, align 8
  %110 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %82
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
