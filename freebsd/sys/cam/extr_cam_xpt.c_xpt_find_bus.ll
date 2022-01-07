; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_find_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_find_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cam_eb = type { i64, i32 }

@xsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_eb* (i64)* @xpt_find_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_eb* @xpt_find_bus(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cam_eb*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @xpt_lock_buses()
  %5 = call %struct.cam_eb* @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0))
  store %struct.cam_eb* %5, %struct.cam_eb** %3, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %8 = icmp ne %struct.cam_eb* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %11 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %17 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  br label %25

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %23 = load i32, i32* @links, align 4
  %24 = call %struct.cam_eb* @TAILQ_NEXT(%struct.cam_eb* %22, i32 %23)
  store %struct.cam_eb* %24, %struct.cam_eb** %3, align 8
  br label %6

25:                                               ; preds = %15, %6
  %26 = call i32 (...) @xpt_unlock_buses()
  %27 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  ret %struct.cam_eb* %27
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local %struct.cam_eb* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_eb* @TAILQ_NEXT(%struct.cam_eb*, i32) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
