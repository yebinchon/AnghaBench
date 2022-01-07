; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_simq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_simq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32, %struct.cam_devq*, i32 }
%struct.cam_devq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAM_SIM_REL_TIMEOUT_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_release_simq(%struct.cam_sim* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_devq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %7 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %6, i32 0, i32 1
  %8 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  store %struct.cam_devq* %8, %struct.cam_devq** %5, align 8
  %9 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %10 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %13 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %20 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %26 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %32 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAM_SIM_REL_TIMEOUT_PENDING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %39 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %38, i32 0, i32 2
  %40 = call i32 @callout_stop(i32* %39)
  %41 = load i32, i32* @CAM_SIM_REL_TIMEOUT_PENDING, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %44 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %37, %30
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %52 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %51, i32 0, i32 1
  %53 = load %struct.cam_devq*, %struct.cam_devq** %52, align 8
  %54 = call i32 @xpt_run_devq(%struct.cam_devq* %53)
  br label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55, %24
  %57 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %58 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xpt_run_devq(%struct.cam_devq*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
