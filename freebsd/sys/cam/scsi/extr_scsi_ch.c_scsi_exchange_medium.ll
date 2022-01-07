; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_exchange_medium.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_scsi_exchange_medium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_exchange_medium = type { i32, i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@EXCHANGE_MEDIUM = common dso_local global i32 0, align 4
@EXCHANGE_MEDIUM_INV1 = common dso_local global i32 0, align 4
@EXCHANGE_MEDIUM_INV2 = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_exchange_medium(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.scsi_exchange_medium*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %13, align 8
  store i32 %1, i32* %14, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.scsi_exchange_medium*
  store %struct.scsi_exchange_medium* %29, %struct.scsi_exchange_medium** %25, align 8
  %30 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %31 = call i32 @bzero(%struct.scsi_exchange_medium* %30, i32 24)
  %32 = load i32, i32* @EXCHANGE_MEDIUM, align 4
  %33 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %34 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %37 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @scsi_ulto2b(i32 %35, i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %42 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @scsi_ulto2b(i32 %40, i32 %43)
  %45 = load i32, i32* %19, align 4
  %46 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %47 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @scsi_ulto2b(i32 %45, i32 %48)
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %52 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scsi_ulto2b(i32 %50, i32 %53)
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %12
  %58 = load i32, i32* @EXCHANGE_MEDIUM_INV1, align 4
  %59 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %60 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %12
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @EXCHANGE_MEDIUM_INV2, align 4
  %68 = load %struct.scsi_exchange_medium*, %struct.scsi_exchange_medium** %25, align 8
  %69 = getelementptr inbounds %struct.scsi_exchange_medium, %struct.scsi_exchange_medium* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  %76 = bitcast void (%struct.cam_periph*, %union.ccb*)* %75 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %77 = load i32, i32* @CAM_DIR_NONE, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %24, align 4
  %81 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %73, i32 %74, void (%struct.cam_periph.0*, %union.ccb.1*)* %76, i32 %77, i32 %78, i32* null, i32 0, i32 %79, i32 24, i32 %80)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_exchange_medium*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
