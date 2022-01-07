; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_scanner_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_scanner_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cam_path = type { i32 }

@xsoftc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@sim_links = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xpt_scanner_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_scanner_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.cam_path, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @xpt_lock_buses()
  br label %6

6:                                                ; preds = %33, %1
  %7 = call i64 @TAILQ_EMPTY(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xsoftc, i32 0, i32 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @PRIBIO, align 4
  %11 = call i32 @msleep(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xsoftc, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xsoftc, i32 0, i32 1), i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

12:                                               ; preds = %9, %6
  %13 = call i64 @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xsoftc, i32 0, i32 0))
  %14 = inttoptr i64 %13 to %union.ccb*
  store %union.ccb* %14, %union.ccb** %3, align 8
  %15 = icmp ne %union.ccb* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %union.ccb*, %union.ccb** %3, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_6__*
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sim_links, i32 0, i32 0), align 4
  %20 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xsoftc, i32 0, i32 0), %struct.TYPE_6__* %18, i32 %19)
  %21 = call i32 (...) @xpt_unlock_buses()
  %22 = load %union.ccb*, %union.ccb** %3, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xpt_copy_path(%struct.cam_path* %4, i32 %25)
  %27 = call i32 @xpt_path_lock(%struct.cam_path* %4)
  %28 = load %union.ccb*, %union.ccb** %3, align 8
  %29 = call i32 @xpt_action(%union.ccb* %28)
  %30 = call i32 @xpt_path_unlock(%struct.cam_path* %4)
  %31 = call i32 @xpt_release_path(%struct.cam_path* %4)
  %32 = call i32 (...) @xpt_lock_buses()
  br label %33

33:                                               ; preds = %16, %12
  br label %6
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @xpt_copy_path(%struct.cam_path*, i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @xpt_release_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
