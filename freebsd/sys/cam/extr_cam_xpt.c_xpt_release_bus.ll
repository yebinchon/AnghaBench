; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cam_eb = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"bus->refcount >= 1\00", align 1
@xsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@links = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"destroying bus, but target list is not empty\00", align 1
@M_CAMXPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_eb*)* @xpt_release_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_release_bus(%struct.cam_eb* %0) #0 {
  %2 = alloca %struct.cam_eb*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %2, align 8
  %3 = call i32 (...) @xpt_lock_buses()
  %4 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %5 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %11 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @xpt_unlock_buses()
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %19 = load i32, i32* @links, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 1), %struct.cam_eb* %18, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), align 4
  %23 = call i32 (...) @xpt_unlock_buses()
  %24 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %25 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %24, i32 0, i32 3
  %26 = call i32 @TAILQ_EMPTY(i32* %25)
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %29 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cam_sim_release(i32 %30)
  %32 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %33 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %32, i32 0, i32 1
  %34 = call i32 @mtx_destroy(i32* %33)
  %35 = load %struct.cam_eb*, %struct.cam_eb** %2, align 8
  %36 = load i32, i32* @M_CAMXPT, align 4
  %37 = call i32 @free(%struct.cam_eb* %35, i32 %36)
  br label %38

38:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cam_eb*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @cam_sim_release(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.cam_eb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
