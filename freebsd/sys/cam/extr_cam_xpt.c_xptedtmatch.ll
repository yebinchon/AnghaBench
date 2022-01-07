; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedtmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.ccb_dev_match = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.cam_eb = type { i32 }

@CAM_DEV_POS_BUS = common dso_local global i32 0, align 4
@CAM_BUS_GENERATION = common dso_local global i64 0, align 8
@xsoftc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CAM_DEV_MATCH_LIST_CHANGED = common dso_local global i32 0, align 4
@xptedtbusfunc = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_dev_match*)* @xptedtmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptedtmatch(%struct.ccb_dev_match* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccb_dev_match*, align 8
  %4 = alloca %struct.cam_eb*, align 8
  %5 = alloca i32, align 4
  store %struct.ccb_dev_match* %0, %struct.ccb_dev_match** %3, align 8
  %6 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %7 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = call i32 (...) @xpt_lock_buses()
  %9 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %10 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %18 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  %24 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %25 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @CAM_BUS_GENERATION, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xsoftc, i32 0, i32 0), align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = call i32 (...) @xpt_unlock_buses()
  %35 = load i32, i32* @CAM_DEV_MATCH_LIST_CHANGED, align 4
  %36 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %37 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %64

38:                                               ; preds = %23
  %39 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %40 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to %struct.cam_eb*
  store %struct.cam_eb* %44, %struct.cam_eb** %4, align 8
  %45 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %46 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %50

49:                                               ; preds = %16, %1
  store %struct.cam_eb* null, %struct.cam_eb** %4, align 8
  br label %50

50:                                               ; preds = %49, %38
  %51 = call i32 (...) @xpt_unlock_buses()
  %52 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %53 = load i32, i32* @xptedtbusfunc, align 4
  %54 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %55 = call i32 @xptbustraverse(%struct.cam_eb* %52, i32 %53, %struct.ccb_dev_match* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @CAM_DEV_MATCH_LAST, align 4
  %60 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %3, align 8
  %61 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %33
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @xptbustraverse(%struct.cam_eb*, i32, %struct.ccb_dev_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
