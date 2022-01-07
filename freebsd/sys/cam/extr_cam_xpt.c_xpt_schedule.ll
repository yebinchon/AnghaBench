; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xpt_schedule\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_schedule(%struct.cam_periph* %0, i64 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i64, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %6 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %9 = call i32 @CAM_DEBUG(i32 %7, i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @cam_periph_assert(%struct.cam_periph* %10, i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %21 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %23 = call i32 @xpt_run_allocq(%struct.cam_periph* %22, i32 0)
  br label %24

24:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_run_allocq(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
