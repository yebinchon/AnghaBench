; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chposition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.changer_position = type { i64, i32, i32 }
%struct.ch_softc = type { i32*, i32*, i32, i32 }
%union.ccb = type { i32 }

@CHET_DT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@chdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@CP_INVERT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CH_TIMEOUT_POSITION_TO_ELEMENT = common dso_local global i32 0, align 4
@cherror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.changer_position*)* @chposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chposition(%struct.cam_periph* %0, %struct.changer_position* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.changer_position*, align 8
  %6 = alloca %struct.ch_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.changer_position* %1, %struct.changer_position** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ch_softc*
  store %struct.ch_softc* %13, %struct.ch_softc** %6, align 8
  %14 = load %struct.changer_position*, %struct.changer_position** %5, align 8
  %15 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHET_DT, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.changer_position*, %struct.changer_position** %5, align 8
  %23 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.changer_position*, %struct.changer_position** %5, align 8
  %29 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp sgt i32 %24, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @ENODEV, align 4
  store i32 %36, i32* %3, align 4
  br label %87

37:                                               ; preds = %21
  %38 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %39 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.changer_position*, %struct.changer_position** %5, align 8
  %42 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.changer_position*, %struct.changer_position** %5, align 8
  %47 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %51 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %52 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %50, i32 %51)
  store %union.ccb* %52, %union.ccb** %8, align 8
  %53 = load %union.ccb*, %union.ccb** %8, align 8
  %54 = bitcast %union.ccb* %53 to i32*
  %55 = load i32, i32* @chdone, align 4
  %56 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %57 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %58 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.changer_position*, %struct.changer_position** %5, align 8
  %62 = getelementptr inbounds %struct.changer_position, %struct.changer_position* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CP_INVERT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %37
  %68 = load i32, i32* @TRUE, align 4
  br label %71

69:                                               ; preds = %37
  %70 = load i32, i32* @FALSE, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load i32, i32* @SSD_FULL_SIZE, align 4
  %74 = load i32, i32* @CH_TIMEOUT_POSITION_TO_ELEMENT, align 4
  %75 = call i32 @scsi_position_to_element(i32* %54, i32 1, i32 %55, i32 %56, i32 %59, i32 %60, i32 %72, i32 %73, i32 %74)
  %76 = load %union.ccb*, %union.ccb** %8, align 8
  %77 = load i32, i32* @cherror, align 4
  %78 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %79 = load i32, i32* @SF_RETRY_UA, align 4
  %80 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %81 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @cam_periph_runccb(%union.ccb* %76, i32 %77, i32 %78, i32 %79, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %union.ccb*, %union.ccb** %8, align 8
  %85 = call i32 @xpt_release_ccb(%union.ccb* %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %71, %35, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_position_to_element(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
