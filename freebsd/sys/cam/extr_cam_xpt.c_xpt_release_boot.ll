; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.xpt_task = type { i32 }

@xsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@xpt_finishconfig_task = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_release_boot() #0 {
  %1 = alloca %struct.xpt_task*, align 8
  %2 = call i32 (...) @xpt_lock_buses()
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), align 8
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 1), align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 1), align 8
  %11 = call i32 (...) @xpt_unlock_buses()
  %12 = load i32, i32* @M_CAMXPT, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = call %struct.xpt_task* @malloc(i32 4, i32 %12, i32 %13)
  store %struct.xpt_task* %14, %struct.xpt_task** %1, align 8
  %15 = load %struct.xpt_task*, %struct.xpt_task** %1, align 8
  %16 = icmp ne %struct.xpt_task* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.xpt_task*, %struct.xpt_task** %1, align 8
  %19 = getelementptr inbounds %struct.xpt_task, %struct.xpt_task* %18, i32 0, i32 0
  %20 = load i32, i32* @xpt_finishconfig_task, align 4
  %21 = load %struct.xpt_task*, %struct.xpt_task** %1, align 8
  %22 = call i32 @TASK_INIT(i32* %19, i32 0, i32 %20, %struct.xpt_task* %21)
  %23 = load i32, i32* @taskqueue_thread, align 4
  %24 = load %struct.xpt_task*, %struct.xpt_task** %1, align 8
  %25 = getelementptr inbounds %struct.xpt_task, %struct.xpt_task* %24, i32 0, i32 0
  %26 = call i32 @taskqueue_enqueue(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %17, %10
  br label %30

28:                                               ; preds = %7, %0
  %29 = call i32 (...) @xpt_unlock_buses()
  br label %30

30:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local %struct.xpt_task* @malloc(i32, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.xpt_task*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
