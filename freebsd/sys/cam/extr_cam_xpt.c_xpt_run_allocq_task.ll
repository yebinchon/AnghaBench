; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_run_allocq_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_run_allocq_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }

@CAM_PERIPH_RUN_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xpt_run_allocq_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_run_allocq_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_periph*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.cam_periph*
  store %struct.cam_periph* %7, %struct.cam_periph** %5, align 8
  %8 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %9 = call i32 @cam_periph_lock(%struct.cam_periph* %8)
  %10 = load i32, i32* @CAM_PERIPH_RUN_TASK, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %13 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %17 = call i32 @xpt_run_allocq(%struct.cam_periph* %16, i32 1)
  %18 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %19 = call i32 @cam_periph_unlock(%struct.cam_periph* %18)
  %20 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %21 = call i32 @cam_periph_release(%struct.cam_periph* %20)
  ret void
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @xpt_run_allocq(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
