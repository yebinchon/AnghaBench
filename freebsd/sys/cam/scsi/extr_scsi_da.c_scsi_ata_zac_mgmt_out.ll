; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_ata_zac_mgmt_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_ata_zac_mgmt_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ATA_ZAC_MANAGEMENT_OUT = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_NO_DATA = common dso_local global i32 0, align 4
@AP_PROTO_DMA = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@AP_FLAG_TDIR_TO_DEV = common dso_local global i32 0, align 4
@ATA_NCQ_NON_DATA = common dso_local global i32 0, align 4
@ATA_NCQ_ZAC_MGMT_OUT = common dso_local global i32 0, align 4
@ATA_SEND_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_SFPDMA_ZAC_MGMT_OUT = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_FEAT = common dso_local global i32 0, align 4
@AP_PROTO_FPDMA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_ata_zac_mgmt_out(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32* %10, i64 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.ccb_scsiio*, align 8
  %16 = alloca i32, align 4
  %17 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %15, align 8
  store i32 %1, i32* %16, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32* %8, i32** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i64 %11, i64* %26, align 8
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %14
  %39 = load i32, i32* @ATA_ZAC_MANAGEMENT_OUT, align 4
  store i32 %39, i32* %29, align 4
  %40 = load i32, i32* %20, align 4
  %41 = and i32 %40, 15
  %42 = load i32, i32* %22, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %41, %43
  store i32 %44, i32* %32, align 4
  %45 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  store i32 %45, i32* %31, align 4
  %46 = load i32, i32* %24, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  store i32 %49, i32* %30, align 4
  %50 = load i32, i32* @AP_FLAG_TLEN_NO_DATA, align 4
  %51 = load i32, i32* %31, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %31, align 4
  store i32 0, i32* %33, align 4
  br label %63

53:                                               ; preds = %38
  %54 = load i32, i32* @AP_PROTO_DMA, align 4
  store i32 %54, i32* %30, align 4
  %55 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %56 = load i32, i32* @AP_FLAG_TDIR_TO_DEV, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %31, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %31, align 4
  %60 = load i32, i32* %24, align 4
  %61 = ashr i32 %60, 9
  %62 = and i32 %61, 65535
  store i32 %62, i32* %33, align 4
  br label %63

63:                                               ; preds = %53, %48
  store i32 0, i32* %34, align 4
  br label %103

64:                                               ; preds = %14
  %65 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  store i32 %65, i32* %31, align 4
  %66 = load i32, i32* %24, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @ATA_NCQ_NON_DATA, align 4
  store i32 %69, i32* %29, align 4
  %70 = load i32, i32* @ATA_NCQ_ZAC_MGMT_OUT, align 4
  store i32 %70, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %71 = load i32, i32* @AP_FLAG_TLEN_NO_DATA, align 4
  %72 = load i32, i32* %31, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %31, align 4
  br label %96

74:                                               ; preds = %64
  %75 = load i32, i32* @ATA_SEND_FPDMA_QUEUED, align 4
  store i32 %75, i32* %29, align 4
  %76 = load i32, i32* @ATA_SFPDMA_ZAC_MGMT_OUT, align 4
  %77 = shl i32 %76, 8
  store i32 %77, i32* %33, align 4
  %78 = load i32, i32* @AP_FLAG_TLEN_FEAT, align 4
  %79 = load i32, i32* @AP_FLAG_TDIR_TO_DEV, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %31, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %31, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp eq i32 %83, 33554432
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 0, i32* %32, align 4
  br label %95

86:                                               ; preds = %74
  %87 = load i32, i32* %24, align 4
  %88 = icmp sle i32 %87, 33553920
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %24, align 4
  %91 = ashr i32 %90, 9
  %92 = and i32 %91, 65535
  store i32 %92, i32* %32, align 4
  br label %94

93:                                               ; preds = %86
  store i32 1, i32* %35, align 4
  br label %134

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %85
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i32, i32* %20, align 4
  %98 = and i32 %97, 15
  %99 = load i32, i32* %22, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %98, %100
  store i32 %101, i32* %34, align 4
  %102 = load i32, i32* @AP_PROTO_FPDMA, align 4
  store i32 %102, i32* %30, align 4
  br label %103

103:                                              ; preds = %96, %63
  %104 = load i32, i32* @AP_EXTEND, align 4
  %105 = load i32, i32* %30, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %30, align 4
  %107 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %15, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %17, align 8
  %110 = bitcast void (%struct.cam_periph*, %union.ccb*)* %109 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %111 = load i32, i32* %24, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %30, align 4
  %121 = load i32, i32* %31, align 4
  %122 = load i32, i32* %32, align 4
  %123 = load i32, i32* %33, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %29, align 4
  %126 = load i32, i32* %34, align 4
  %127 = load i32*, i32** %23, align 8
  %128 = load i32, i32* %24, align 4
  %129 = load i32*, i32** %25, align 8
  %130 = load i64, i64* %26, align 8
  %131 = load i32, i32* @SSD_FULL_SIZE, align 4
  %132 = load i32, i32* %28, align 4
  %133 = call i32 @scsi_ata_pass(%struct.ccb_scsiio* %107, i32 %108, void (%struct.cam_periph.0*, %union.ccb.1*)* %110, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 0, i32 0, i32 %126, i32 0, i32* %127, i32 %128, i32* %129, i64 %130, i32 0, i32 %131, i32 %132)
  store i32 %133, i32* %35, align 4
  br label %134

134:                                              ; preds = %117, %93
  %135 = load i32, i32* %35, align 4
  ret i32 %135
}

declare dso_local i32 @scsi_ata_pass(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
