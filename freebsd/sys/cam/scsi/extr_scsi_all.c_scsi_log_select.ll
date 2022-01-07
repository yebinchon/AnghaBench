; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_log_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_log_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_log_select = type { i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@LOG_SELECT = common dso_local global i32 0, align 4
@SLS_PAGE_CODE = common dso_local global i32 0, align 4
@SLS_SP = common dso_local global i32 0, align 4
@SLS_PCR = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_log_select(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scsi_log_select*, align 8
  %24 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %26 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.scsi_log_select*
  store %struct.scsi_log_select* %28, %struct.scsi_log_select** %23, align 8
  %29 = load %struct.scsi_log_select*, %struct.scsi_log_select** %23, align 8
  %30 = call i32 @bzero(%struct.scsi_log_select* %29, i32 16)
  %31 = load i32, i32* @LOG_SELECT, align 4
  %32 = load %struct.scsi_log_select*, %struct.scsi_log_select** %23, align 8
  %33 = getelementptr inbounds %struct.scsi_log_select, %struct.scsi_log_select* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @SLS_PAGE_CODE, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.scsi_log_select*, %struct.scsi_log_select** %23, align 8
  %38 = getelementptr inbounds %struct.scsi_log_select, %struct.scsi_log_select* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %11
  %42 = load i32, i32* @SLS_SP, align 4
  %43 = load %struct.scsi_log_select*, %struct.scsi_log_select** %23, align 8
  %44 = getelementptr inbounds %struct.scsi_log_select, %struct.scsi_log_select* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %11
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @SLS_PCR, align 4
  %52 = load %struct.scsi_log_select*, %struct.scsi_log_select** %23, align 8
  %53 = getelementptr inbounds %struct.scsi_log_select, %struct.scsi_log_select* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.scsi_log_select*, %struct.scsi_log_select** %23, align 8
  %59 = getelementptr inbounds %struct.scsi_log_select, %struct.scsi_log_select* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_ulto2b(i32 %57, i32 %60)
  store i32 16, i32* %24, align 4
  %62 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %65 = bitcast void (%struct.cam_periph*, %union.ccb*)* %64 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %66 = load i32, i32* @CAM_DIR_OUT, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %22, align 4
  %73 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %62, i32 %63, void (%struct.cam_periph.0*, %union.ccb.1*)* %65, i32 %66, i32 %67, i32* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_log_select*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
