; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.cam_eb* }
%struct.cam_eb = type { i32, i32 }
%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i8* }
%struct.cam_path = type { %struct.cam_eb*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.cam_path* }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"xpt_async(%s)\0A\00", align 1
@AC_BUS_RESET = common dso_local global i64 0, align 8
@xpt_async_process_tgt = common dso_local global i32 0, align 4
@xpt_periph = common dso_local global %struct.TYPE_10__* null, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @xpt_async_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_async_process(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.cam_eb*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_7__*
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  store %struct.cam_path* %12, %struct.cam_path** %6, align 8
  %13 = load %union.ccb*, %union.ccb** %4, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_9__*
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_9__*
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %22 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %23 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %24 = or i32 %22, %23
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @xpt_async_string(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @CAM_DEBUG(%struct.cam_path* %21, i32 %24, i8* %28)
  %30 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %31 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %30, i32 0, i32 0
  %32 = load %struct.cam_eb*, %struct.cam_eb** %31, align 8
  store %struct.cam_eb* %32, %struct.cam_eb** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @AC_BUS_RESET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %38 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %37, i32 0, i32 1
  %39 = call i32 @microtime(i32* %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %42 = load i32, i32* @xpt_async_process_tgt, align 4
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = call i32 @xpttargettraverse(%struct.cam_eb* %41, i32* null, i32 %42, %union.ccb* %43)
  %45 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xpt_periph, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.cam_eb*, %struct.cam_eb** %49, align 8
  %51 = icmp ne %struct.cam_eb* %45, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xpt_periph, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = call i32 @xpt_path_lock(%struct.TYPE_11__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xpt_periph, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %union.ccb*, %union.ccb** %4, align 8
  %63 = call i32 @xpt_async_process_dev(i32 %61, %union.ccb* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xpt_periph, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @xpt_path_unlock(%struct.TYPE_11__* %66)
  br label %68

68:                                               ; preds = %52, %40
  %69 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %70 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %75 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @xpt_release_devq(%struct.cam_path* %82, i32 1, i32 %83)
  br label %93

85:                                               ; preds = %73, %68
  %86 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %87 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %86, i32 0, i32 0
  %88 = load %struct.cam_eb*, %struct.cam_eb** %87, align 8
  %89 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @xpt_release_simq(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %81
  %94 = load %union.ccb*, %union.ccb** %4, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_9__*
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @M_CAMXPT, align 4
  %102 = call i32 @free(i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %105 = call i32 @xpt_free_path(%struct.cam_path* %104)
  %106 = load %union.ccb*, %union.ccb** %4, align 8
  %107 = call i32 @xpt_free_ccb(%union.ccb* %106)
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_async_string(i64) #1

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @xpttargettraverse(%struct.cam_eb*, i32*, i32, %union.ccb*) #1

declare dso_local i32 @xpt_path_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @xpt_async_process_dev(i32, %union.ccb*) #1

declare dso_local i32 @xpt_path_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @xpt_release_devq(%struct.cam_path*, i32, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
