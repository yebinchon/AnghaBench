; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_extract_sense_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_extract_sense_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.scsi_sense_data }
%struct.scsi_sense_data = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_SENSE_PHYS = common dso_local global i32 0, align 4
@CAM_SENSE_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_extract_sense_ccb(%union.ccb* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.scsi_sense_data*, align 8
  store %union.ccb* %0, %union.ccb** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %union.ccb*, %union.ccb** %7, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XPT_SCSI_IO, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %51, label %19

19:                                               ; preds = %5
  %20 = load %union.ccb*, %union.ccb** %7, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CAM_STATUS_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %51, label %28

28:                                               ; preds = %19
  %29 = load %union.ccb*, %union.ccb** %7, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCSI_STATUS_CHECK_COND, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %28
  %36 = load %union.ccb*, %union.ccb** %7, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %union.ccb*, %union.ccb** %7, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CAM_SENSE_PHYS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35, %28, %19, %5
  store i32 0, i32* %6, align 4
  br label %91

52:                                               ; preds = %43
  %53 = load %union.ccb*, %union.ccb** %7, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CAM_SENSE_PTR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %union.ccb*, %union.ccb** %7, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = bitcast %struct.scsi_sense_data* %63 to %struct.scsi_sense_data**
  %65 = call i32 @bcopy(%struct.scsi_sense_data** %64, %struct.scsi_sense_data** %12, i32 8)
  br label %70

66:                                               ; preds = %52
  %67 = load %union.ccb*, %union.ccb** %7, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store %struct.scsi_sense_data* %69, %struct.scsi_sense_data** %12, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %12, align 8
  %72 = load %union.ccb*, %union.ccb** %7, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %union.ccb*, %union.ccb** %7, align 8
  %77 = bitcast %union.ccb* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %75, %79
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @scsi_extract_sense_len(%struct.scsi_sense_data* %71, i64 %80, i32* %81, i32* %82, i32* %83, i32* %84, i32 1)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %91

90:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %89, %51
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @bcopy(%struct.scsi_sense_data**, %struct.scsi_sense_data**, i32) #1

declare dso_local i32 @scsi_extract_sense_len(%struct.scsi_sense_data*, i64, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
