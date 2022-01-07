; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdgetmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdgetmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.cd_mode_params = type { i32, i32, i64 }
%struct.ccb_scsiio = type { i32 }
%struct.cd_softc = type { i32, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.scsi_mode_header_10 = type { i32 }
%struct.scsi_mode_header_6 = type { i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SMS_PAGE_CTRL_CURRENT = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@cd_mode_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"allocated modepage %d length %d < returned length %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.cd_mode_params*, i32)* @cdgetmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdgetmode(%struct.cam_periph* %0, %struct.cd_mode_params* %1, i32 %2) #0 {
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.cd_mode_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %struct.cd_softc*, align 8
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_mode_header_10*, align 8
  %14 = alloca %struct.scsi_mode_header_6*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.cd_mode_params* %1, %struct.cd_mode_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %16 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.cd_softc*
  store %struct.cd_softc* %18, %struct.cd_softc** %8, align 8
  %19 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %20 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %21 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %19, i32 %20)
  store %union.ccb* %21, %union.ccb** %9, align 8
  %22 = load %union.ccb*, %union.ccb** %9, align 8
  %23 = bitcast %union.ccb* %22 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %23, %struct.ccb_scsiio** %7, align 8
  %24 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %25 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %28 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %30 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  br label %35

34:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %38 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min(i32 %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %42 = load i32, i32* @cd_retry_count, align 4
  %43 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %44 = load i32, i32* @SMS_PAGE_CTRL_CURRENT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %47 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %51 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SSD_FULL_SIZE, align 4
  %54 = call i32 @scsi_mode_sense_len(%struct.ccb_scsiio* %41, i32 %42, i32* null, i32 %43, i32 0, i32 %44, i32 %45, i64 %48, i32 %49, i32 %52, i32 %53, i32 50000)
  %55 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %56 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %55, i32 0, i32 1
  %57 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %58 = load i32, i32* @links, align 4
  %59 = call i32 @STAILQ_INSERT_TAIL(i32* %56, %struct.cd_mode_params* %57, i32 %58)
  %60 = load %union.ccb*, %union.ccb** %9, align 8
  %61 = load i32, i32* @cderror, align 4
  %62 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %63 = load i32, i32* @SF_RETRY_UA, align 4
  %64 = call i32 @cdrunccb(%union.ccb* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %union.ccb*, %union.ccb** %9, align 8
  %66 = call i32 @xpt_release_ccb(%union.ccb* %65)
  %67 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  %68 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %67, i32 0, i32 1
  %69 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %70 = load i32, i32* @cd_mode_params, align 4
  %71 = load i32, i32* @links, align 4
  %72 = call i32 @STAILQ_REMOVE(i32* %68, %struct.cd_mode_params* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %35
  %76 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %77 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %82 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %84, %struct.scsi_mode_header_10** %13, align 8
  %85 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %13, align 8
  %86 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @scsi_2btoul(i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %105

93:                                               ; preds = %75
  %94 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %95 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %97, %struct.scsi_mode_header_6** %14, align 8
  %98 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %14, align 8
  %99 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %93, %80
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %108 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %113 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.cd_mode_params*, %struct.cd_mode_params** %5, align 8
  %117 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @xpt_print(i32 %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %118, i32 %119)
  %121 = load i32, i32* @ENOSPC, align 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %111, %105
  br label %123

123:                                              ; preds = %122, %35
  %124 = load i32, i32* %11, align 4
  ret i32 %124
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_mode_sense_len(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cd_mode_params*, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.cd_mode_params*, i32, i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @xpt_print(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
