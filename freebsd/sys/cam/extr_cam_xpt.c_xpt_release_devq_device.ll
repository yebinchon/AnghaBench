; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_devq_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_devq_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"xpt_release_devq_device(%d, %d) %u->%u\0A\00", align 1
@CAM_DEV_REL_ON_COMPLETE = common dso_local global i32 0, align 4
@CAM_DEV_REL_TIMEOUT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_ed*, i64, i32)* @xpt_release_devq_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpt_release_devq_device(%struct.cam_ed* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cam_ed* %0, %struct.cam_ed** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %8 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %16 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %25 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %28, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @CAM_DEBUG_DEV(%struct.cam_ed* %15, i32 %16, i8* %31)
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %35 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %42 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %40, %3
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %49 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %47
  store i64 %53, i64* %51, align 8
  %54 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %55 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %46
  %61 = load i32, i32* @CAM_DEV_REL_ON_COMPLETE, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %64 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %68 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CAM_DEV_REL_TIMEOUT_PENDING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %60
  %74 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %75 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %74, i32 0, i32 2
  %76 = call i32 @callout_stop(i32* %75)
  %77 = load i32, i32* @CAM_DEV_REL_TIMEOUT_PENDING, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %80 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %73, %60
  %84 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %85 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %90 = call i32 @xpt_schedule_devq(%struct.TYPE_8__* %88, %struct.cam_ed* %89)
  br label %92

91:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @CAM_DEBUG_DEV(%struct.cam_ed*, i32, i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xpt_schedule_devq(%struct.TYPE_8__*, %struct.cam_ed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
