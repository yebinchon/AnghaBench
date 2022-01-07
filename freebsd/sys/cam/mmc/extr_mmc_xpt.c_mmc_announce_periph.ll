; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_announce_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_announce_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.ccb_pathinq = type { i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_7__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mmc_announce_periph: called\0A\00", align 1
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"XPT info: CLK %04X, ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @mmc_announce_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_announce_periph(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_pathinq, align 4
  %4 = alloca %struct.ccb_trans_settings, align 4
  %5 = alloca %struct.cam_path*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %6 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %7 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %6, i32 0, i32 0
  %8 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  store %struct.cam_path* %8, %struct.cam_path** %5, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @cam_periph_assert(%struct.cam_periph* %9, i32 %10)
  %12 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %13 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %12, i32 0, i32 0
  %14 = load %struct.cam_path*, %struct.cam_path** %13, align 8
  %15 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %16 = call i32 @CAM_DEBUG(%struct.cam_path* %14, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  %18 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %19 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %20 = call i32 @xpt_setup_ccb(%struct.TYPE_8__* %17, %struct.cam_path* %18, i32 %19)
  %21 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %22 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %25 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.ccb_trans_settings* %4 to %union.ccb*
  %27 = call i32 @xpt_action(%union.ccb* %26)
  %28 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CAM_STATUS_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @CAM_REQ_CMP, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %38 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %37, i32 0, i32 0
  %39 = load %struct.cam_path*, %struct.cam_path** %38, align 8
  %40 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %3, %struct.cam_path* %39)
  %41 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_8__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
