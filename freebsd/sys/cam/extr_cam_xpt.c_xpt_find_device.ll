; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i64, i32 }
%struct.cam_et = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_ed* (%struct.cam_et*, i64)* @xpt_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_ed* @xpt_find_device(%struct.cam_et* %0, i64 %1) #0 {
  %3 = alloca %struct.cam_et*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cam_ed*, align 8
  store %struct.cam_et* %0, %struct.cam_et** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.cam_et*, %struct.cam_et** %3, align 8
  %7 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.cam_et*, %struct.cam_et** %3, align 8
  %13 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %12, i32 0, i32 0
  %14 = call %struct.cam_ed* @TAILQ_FIRST(i32* %13)
  store %struct.cam_ed* %14, %struct.cam_ed** %5, align 8
  br label %15

15:                                               ; preds = %30, %2
  %16 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %17 = icmp ne %struct.cam_ed* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %26 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %34

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %32 = load i32, i32* @links, align 4
  %33 = call %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed* %31, i32 %32)
  store %struct.cam_ed* %33, %struct.cam_ed** %5, align 8
  br label %15

34:                                               ; preds = %24, %15
  %35 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  ret %struct.cam_ed* %35
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.cam_ed* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
