; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_read_defects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_da.c_scsi_read_defects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_read_defect_data_10 = type { i32, i32, i8*, i32 }
%struct.scsi_read_defect_data_12 = type { i32, i32, i8*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@SRDD10_MAX_LENGTH = common dso_local global i64 0, align 8
@READ_DEFECT_DATA_10 = common dso_local global i32 0, align 4
@READ_DEFECT_DATA_12 = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_defects(%struct.ccb_scsiio* %0, i64 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i8* %3, i8* %4, i64 %5, i8** %6, i64 %7, i32 %8, i8* %9, i64 %10) #0 {
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i64, align 8
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.scsi_read_defect_data_10*, align 8
  %25 = alloca %struct.scsi_read_defect_data_12*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %12, align 8
  store i64 %1, i64* %13, align 8
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i8** %6, i8*** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i64 %10, i64* %22, align 8
  %26 = load i32, i32* %20, align 4
  %27 = icmp sle i32 %26, 10
  br i1 %27, label %28, label %55

28:                                               ; preds = %11
  %29 = load i64, i64* %17, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i64, i64* %19, align 8
  %33 = load i64, i64* @SRDD10_MAX_LENGTH, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %37 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to %struct.scsi_read_defect_data_10*
  store %struct.scsi_read_defect_data_10* %39, %struct.scsi_read_defect_data_10** %24, align 8
  store i8* inttoptr (i64 24 to i8*), i8** %23, align 8
  %40 = load %struct.scsi_read_defect_data_10*, %struct.scsi_read_defect_data_10** %24, align 8
  %41 = bitcast %struct.scsi_read_defect_data_10* %40 to %struct.scsi_read_defect_data_12*
  %42 = load i8*, i8** %23, align 8
  %43 = call i32 @bzero(%struct.scsi_read_defect_data_12* %41, i8* %42)
  %44 = load i32, i32* @READ_DEFECT_DATA_10, align 4
  %45 = load %struct.scsi_read_defect_data_10*, %struct.scsi_read_defect_data_10** %24, align 8
  %46 = getelementptr inbounds %struct.scsi_read_defect_data_10, %struct.scsi_read_defect_data_10* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.scsi_read_defect_data_10*, %struct.scsi_read_defect_data_10** %24, align 8
  %49 = getelementptr inbounds %struct.scsi_read_defect_data_10, %struct.scsi_read_defect_data_10* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %19, align 8
  %51 = load %struct.scsi_read_defect_data_10*, %struct.scsi_read_defect_data_10** %24, align 8
  %52 = getelementptr inbounds %struct.scsi_read_defect_data_10, %struct.scsi_read_defect_data_10* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scsi_ulto2b(i64 %50, i32 %53)
  br label %79

55:                                               ; preds = %31, %28, %11
  %56 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %57 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to %struct.scsi_read_defect_data_12*
  store %struct.scsi_read_defect_data_12* %59, %struct.scsi_read_defect_data_12** %25, align 8
  store i8* inttoptr (i64 24 to i8*), i8** %23, align 8
  %60 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %25, align 8
  %61 = load i8*, i8** %23, align 8
  %62 = call i32 @bzero(%struct.scsi_read_defect_data_12* %60, i8* %61)
  %63 = load i32, i32* @READ_DEFECT_DATA_12, align 4
  %64 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %25, align 8
  %65 = getelementptr inbounds %struct.scsi_read_defect_data_12, %struct.scsi_read_defect_data_12* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %25, align 8
  %68 = getelementptr inbounds %struct.scsi_read_defect_data_12, %struct.scsi_read_defect_data_12* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %25, align 8
  %71 = getelementptr inbounds %struct.scsi_read_defect_data_12, %struct.scsi_read_defect_data_12* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @scsi_ulto4b(i64 %69, i32 %72)
  %74 = load i64, i64* %17, align 8
  %75 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %25, align 8
  %76 = getelementptr inbounds %struct.scsi_read_defect_data_12, %struct.scsi_read_defect_data_12* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @scsi_ulto4b(i64 %74, i32 %77)
  br label %79

79:                                               ; preds = %55, %35
  %80 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %83 = bitcast void (%struct.cam_periph*, %union.ccb*)* %82 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %84 = load i32, i32* @CAM_DIR_IN, align 4
  %85 = load i8*, i8** %15, align 8
  %86 = load i8**, i8*** %18, align 8
  %87 = load i64, i64* %19, align 8
  %88 = load i8*, i8** %21, align 8
  %89 = load i8*, i8** %23, align 8
  %90 = load i64, i64* %22, align 8
  %91 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %80, i64 %81, void (%struct.cam_periph.0*, %union.ccb.1*)* %83, i32 %84, i8* %85, i8** %86, i64 %87, i8* %88, i8* %89, i64 %90)
  ret void
}

declare dso_local i32 @bzero(%struct.scsi_read_defect_data_12*, i8*) #1

declare dso_local i32 @scsi_ulto2b(i64, i32) #1

declare dso_local i32 @scsi_ulto4b(i64, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i64, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i8*, i8**, i64, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
