; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_load_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_load_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_load_unload = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@LOAD_UNLOAD = common dso_local global i32 0, align 4
@SLU_IMMED = common dso_local global i32 0, align 4
@SLU_EOT = common dso_local global i32 0, align 4
@SLU_RETEN = common dso_local global i32 0, align 4
@SLU_LOAD = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_load_unload(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.scsi_load_unload*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %11, align 8
  store i32 %1, i32* %12, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_load_unload*
  store %struct.scsi_load_unload* %25, %struct.scsi_load_unload** %21, align 8
  %26 = load %struct.scsi_load_unload*, %struct.scsi_load_unload** %21, align 8
  %27 = call i32 @bzero(%struct.scsi_load_unload* %26, i32 12)
  %28 = load i32, i32* @LOAD_UNLOAD, align 4
  %29 = load %struct.scsi_load_unload*, %struct.scsi_load_unload** %21, align 8
  %30 = getelementptr inbounds %struct.scsi_load_unload, %struct.scsi_load_unload* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %10
  %34 = load i32, i32* @SLU_IMMED, align 4
  %35 = load %struct.scsi_load_unload*, %struct.scsi_load_unload** %21, align 8
  %36 = getelementptr inbounds %struct.scsi_load_unload, %struct.scsi_load_unload* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %10
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @SLU_EOT, align 4
  %42 = load %struct.scsi_load_unload*, %struct.scsi_load_unload** %21, align 8
  %43 = getelementptr inbounds %struct.scsi_load_unload, %struct.scsi_load_unload* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @SLU_RETEN, align 4
  %51 = load %struct.scsi_load_unload*, %struct.scsi_load_unload** %21, align 8
  %52 = getelementptr inbounds %struct.scsi_load_unload, %struct.scsi_load_unload* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @SLU_LOAD, align 4
  %60 = load %struct.scsi_load_unload*, %struct.scsi_load_unload** %21, align 8
  %61 = getelementptr inbounds %struct.scsi_load_unload, %struct.scsi_load_unload* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %13, align 8
  %68 = bitcast void (%struct.cam_periph*, %union.ccb*)* %67 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %69 = load i32, i32* @CAM_DIR_NONE, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %65, i32 %66, void (%struct.cam_periph.0*, %union.ccb.1*)* %68, i32 %69, i32 %70, i32* null, i32 0, i32 %71, i32 12, i32 %72)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_load_unload*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
