; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_ata_pass_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_ata_pass_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.ata_pass_16 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@ATA_PASS_16 = common dso_local global i32 0, align 4
@ATA_DEV_LBA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_ata_pass_16(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32* %12, i32 %13, i32 %14, i32 %15) #0 {
  %17 = alloca %struct.ccb_scsiio*, align 8
  %18 = alloca i32, align 4
  %19 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.ata_pass_16*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %17, align 8
  store i32 %1, i32* %18, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %19, align 8
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32* %12, i32** %29, align 8
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  store i32 %15, i32* %32, align 4
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to %struct.ata_pass_16*
  store %struct.ata_pass_16* %37, %struct.ata_pass_16** %33, align 8
  %38 = load i32, i32* @ATA_PASS_16, align 4
  %39 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %40 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %39, i32 0, i32 15
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %22, align 4
  %42 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %43 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %23, align 4
  %45 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %46 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %24, align 4
  %48 = ashr i32 %47, 8
  %49 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %50 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %24, align 4
  %52 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %53 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %25, align 4
  %55 = ashr i32 %54, 8
  %56 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %57 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %25, align 4
  %59 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %60 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %63 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %26, align 4
  %65 = ashr i32 %64, 8
  %66 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %67 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %26, align 4
  %69 = ashr i32 %68, 16
  %70 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %71 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ATA_DEV_LBA, align 4
  %73 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %74 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* @AP_EXTEND, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %16
  %80 = load i32, i32* %26, align 4
  %81 = ashr i32 %80, 24
  %82 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %83 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %26, align 4
  %85 = ashr i32 %84, 32
  %86 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %87 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %26, align 4
  %89 = ashr i32 %88, 40
  %90 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %91 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 4
  br label %100

92:                                               ; preds = %16
  %93 = load i32, i32* %26, align 4
  %94 = ashr i32 %93, 24
  %95 = and i32 %94, 15
  %96 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %97 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %79
  %101 = load i32, i32* %27, align 4
  %102 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %103 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %102, i32 0, i32 13
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %28, align 4
  %105 = load %struct.ata_pass_16*, %struct.ata_pass_16** %33, align 8
  %106 = getelementptr inbounds %struct.ata_pass_16, %struct.ata_pass_16* %105, i32 0, i32 14
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %19, align 8
  %110 = bitcast void (%struct.cam_periph*, %union.ccb*)* %109 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32*, i32** %29, align 8
  %114 = load i32, i32* %30, align 4
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %32, align 4
  %117 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %107, i32 %108, void (%struct.cam_periph.0*, %union.ccb.1*)* %110, i32 %111, i32 %112, i32* %113, i32 %114, i32 %115, i32 64, i32 %116)
  ret void
}

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
