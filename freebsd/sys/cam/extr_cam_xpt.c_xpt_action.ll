; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%union.ccb*)* }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"xpt_action: func %#x %s\0A\00", align 1
@CAM_REQ_INPROG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_action(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %3 = load %union.ccb*, %union.ccb** %2, align 8
  %4 = bitcast %union.ccb* %3 to %struct.TYPE_6__*
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %8 = load %union.ccb*, %union.ccb** %2, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %union.ccb*, %union.ccb** %2, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xpt_action_name(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @CAM_DEBUG(%struct.TYPE_10__* %6, i32 %7, i8* %18)
  %20 = load i32, i32* @CAM_REQ_INPROG, align 4
  %21 = load %union.ccb*, %union.ccb** %2, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %union.ccb*, %union.ccb** %2, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32 (%union.ccb*)*, i32 (%union.ccb*)** %34, align 8
  %36 = load %union.ccb*, %union.ccb** %2, align 8
  %37 = call i32 %35(%union.ccb* %36)
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @xpt_action_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
