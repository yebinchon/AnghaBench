; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_schedule_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_schedule_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camq = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@CAM_DEBUG_XPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"xpt_schedule_dev\0A\00", align 1
@CAM_UNQUEUED_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"changed priority to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Inserting onto queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camq*, %struct.TYPE_4__*, i64)* @xpt_schedule_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpt_schedule_dev(%struct.camq* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca %struct.camq*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.camq* %0, %struct.camq** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %10 = call i32 @CAM_DEBUG_PRINT(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CAM_UNQUEUED_INDEX, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.camq*, %struct.camq** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @camq_change_priority(%struct.camq* %24, i64 %27, i64 %28)
  %30 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %31 = load i64, i64* %6, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @CAM_DEBUG_PRINT(i32 %30, i8* %32)
  store i32 1, i32* %7, align 4
  br label %35

34:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %23
  br label %56

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %46 = call i32 @CAM_DEBUG_PRINT(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.camq*, %struct.camq** %4, align 8
  %48 = getelementptr inbounds %struct.camq, %struct.camq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.camq*, %struct.camq** %4, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = call i32 @camq_insert(%struct.camq* %53, %struct.TYPE_4__* %54)
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %44, %35
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @CAM_DEBUG_PRINT(i32, i8*) #1

declare dso_local i32 @camq_change_priority(%struct.camq*, i64, i64) #1

declare dso_local i32 @camq_insert(%struct.camq*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
