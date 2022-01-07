; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"Can't allocate CCB to send %s\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't allocate path to send %s\0A\00", align 1
@XPT_ASYNC = common dso_local global i32 0, align 4
@xpt_async_process = common dso_local global i32 0, align 4
@CAM_UNLOCKED = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"xpt_async: func %#x %s aync_code %d %s\0A\00", align 1
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Can't allocate argument to send %s\0A\00", align 1
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_async(i32 %0, %struct.cam_path* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cam_path* %1, %struct.cam_path** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %9, %union.ccb** %7, align 8
  %10 = load %union.ccb*, %union.ccb** %7, align 8
  %11 = icmp eq %union.ccb* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @xpt_async_string(i32 %14)
  %16 = call i32 @xpt_print(%struct.cam_path* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %163

17:                                               ; preds = %3
  %18 = load %union.ccb*, %union.ccb** %7, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %22 = call i64 @xpt_clone_path(%struct.TYPE_12__** %20, %struct.cam_path* %21)
  %23 = load i64, i64* @CAM_REQ_CMP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @xpt_async_string(i32 %27)
  %29 = call i32 @xpt_print(%struct.cam_path* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %union.ccb*, %union.ccb** %7, align 8
  %31 = call i32 @xpt_free_ccb(%union.ccb* %30)
  br label %163

32:                                               ; preds = %17
  %33 = load %union.ccb*, %union.ccb** %7, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @XPT_ASYNC, align 4
  %39 = load %union.ccb*, %union.ccb** %7, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_8__*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @xpt_async_process, align 4
  %43 = load %union.ccb*, %union.ccb** %7, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @CAM_UNLOCKED, align 4
  %47 = load %union.ccb*, %union.ccb** %7, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %union.ccb*, %union.ccb** %7, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %union.ccb*, %union.ccb** %7, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @xpt_async_size(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %union.ccb*, %union.ccb** %7, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %66 = load %union.ccb*, %union.ccb** %7, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %union.ccb*, %union.ccb** %7, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_8__*
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @xpt_action_name(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @xpt_async_string(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @CAM_DEBUG(%struct.TYPE_12__* %64, i32 %65, i8* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %32
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %123

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @M_CAMXPT, align 4
  %89 = load i32, i32* @M_NOWAIT, align 4
  %90 = call i32* @malloc(i32 %87, i32 %88, i32 %89)
  %91 = load %union.ccb*, %union.ccb** %7, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32* %90, i32** %93, align 8
  %94 = load %union.ccb*, %union.ccb** %7, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_9__*
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %86
  %100 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @xpt_async_string(i32 %101)
  %103 = call i32 @xpt_print(%struct.cam_path* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %union.ccb*, %union.ccb** %7, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = call i32 @xpt_free_path(%struct.TYPE_12__* %107)
  %109 = load %union.ccb*, %union.ccb** %7, align 8
  %110 = call i32 @xpt_free_ccb(%union.ccb* %109)
  br label %163

111:                                              ; preds = %86
  %112 = load %union.ccb*, %union.ccb** %7, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_9__*
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @memcpy(i32* %115, i8* %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load %union.ccb*, %union.ccb** %7, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_9__*
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  br label %137

123:                                              ; preds = %83, %32
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load i8*, i8** %6, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load %union.ccb*, %union.ccb** %7, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_9__*
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32* %128, i32** %131, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load %union.ccb*, %union.ccb** %7, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_9__*
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %126, %123
  br label %137

137:                                              ; preds = %136, %111
  %138 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %139 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = icmp ne %struct.TYPE_10__* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %144 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %152 = call i32 @xpt_freeze_devq(%struct.cam_path* %151, i32 1)
  br label %160

153:                                              ; preds = %142, %137
  %154 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %155 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @xpt_freeze_simq(i32 %158, i32 1)
  br label %160

160:                                              ; preds = %153, %150
  %161 = load %union.ccb*, %union.ccb** %7, align 8
  %162 = call i32 @xpt_done(%union.ccb* %161)
  br label %163

163:                                              ; preds = %160, %99, %25, %12
  ret void
}

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*, i32) #1

declare dso_local i32 @xpt_async_string(i32) #1

declare dso_local i64 @xpt_clone_path(%struct.TYPE_12__**, %struct.cam_path*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_async_size(i32) #1

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @xpt_action_name(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_free_path(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @xpt_freeze_devq(%struct.cam_path*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
