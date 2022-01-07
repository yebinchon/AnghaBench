; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chielem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chielem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%union.ccb = type { i32 }
%struct.ch_softc = type { i32 }

@CH_TIMEOUT_INITIALIZE_ELEMENT_STATUS = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@chdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cherror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i32)* @chielem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chielem(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.ch_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @CH_TIMEOUT_INITIALIZE_ELEMENT_STATUS, align 4
  store i32 %11, i32* %4, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = mul i32 %13, 1000
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %10
  store i32 0, i32* %7, align 4
  %16 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %17 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ch_softc*
  store %struct.ch_softc* %19, %struct.ch_softc** %6, align 8
  %20 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %21 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %22 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %20, i32 %21)
  store %union.ccb* %22, %union.ccb** %5, align 8
  %23 = load %union.ccb*, %union.ccb** %5, align 8
  %24 = bitcast %union.ccb* %23 to i32*
  %25 = load i32, i32* @chdone, align 4
  %26 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %27 = load i32, i32* @SSD_FULL_SIZE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @scsi_initialize_element_status(i32* %24, i32 1, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %union.ccb*, %union.ccb** %5, align 8
  %31 = load i32, i32* @cherror, align 4
  %32 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %33 = load i32, i32* @SF_RETRY_UA, align 4
  %34 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %35 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cam_periph_runccb(%union.ccb* %30, i32 %31, i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %union.ccb*, %union.ccb** %5, align 8
  %39 = call i32 @xpt_release_ccb(%union.ccb* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_initialize_element_status(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
