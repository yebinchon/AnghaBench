; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_set_scsi_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_set_scsi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.scsi_sense_data, i64 }
%struct.scsi_sense_data = type { i32, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Error %d!\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@SSD_CURRENT_ERROR = common dso_local global i32 0, align 4
@SSD_ERRCODE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, %union.ccb*, i64, i64, i64, i64)* @aac_set_scsi_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_set_scsi_error(%struct.aac_softc* %0, %union.ccb* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.aac_softc*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scsi_sense_data*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %7, align 8
  store %union.ccb* %1, %union.ccb** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %union.ccb*, %union.ccb** %8, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.scsi_sense_data* %16, %struct.scsi_sense_data** %13, align 8
  %17 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %18 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @fwprintf(%struct.aac_softc* %17, i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %22 = load %union.ccb*, %union.ccb** %8, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %union.ccb*, %union.ccb** %8, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @SCSI_STATUS_CHECK_COND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %6
  %33 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %34 = load %union.ccb*, %union.ccb** %8, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %union.ccb*, %union.ccb** %8, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %union.ccb*, %union.ccb** %8, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bzero(%struct.scsi_sense_data* %41, i32 %45)
  %47 = load i32, i32* @SSD_CURRENT_ERROR, align 4
  %48 = load i32, i32* @SSD_ERRCODE_VALID, align 4
  %49 = or i32 %47, %48
  %50 = load %union.ccb*, %union.ccb** %8, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %13, align 8
  %56 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %union.ccb*, %union.ccb** %8, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 14
  br i1 %61, label %62, label %71

62:                                               ; preds = %32
  %63 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %13, align 8
  %64 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %63, i32 0, i32 1
  store i32 6, i32* %64, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %13, align 8
  %67 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %13, align 8
  %70 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %32
  br label %72

72:                                               ; preds = %71, %6
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, i64) #1

declare dso_local i32 @bzero(%struct.scsi_sense_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
