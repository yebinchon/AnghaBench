; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_devq_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_devq_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cam_devq* }
%struct.cam_devq = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"xpt_release_devq_timeout\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xpt_release_devq_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_release_devq_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cam_ed*
  store %struct.cam_ed* %6, %struct.cam_ed** %3, align 8
  %7 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %8 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %9 = call i32 @CAM_DEBUG_DEV(%struct.cam_ed* %7, i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %11 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.cam_devq*, %struct.cam_devq** %13, align 8
  store %struct.cam_devq* %14, %struct.cam_devq** %4, align 8
  %15 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %16 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %15, i32 0, i32 0
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* %16, i32 %17)
  %19 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i64 @xpt_release_devq_device(%struct.cam_ed* %19, i32 1, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %25 = call i32 @xpt_run_devq(%struct.cam_devq* %24)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @CAM_DEBUG_DEV(%struct.cam_ed*, i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @xpt_release_devq_device(%struct.cam_ed*, i32, i32) #1

declare dso_local i32 @xpt_run_devq(%struct.cam_devq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
