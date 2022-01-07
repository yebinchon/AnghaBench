; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_poll_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_poll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.cam_ed*, %struct.TYPE_5__* }
%struct.cam_ed = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { %struct.cam_sim* }
%struct.cam_sim = type { %struct.cam_devq* }
%struct.cam_devq = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_poll_setup(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca %struct.cam_ed*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %7 = load %union.ccb*, %union.ccb** %2, align 8
  %8 = bitcast %union.ccb* %7 to %struct.TYPE_7__*
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, 10
  store i32 %11, i32* %3, align 4
  %12 = load %union.ccb*, %union.ccb** %2, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_7__*
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.cam_sim*, %struct.cam_sim** %18, align 8
  store %struct.cam_sim* %19, %struct.cam_sim** %4, align 8
  %20 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %21 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %20, i32 0, i32 0
  %22 = load %struct.cam_devq*, %struct.cam_devq** %21, align 8
  store %struct.cam_devq* %22, %struct.cam_devq** %5, align 8
  %23 = load %union.ccb*, %union.ccb** %2, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.cam_ed*, %struct.cam_ed** %27, align 8
  store %struct.cam_ed* %28, %struct.cam_ed** %6, align 8
  %29 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %30 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %29, i32 0, i32 1
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %33 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %54, %1
  %38 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %39 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %44 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %3, align 4
  %51 = icmp sgt i32 %50, 0
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i1 [ false, %42 ], [ %51, %48 ]
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %56 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %55, i32 0, i32 1
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = call i32 @DELAY(i32 100)
  %59 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %60 = call i32 @xpt_sim_poll(%struct.cam_sim* %59)
  %61 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %62 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %61, i32 0, i32 1
  %63 = call i32 @mtx_lock(i32* %62)
  br label %37

64:                                               ; preds = %52
  %65 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %66 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %71 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %70, i32 0, i32 1
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @xpt_sim_poll(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
