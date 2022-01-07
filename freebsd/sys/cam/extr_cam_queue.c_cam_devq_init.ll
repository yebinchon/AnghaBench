; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_cam_devq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_cam_devq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_devq = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"CAM queue lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cam_devq_init(%struct.cam_devq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cam_devq* %0, %struct.cam_devq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %9 = call i32 @bzero(%struct.cam_devq* %8, i32 24)
  %10 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %11 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %10, i32 0, i32 3
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  %14 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %15 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %14, i32 0, i32 2
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @camq_init(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %23 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %25 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @bzero(%struct.cam_devq*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @camq_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
