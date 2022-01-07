; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_mode_select_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_mode_select_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_mode_select_6 = type { i32, i32, i32 }
%struct.scsi_mode_select_10 = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@MODE_SELECT_6 = common dso_local global i32 0, align 4
@SMS_PF = common dso_local global i32 0, align 4
@SMS_SP = common dso_local global i32 0, align 4
@MODE_SELECT_10 = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_mode_select_len(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.scsi_mode_select_6*, align 8
  %25 = alloca %struct.scsi_mode_select_10*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %26 = load i32, i32* %19, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %62

28:                                               ; preds = %11
  %29 = load i32, i32* %20, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %33 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.scsi_mode_select_6*
  store %struct.scsi_mode_select_6* %35, %struct.scsi_mode_select_6** %24, align 8
  %36 = load %struct.scsi_mode_select_6*, %struct.scsi_mode_select_6** %24, align 8
  %37 = call i32 @bzero(%struct.scsi_mode_select_6* %36, i32 12)
  %38 = load i32, i32* @MODE_SELECT_6, align 4
  %39 = load %struct.scsi_mode_select_6*, %struct.scsi_mode_select_6** %24, align 8
  %40 = getelementptr inbounds %struct.scsi_mode_select_6, %struct.scsi_mode_select_6* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32, i32* @SMS_PF, align 4
  %45 = load %struct.scsi_mode_select_6*, %struct.scsi_mode_select_6** %24, align 8
  %46 = getelementptr inbounds %struct.scsi_mode_select_6, %struct.scsi_mode_select_6* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %31
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @SMS_SP, align 4
  %54 = load %struct.scsi_mode_select_6*, %struct.scsi_mode_select_6** %24, align 8
  %55 = getelementptr inbounds %struct.scsi_mode_select_6, %struct.scsi_mode_select_6* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %19, align 4
  %60 = load %struct.scsi_mode_select_6*, %struct.scsi_mode_select_6** %24, align 8
  %61 = getelementptr inbounds %struct.scsi_mode_select_6, %struct.scsi_mode_select_6* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 12, i32* %23, align 4
  br label %96

62:                                               ; preds = %28, %11
  %63 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %64 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = bitcast i32* %65 to %struct.scsi_mode_select_10*
  store %struct.scsi_mode_select_10* %66, %struct.scsi_mode_select_10** %25, align 8
  %67 = load %struct.scsi_mode_select_10*, %struct.scsi_mode_select_10** %25, align 8
  %68 = bitcast %struct.scsi_mode_select_10* %67 to %struct.scsi_mode_select_6*
  %69 = call i32 @bzero(%struct.scsi_mode_select_6* %68, i32 12)
  %70 = load i32, i32* @MODE_SELECT_10, align 4
  %71 = load %struct.scsi_mode_select_10*, %struct.scsi_mode_select_10** %25, align 8
  %72 = getelementptr inbounds %struct.scsi_mode_select_10, %struct.scsi_mode_select_10* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load i32, i32* @SMS_PF, align 4
  %77 = load %struct.scsi_mode_select_10*, %struct.scsi_mode_select_10** %25, align 8
  %78 = getelementptr inbounds %struct.scsi_mode_select_10, %struct.scsi_mode_select_10* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %62
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @SMS_SP, align 4
  %86 = load %struct.scsi_mode_select_10*, %struct.scsi_mode_select_10** %25, align 8
  %87 = getelementptr inbounds %struct.scsi_mode_select_10, %struct.scsi_mode_select_10* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %19, align 4
  %92 = load %struct.scsi_mode_select_10*, %struct.scsi_mode_select_10** %25, align 8
  %93 = getelementptr inbounds %struct.scsi_mode_select_10, %struct.scsi_mode_select_10* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @scsi_ulto2b(i32 %91, i32 %94)
  store i32 12, i32* %23, align 4
  br label %96

96:                                               ; preds = %90, %58
  %97 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %100 = bitcast void (%struct.cam_periph*, %union.ccb*)* %99 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %101 = load i32, i32* @CAM_DIR_OUT, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %22, align 4
  %108 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %97, i32 %98, void (%struct.cam_periph.0*, %union.ccb.1*)* %100, i32 %101, i32 %102, i32* %103, i32 %104, i32 %105, i32 %106, i32 %107)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_mode_select_6*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
