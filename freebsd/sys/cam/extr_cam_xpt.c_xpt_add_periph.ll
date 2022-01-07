; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_add_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_add_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cam_periph = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.cam_ed* }
%struct.cam_ed = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@xpt_run_allocq_task = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@periph_links = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_add_periph(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %5 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %6 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %5, i32 0, i32 1
  %7 = load i32, i32* @xpt_run_allocq_task, align 4
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = call i32 @TASK_INIT(i32* %6, i32 0, i32 %7, %struct.cam_periph* %8)
  %10 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.cam_ed*, %struct.cam_ed** %13, align 8
  store %struct.cam_ed* %14, %struct.cam_ed** %3, align 8
  %15 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %17 = icmp ne %struct.cam_ed* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %27 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %31 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %30, i32 0, i32 1
  %32 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %33 = load i32, i32* @periph_links, align 4
  %34 = call i32 @SLIST_INSERT_HEAD(i32* %31, %struct.cam_periph* %32, i32 %33)
  %35 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %36 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  %42 = call i32 @atomic_add_32(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xsoftc, i32 0, i32 0), i32 1)
  br label %43

43:                                               ; preds = %18, %1
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.cam_periph*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.cam_periph*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
