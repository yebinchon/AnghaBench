; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_bus_settle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_bus_settle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.ccb_getdevstats = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GDEV_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_periph_bus_settle(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccb_getdevstats, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %5, i32 0, i32 1
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %11 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %6, i32 %9, i32 %10)
  %12 = load i32, i32* @XPT_GDEV_STATS, align 4
  %13 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = bitcast %struct.ccb_getdevstats* %5 to %union.ccb*
  %16 = call i32 @xpt_action(%union.ccb* %15)
  %17 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %18 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %5, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cam_periph_freeze_after_event(%struct.cam_periph* %17, i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_periph_freeze_after_event(%struct.cam_periph*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
