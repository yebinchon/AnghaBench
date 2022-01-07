; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_stop_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_stop_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_3__*, %struct.cam_ed* }
%struct.TYPE_3__ = type { %struct.cam_sim* }
%struct.cam_sim = type { i32 }
%struct.cam_ed = type { i32, i64, i32 }
%struct.ccb_relsim = type { i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@SID_CmdQue = common dso_local global i32 0, align 4
@AC_GETDEV_CHANGED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_REL_SIMQ = common dso_local global i32 0, align 4
@RELSIM_RELEASE_AFTER_QEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_stop_tags(%struct.cam_path* %0) #0 {
  %2 = alloca %struct.cam_path*, align 8
  %3 = alloca %struct.ccb_relsim, align 8
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %2, align 8
  %6 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %7 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %6, i32 0, i32 1
  %8 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  store %struct.cam_ed* %8, %struct.cam_ed** %4, align 8
  %9 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %10 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.cam_sim*, %struct.cam_sim** %12, align 8
  store %struct.cam_sim* %13, %struct.cam_sim** %5, align 8
  %14 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %17 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %21 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %23 = call i32 @xpt_freeze_devq(%struct.cam_path* %22, i32 1)
  %24 = load i32, i32* @SID_CmdQue, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %27 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %31 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %32 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xpt_dev_ccbq_resize(%struct.cam_path* %30, i32 %33)
  %35 = load i32, i32* @AC_GETDEV_CHANGED, align 4
  %36 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %37 = call i32 @xpt_async(i32 %35, %struct.cam_path* %36, i32* null)
  %38 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 4
  %39 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %40 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %41 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %38, %struct.cam_path* %39, i32 %40)
  %42 = load i32, i32* @XPT_REL_SIMQ, align 4
  %43 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @RELSIM_RELEASE_AFTER_QEMPTY, align 4
  %46 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = bitcast %struct.ccb_relsim* %3 to %union.ccb*
  %51 = call i32 @xpt_action(%union.ccb* %50)
  ret void
}

declare dso_local i32 @xpt_freeze_devq(%struct.cam_path*, i32) #1

declare dso_local i32 @xpt_dev_ccbq_resize(%struct.cam_path*, i32) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
