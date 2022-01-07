; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_camisr_runqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_camisr_runqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_doneq = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ccb_hdr = type { i32 }

@cam_num_doneqs = common dso_local global i32 0, align 4
@cam_doneqs = common dso_local global %struct.cam_doneq* null, align 8
@sim_links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @camisr_runqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camisr_runqueue() #0 {
  %1 = alloca %struct.ccb_hdr*, align 8
  %2 = alloca %struct.cam_doneq*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @cam_num_doneqs, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = load %struct.cam_doneq*, %struct.cam_doneq** @cam_doneqs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %9, i64 %11
  store %struct.cam_doneq* %12, %struct.cam_doneq** %2, align 8
  %13 = load %struct.cam_doneq*, %struct.cam_doneq** %2, align 8
  %14 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  br label %16

16:                                               ; preds = %21, %8
  %17 = load %struct.cam_doneq*, %struct.cam_doneq** %2, align 8
  %18 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %17, i32 0, i32 1
  %19 = call %struct.ccb_hdr* @STAILQ_FIRST(i32* %18)
  store %struct.ccb_hdr* %19, %struct.ccb_hdr** %1, align 8
  %20 = icmp ne %struct.ccb_hdr* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.cam_doneq*, %struct.cam_doneq** %2, align 8
  %23 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %22, i32 0, i32 1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sim_links, i32 0, i32 0), align 4
  %25 = call i32 @STAILQ_REMOVE_HEAD(i32* %23, i32 %24)
  %26 = load %struct.cam_doneq*, %struct.cam_doneq** %2, align 8
  %27 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load %struct.ccb_hdr*, %struct.ccb_hdr** %1, align 8
  %30 = call i32 @xpt_done_process(%struct.ccb_hdr* %29)
  %31 = load %struct.cam_doneq*, %struct.cam_doneq** %2, align 8
  %32 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %31, i32 0, i32 0
  %33 = call i32 @mtx_lock(i32* %32)
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.cam_doneq*, %struct.cam_doneq** %2, align 8
  %36 = getelementptr inbounds %struct.cam_doneq, %struct.cam_doneq* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %4

41:                                               ; preds = %4
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.ccb_hdr* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_done_process(%struct.ccb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
