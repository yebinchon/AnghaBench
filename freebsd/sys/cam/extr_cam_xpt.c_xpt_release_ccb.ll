; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cam_periph*, %struct.cam_ed* }
%struct.cam_periph = type { i32 }
%struct.cam_ed = type { i32 }

@CAM_DEBUG_XPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"xpt_release_ccb\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_release_ccb(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %5 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %6 = call i32 @CAM_DEBUG_PRINT(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %union.ccb*, %union.ccb** %2, align 8
  %8 = bitcast %union.ccb* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @xpt_path_assert(%struct.TYPE_4__* %10, i32 %11)
  %13 = load %union.ccb*, %union.ccb** %2, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.cam_ed*, %struct.cam_ed** %17, align 8
  store %struct.cam_ed* %18, %struct.cam_ed** %3, align 8
  %19 = load %union.ccb*, %union.ccb** %2, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.cam_periph*, %struct.cam_periph** %23, align 8
  store %struct.cam_periph* %24, %struct.cam_periph** %4, align 8
  %25 = load %union.ccb*, %union.ccb** %2, align 8
  %26 = call i32 @xpt_free_ccb(%union.ccb* %25)
  %27 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %28 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %32 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %31, i32 0, i32 0
  %33 = call i32 @cam_ccbq_release_opening(i32* %32)
  %34 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %35 = call i32 @xpt_run_allocq(%struct.cam_periph* %34, i32 0)
  ret void
}

declare dso_local i32 @CAM_DEBUG_PRINT(i32, i8*) #1

declare dso_local i32 @xpt_path_assert(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @cam_ccbq_release_opening(i32*) #1

declare dso_local i32 @xpt_run_allocq(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
