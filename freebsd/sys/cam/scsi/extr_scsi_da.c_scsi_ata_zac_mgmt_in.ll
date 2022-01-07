; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_ata_zac_mgmt_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_ata_zac_mgmt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@AP_FLAG_TDIR_FROM_DEV = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@ATA_ZAC_MANAGEMENT_IN = common dso_local global i32 0, align 4
@AP_PROTO_DMA = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_FEAT = common dso_local global i32 0, align 4
@ATA_RECV_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_RFPDMA_ZAC_MGMT_IN = common dso_local global i32 0, align 4
@AP_PROTO_FPDMA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_ata_zac_mgmt_in(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32* %10, i64 %11, i32 %12, i32 %13) #0 {
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
  %36 = load i32, i32* @AP_FLAG_TDIR_FROM_DEV, align 4
  %37 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %34, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %14
  %42 = load i32, i32* @ATA_ZAC_MANAGEMENT_IN, align 4
  store i32 %42, i32* %29, align 4
  %43 = load i32, i32* %20, align 4
  %44 = and i32 %43, 15
  %45 = load i32, i32* %22, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %44, %46
  store i32 %47, i32* %31, align 4
  %48 = load i32, i32* %24, align 4
  %49 = ashr i32 %48, 9
  store i32 %49, i32* %32, align 4
  %50 = load i32, i32* @AP_PROTO_DMA, align 4
  store i32 %50, i32* %30, align 4
  %51 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %52 = load i32, i32* %34, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %34, align 4
  store i32 0, i32* %33, align 4
  br label %80

54:                                               ; preds = %14
  %55 = load i32, i32* @AP_FLAG_TLEN_FEAT, align 4
  %56 = load i32, i32* %34, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %34, align 4
  %58 = load i32, i32* @ATA_RECV_FPDMA_QUEUED, align 4
  store i32 %58, i32* %29, align 4
  %59 = load i32, i32* @ATA_RFPDMA_ZAC_MGMT_IN, align 4
  %60 = shl i32 %59, 8
  store i32 %60, i32* %32, align 4
  %61 = load i32, i32* %24, align 4
  %62 = icmp eq i32 %61, 33554432
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %31, align 4
  br label %73

64:                                               ; preds = %54
  %65 = load i32, i32* %24, align 4
  %66 = icmp sle i32 %65, 33553920
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %24, align 4
  %69 = ashr i32 %68, 9
  %70 = and i32 %69, 65535
  store i32 %70, i32* %31, align 4
  br label %72

71:                                               ; preds = %64
  store i32 1, i32* %35, align 4
  br label %106

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32, i32* %20, align 4
  %75 = and i32 %74, 15
  %76 = load i32, i32* %22, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  store i32 %78, i32* %33, align 4
  %79 = load i32, i32* @AP_PROTO_FPDMA, align 4
  store i32 %79, i32* %30, align 4
  br label %80

80:                                               ; preds = %73, %41
  %81 = load i32, i32* @AP_EXTEND, align 4
  %82 = load i32, i32* %30, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %30, align 4
  %84 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %15, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %17, align 8
  %87 = bitcast void (%struct.cam_periph*, %union.ccb*)* %86 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %88 = load i32, i32* @CAM_DIR_IN, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %34, align 4
  %92 = load i32, i32* %31, align 4
  %93 = load i32, i32* %32, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %29, align 4
  %96 = load i32, i32* %33, align 4
  %97 = load i32*, i32** %23, align 8
  %98 = load i32, i32* %24, align 4
  %99 = ashr i32 %98, 9
  %100 = mul nsw i32 %99, 512
  %101 = load i32*, i32** %25, align 8
  %102 = load i64, i64* %26, align 8
  %103 = load i32, i32* @SSD_FULL_SIZE, align 4
  %104 = load i32, i32* %28, align 4
  %105 = call i32 @scsi_ata_pass(%struct.ccb_scsiio* %84, i32 %85, void (%struct.cam_periph.0*, %union.ccb.1*)* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 0, i32 0, i32 %96, i32 0, i32* %97, i32 %100, i32* %101, i64 %102, i32 0, i32 %103, i32 %104)
  store i32 %105, i32* %35, align 4
  br label %106

106:                                              ; preds = %80, %71
  %107 = load i32, i32* %35, align 4
  ret i32 %107
}

declare dso_local i32 @scsi_ata_pass(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
