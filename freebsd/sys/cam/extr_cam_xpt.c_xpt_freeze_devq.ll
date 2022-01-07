; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_freeze_devq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_freeze_devq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.cam_ed* }
%struct.cam_ed = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cam_devq* }
%struct.cam_devq = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"xpt_freeze_devq(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_freeze_devq(%struct.cam_path* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_ed*, align 8
  %6 = alloca %struct.cam_devq*, align 8
  %7 = alloca i32, align 4
  store %struct.cam_path* %0, %struct.cam_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %9 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %8, i32 0, i32 0
  %10 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  store %struct.cam_ed* %10, %struct.cam_ed** %5, align 8
  %11 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %12 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.cam_devq*, %struct.cam_devq** %14, align 8
  store %struct.cam_devq* %15, %struct.cam_devq** %6, align 8
  %16 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %17 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %20 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @CAM_DEBUG(%struct.cam_path* %19, i32 %20, i8* %23)
  %25 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @xpt_freeze_devq_device(%struct.cam_ed* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %29 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_freeze_devq_device(%struct.cam_ed*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
