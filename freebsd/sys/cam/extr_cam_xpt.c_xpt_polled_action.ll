; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_polled_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_polled_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cam_ed* }
%struct.cam_ed = type { i32 }

@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_polled_action(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_ed*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %5 = load %union.ccb*, %union.ccb** %2, align 8
  %6 = bitcast %union.ccb* %5 to %struct.TYPE_4__*
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %8, 10
  store i32 %9, i32* %3, align 4
  %10 = load %union.ccb*, %union.ccb** %2, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.cam_ed*, %struct.cam_ed** %14, align 8
  store %struct.cam_ed* %15, %struct.cam_ed** %4, align 8
  %16 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %17 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %union.ccb*, %union.ccb** %2, align 8
  %20 = call i32 @xpt_poll_setup(%union.ccb* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %union.ccb*, %union.ccb** %2, align 8
  %25 = call i32 @xpt_action(%union.ccb* %24)
  %26 = load %union.ccb*, %union.ccb** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @xpt_pollwait(%union.ccb* %26, i32 %27)
  br label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %31 = load %union.ccb*, %union.ccb** %2, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %36 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  ret void
}

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_poll_setup(%union.ccb*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_pollwait(%union.ccb*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
