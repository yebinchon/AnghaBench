; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdstopunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdstopunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i32)* @cdstopunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdstopunit(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %9 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %7, i32 %8)
  store %union.ccb* %9, %union.ccb** %5, align 8
  %10 = load %union.ccb*, %union.ccb** %5, align 8
  %11 = bitcast %union.ccb* %10 to i32*
  %12 = load i32, i32* @cd_retry_count, align 4
  %13 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @SSD_FULL_SIZE, align 4
  %18 = call i32 @scsi_start_stop(i32* %11, i32 %12, i32* null, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 50000)
  %19 = load %union.ccb*, %union.ccb** %5, align 8
  %20 = load i32, i32* @cderror, align 4
  %21 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %22 = load i32, i32* @SF_RETRY_UA, align 4
  %23 = call i32 @cdrunccb(%union.ccb* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %union.ccb*, %union.ccb** %5, align 8
  %25 = call i32 @xpt_release_ccb(%union.ccb* %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_start_stop(i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
