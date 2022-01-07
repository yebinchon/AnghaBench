; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_schedule_devq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_schedule_devq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_devq = type { i32, i32 }
%struct.cam_ed = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_devq*, %struct.cam_ed*)* @xpt_schedule_devq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpt_schedule_devq(%struct.cam_devq* %0, %struct.cam_ed* %1) #0 {
  %3 = alloca %struct.cam_devq*, align 8
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca i32, align 4
  store %struct.cam_devq* %0, %struct.cam_devq** %3, align 8
  store %struct.cam_ed* %1, %struct.cam_ed** %4, align 8
  %6 = load %struct.cam_devq*, %struct.cam_devq** %3, align 8
  %7 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %6, i32 0, i32 1
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %11 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %18 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %24 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.cam_devq*, %struct.cam_devq** %3, align 8
  %31 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %30, i32 0, i32 0
  %32 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %33 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %32, i32 0, i32 1
  %34 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %35 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @CAMQ_GET_PRIO(%struct.TYPE_4__* %36)
  %38 = call i32 @xpt_schedule_dev(i32* %31, i32* %33, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %22, %16, %2
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @xpt_schedule_dev(i32*, i32*, i32) #1

declare dso_local i32 @CAMQ_GET_PRIO(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
