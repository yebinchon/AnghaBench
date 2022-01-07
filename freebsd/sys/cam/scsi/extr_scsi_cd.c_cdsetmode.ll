; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsetmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsetmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.cd_mode_params = type { i32, i64, i32 }
%struct.ccb_scsiio = type { i32 }
%struct.cd_softc = type { i32, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.scsi_mode_header_10 = type { i64, i32 }
%struct.scsi_mode_header_6 = type { i32, i64 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@cd_mode_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.cd_mode_params*)* @cdsetmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdsetmode(%struct.cam_periph* %0, %struct.cd_mode_params* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.cd_mode_params*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.cd_softc*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_mode_header_10*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_mode_header_6*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %struct.cd_mode_params* %1, %struct.cd_mode_params** %4, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cd_softc*
  store %struct.cd_softc* %17, %struct.cd_softc** %6, align 8
  %18 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %19 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %20 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %18, i32 %19)
  store %union.ccb* %20, %union.ccb** %7, align 8
  %21 = load %union.ccb*, %union.ccb** %7, align 8
  %22 = bitcast %union.ccb* %21 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %22, %struct.ccb_scsiio** %5, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %24 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %29 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %33 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 10
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %40 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %42, %struct.scsi_mode_header_10** %11, align 8
  %43 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %11, align 8
  %44 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @scsi_2btoul(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %11, align 8
  %48 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @scsi_ulto2b(i32 0, i32 %49)
  %51 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %11, align 8
  %52 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %70

57:                                               ; preds = %35
  %58 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %59 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %61, %struct.scsi_mode_header_6** %13, align 8
  %62 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %13, align 8
  %63 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %13, align 8
  %67 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %13, align 8
  %69 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %57, %38
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %73 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @min(i32 %71, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %77 = load i32, i32* @cd_retry_count, align 4
  %78 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %79 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %80 = getelementptr inbounds %struct.cd_mode_params, %struct.cd_mode_params* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @SSD_FULL_SIZE, align 4
  %85 = call i32 @scsi_mode_select_len(%struct.ccb_scsiio* %76, i32 %77, i32* null, i32 %78, i32 1, i32 0, i64 %81, i32 %82, i32 %83, i32 %84, i32 50000)
  %86 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %87 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %86, i32 0, i32 1
  %88 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %89 = load i32, i32* @links, align 4
  %90 = call i32 @STAILQ_INSERT_TAIL(i32* %87, %struct.cd_mode_params* %88, i32 %89)
  %91 = load %union.ccb*, %union.ccb** %7, align 8
  %92 = load i32, i32* @cderror, align 4
  %93 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %94 = load i32, i32* @SF_RETRY_UA, align 4
  %95 = call i32 @cdrunccb(%union.ccb* %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load %union.ccb*, %union.ccb** %7, align 8
  %97 = call i32 @xpt_release_ccb(%union.ccb* %96)
  %98 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %99 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %98, i32 0, i32 1
  %100 = load %struct.cd_mode_params*, %struct.cd_mode_params** %4, align 8
  %101 = load i32, i32* @cd_mode_params, align 4
  %102 = load i32, i32* @links, align 4
  %103 = call i32 @STAILQ_REMOVE(i32* %99, %struct.cd_mode_params* %100, i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_mode_select_len(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cd_mode_params*, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.cd_mode_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
