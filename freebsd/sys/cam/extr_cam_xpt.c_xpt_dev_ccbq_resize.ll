; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_dev_ccbq_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_dev_ccbq_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.cam_ed* }
%struct.cam_ed = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@SID_CmdQue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_dev_ccbq_resize(%struct.cam_path* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_ed*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %8 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %7, i32 0, i32 0
  %9 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  store %struct.cam_ed* %9, %struct.cam_ed** %6, align 8
  %10 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %11 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %18 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %17, i32 0, i32 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cam_ccbq_resize(i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %22 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %29 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %36 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SID_CmdQue, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %2
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.cam_ed*, %struct.cam_ed** %6, align 8
  %44 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cam_ccbq_resize(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
