; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_freeze_devq_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_freeze_devq_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.cam_devq* }
%struct.cam_devq = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"xpt_freeze_devq_device(%d) %u->%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cam_ed*, i64)* @xpt_freeze_devq_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xpt_freeze_devq_device(%struct.cam_ed* %0, i64 %1) #0 {
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca i64, align 8
  store %struct.cam_ed* %0, %struct.cam_ed** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %8 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.cam_devq*, %struct.cam_devq** %10, align 8
  store %struct.cam_devq* %11, %struct.cam_devq** %5, align 8
  %12 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %13 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %12, i32 0, i32 1
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  %16 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %17 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %25 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %28, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @CAM_DEBUG_DEV(%struct.cam_ed* %16, i32 %17, i8* %31)
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %35 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %33
  store i64 %39, i64* %37, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %41 = call i64 @device_is_queued(%struct.cam_ed* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %2
  %44 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %45 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %44, i32 0, i32 0
  %46 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %47 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @camq_remove(i32* %45, i32 %49)
  br label %51

51:                                               ; preds = %43, %2
  %52 = load i64, i64* %6, align 8
  ret i64 %52
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @CAM_DEBUG_DEV(%struct.cam_ed*, i32, i8*) #1

declare dso_local i64 @device_is_queued(%struct.cam_ed*) #1

declare dso_local i32 @camq_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
