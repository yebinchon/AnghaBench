; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_send_diagnostic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_send_diagnostic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_send_diag = type { i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@SEND_DIAGNOSTIC = common dso_local global i32 0, align 4
@SSD_SELF_TEST_CODE_NONE = common dso_local global i32 0, align 4
@SSD_SELF_TEST_CODE_SHIFT = common dso_local global i32 0, align 4
@SSD_SELF_TEST_CODE_MASK = common dso_local global i32 0, align 4
@SSD_UNITOFFL = common dso_local global i32 0, align 4
@SSD_DEVOFFL = common dso_local global i32 0, align 4
@SSD_SELFTEST = common dso_local global i32 0, align 4
@SSD_PF = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_send_diagnostic(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i64 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.ccb_scsiio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.scsi_send_diag*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %14, align 8
  store i32 %1, i32* %15, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i64 %10, i64* %24, align 8
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %29 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.scsi_send_diag*
  store %struct.scsi_send_diag* %31, %struct.scsi_send_diag** %27, align 8
  %32 = load %struct.scsi_send_diag*, %struct.scsi_send_diag** %27, align 8
  %33 = call i32 @memset(%struct.scsi_send_diag* %32, i32 0, i32 12)
  %34 = load i32, i32* @SEND_DIAGNOSTIC, align 4
  %35 = load %struct.scsi_send_diag*, %struct.scsi_send_diag** %27, align 8
  %36 = getelementptr inbounds %struct.scsi_send_diag, %struct.scsi_send_diag* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = load i32, i32* @SSD_SELF_TEST_CODE_NONE, align 4
  store i32 %40, i32* %22, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* @SSD_SELF_TEST_CODE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @SSD_SELF_TEST_CODE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @SSD_UNITOFFL, align 4
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = or i32 %46, %53
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @SSD_DEVOFFL, align 4
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = or i32 %54, %61
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @SSD_SELFTEST, align 4
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = or i32 %62, %69
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @SSD_PF, align 4
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %70, %77
  %79 = load %struct.scsi_send_diag*, %struct.scsi_send_diag** %27, align 8
  %80 = getelementptr inbounds %struct.scsi_send_diag, %struct.scsi_send_diag* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %24, align 8
  %82 = load %struct.scsi_send_diag*, %struct.scsi_send_diag** %27, align 8
  %83 = getelementptr inbounds %struct.scsi_send_diag, %struct.scsi_send_diag* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scsi_ulto2b(i64 %81, i32 %84)
  %86 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %16, align 8
  %89 = bitcast void (%struct.cam_periph*, %union.ccb*)* %88 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %90 = load i64, i64* %24, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %96

94:                                               ; preds = %76
  %95 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* %17, align 4
  %99 = load i32*, i32** %23, align 8
  %100 = load i64, i64* %24, align 8
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* %26, align 4
  %103 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %86, i32 %87, void (%struct.cam_periph.0*, %union.ccb.1*)* %89, i32 %97, i32 %98, i32* %99, i64 %100, i32 %101, i32 12, i32 %102)
  ret void
}

declare dso_local i32 @memset(%struct.scsi_send_diag*, i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i64, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
