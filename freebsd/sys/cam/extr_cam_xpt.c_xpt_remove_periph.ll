; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_remove_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_remove_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cam_periph = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cam_ed* }
%struct.cam_ed = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@cam_periph = common dso_local global i32 0, align 4
@periph_links = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_remove_periph(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  store %struct.cam_ed* %8, %struct.cam_ed** %3, align 8
  %9 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %10 = icmp ne %struct.cam_ed* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %13 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %24 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %23, i32 0, i32 1
  %25 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %26 = load i32, i32* @cam_periph, align 4
  %27 = load i32, i32* @periph_links, align 4
  %28 = call i32 @SLIST_REMOVE(i32* %24, %struct.cam_periph* %25, i32 %26, i32 %27)
  %29 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %30 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = call i32 @atomic_add_32(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xsoftc, i32 0, i32 0), i32 1)
  br label %37

37:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.cam_periph*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
