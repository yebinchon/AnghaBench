; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cam_periph_acquire(%struct.cam_periph* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  %5 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %6 = icmp eq %struct.cam_periph* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOENT, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @xpt_lock_buses()
  %12 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %13 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %20 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %9
  %24 = call i32 (...) @xpt_unlock_buses()
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
