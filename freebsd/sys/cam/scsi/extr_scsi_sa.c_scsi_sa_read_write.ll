; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_sa_read_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sa.c_scsi_sa_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_sa_rw = type { i64, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@SCSI_RW_DIRMASK = common dso_local global i32 0, align 4
@SCSI_RW_READ = common dso_local global i32 0, align 4
@SA_READ = common dso_local global i32 0, align 4
@SA_WRITE = common dso_local global i32 0, align 4
@SAR_SLI = common dso_local global i32 0, align 4
@SARW_FIXED = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@SCSI_RW_BIO = common dso_local global i32 0, align 4
@CAM_DATA_BIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sa_read_write(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.scsi_sa_rw*, align 8
  %26 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %13, align 8
  store i32 %1, i32* %14, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @SCSI_RW_DIRMASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SCSI_RW_READ, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %26, align 4
  %33 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %34 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.scsi_sa_rw*
  store %struct.scsi_sa_rw* %36, %struct.scsi_sa_rw** %25, align 8
  %37 = load i32, i32* %26, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %12
  %40 = load i32, i32* @SA_READ, align 4
  br label %43

41:                                               ; preds = %12
  %42 = load i32, i32* @SA_WRITE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.scsi_sa_rw*, %struct.scsi_sa_rw** %25, align 8
  %46 = getelementptr inbounds %struct.scsi_sa_rw, %struct.scsi_sa_rw* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.scsi_sa_rw*, %struct.scsi_sa_rw** %25, align 8
  %48 = getelementptr inbounds %struct.scsi_sa_rw, %struct.scsi_sa_rw* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load i32, i32* %26, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @SAR_SLI, align 4
  %56 = load %struct.scsi_sa_rw*, %struct.scsi_sa_rw** %25, align 8
  %57 = getelementptr inbounds %struct.scsi_sa_rw, %struct.scsi_sa_rw* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %51, %43
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @SARW_FIXED, align 4
  %65 = load %struct.scsi_sa_rw*, %struct.scsi_sa_rw** %25, align 8
  %66 = getelementptr inbounds %struct.scsi_sa_rw, %struct.scsi_sa_rw* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %20, align 4
  %71 = load %struct.scsi_sa_rw*, %struct.scsi_sa_rw** %25, align 8
  %72 = getelementptr inbounds %struct.scsi_sa_rw, %struct.scsi_sa_rw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @scsi_ulto3b(i32 %70, i32 %73)
  %75 = load %struct.scsi_sa_rw*, %struct.scsi_sa_rw** %25, align 8
  %76 = getelementptr inbounds %struct.scsi_sa_rw, %struct.scsi_sa_rw* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  %80 = bitcast void (%struct.cam_periph*, %union.ccb*)* %79 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %81 = load i32, i32* %26, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @CAM_DIR_IN, align 4
  br label %87

85:                                               ; preds = %69
  %86 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @SCSI_RW_BIO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @CAM_DATA_BIO, align 4
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = or i32 %88, %97
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %21, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* %24, align 4
  %104 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %77, i32 %78, void (%struct.cam_periph.0*, %union.ccb.1*)* %80, i32 %98, i32 %99, i32* %100, i32 %101, i32 %102, i32 24, i32 %103)
  ret void
}

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
