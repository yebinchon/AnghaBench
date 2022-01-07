; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_cam_devq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_cam_devq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_devq = type { i32 }

@M_CAMDEVQ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cam_devq_alloc: - cannot malloc!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cam_devq* @cam_devq_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cam_devq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_devq*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_CAMDEVQ, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call i64 @malloc(i32 4, i32 %7, i32 %8)
  %10 = inttoptr i64 %9 to %struct.cam_devq*
  store %struct.cam_devq* %10, %struct.cam_devq** %6, align 8
  %11 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %12 = icmp eq %struct.cam_devq* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.cam_devq* null, %struct.cam_devq** %3, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @cam_devq_init(%struct.cam_devq* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %23 = load i32, i32* @M_CAMDEVQ, align 4
  %24 = call i32 @free(%struct.cam_devq* %22, i32 %23)
  store %struct.cam_devq* null, %struct.cam_devq** %3, align 8
  br label %27

25:                                               ; preds = %15
  %26 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  store %struct.cam_devq* %26, %struct.cam_devq** %3, align 8
  br label %27

27:                                               ; preds = %25, %21, %13
  %28 = load %struct.cam_devq*, %struct.cam_devq** %3, align 8
  ret %struct.cam_devq* %28
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @cam_devq_init(%struct.cam_devq*, i32, i32) #1

declare dso_local i32 @free(%struct.cam_devq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
