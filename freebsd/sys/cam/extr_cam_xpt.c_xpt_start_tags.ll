; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_start_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_start_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_3__*, %struct.cam_ed* }
%struct.TYPE_3__ = type { %struct.cam_sim* }
%struct.cam_sim = type { i32 }
%struct.cam_ed = type { i32, i32, i32, i32 }
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
define dso_local void @xpt_start_tags(%struct.cam_path* %0) #0 {
  %2 = alloca %struct.cam_path*, align 8
  %3 = alloca %struct.ccb_relsim, align 8
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_path* %0, %struct.cam_path** %2, align 8
  %7 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %8 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %7, i32 0, i32 1
  %9 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  store %struct.cam_ed* %9, %struct.cam_ed** %4, align 8
  %10 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %11 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.cam_sim*, %struct.cam_sim** %13, align 8
  store %struct.cam_sim* %14, %struct.cam_sim** %5, align 8
  %15 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %18 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %22 = call i32 @xpt_freeze_devq(%struct.cam_path* %21, i32 1)
  %23 = load i32, i32* @SID_CmdQue, align 4
  %24 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %25 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %29 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %34 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %1
  %37 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %38 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %41 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @min(i32 %39, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %36, %32
  %45 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @xpt_dev_ccbq_resize(%struct.cam_path* %45, i32 %46)
  %48 = load i32, i32* @AC_GETDEV_CHANGED, align 4
  %49 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %50 = call i32 @xpt_async(i32 %48, %struct.cam_path* %49, i32* null)
  %51 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 4
  %52 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %53 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %54 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %51, %struct.cam_path* %52, i32 %53)
  %55 = load i32, i32* @XPT_REL_SIMQ, align 4
  %56 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @RELSIM_RELEASE_AFTER_QEMPTY, align 4
  %59 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %3, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = bitcast %struct.ccb_relsim* %3 to %union.ccb*
  %64 = call i32 @xpt_action(%union.ccb* %63)
  ret void
}

declare dso_local i32 @xpt_freeze_devq(%struct.cam_path*, i32) #1

declare dso_local i32 @min(i32, i32) #1

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
