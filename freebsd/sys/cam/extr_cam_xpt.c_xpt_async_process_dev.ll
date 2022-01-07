; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_process_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_process_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i64, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (i32, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.cam_ed*, i8*)* }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.cam_path = type { %struct.TYPE_12__*, %struct.cam_ed* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { %struct.cam_path* }

@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_BUS_WILDCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_ed*, i8*)* @xpt_async_process_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpt_async_process_dev(%struct.cam_ed* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cam_ed* %0, %struct.cam_ed** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %union.ccb*
  store %union.ccb* %12, %union.ccb** %6, align 8
  %13 = load %union.ccb*, %union.ccb** %6, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_9__*
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.cam_path*, %struct.cam_path** %15, align 8
  store %struct.cam_path* %16, %struct.cam_path** %7, align 8
  %17 = load %union.ccb*, %union.ccb** %6, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_10__*
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %union.ccb*, %union.ccb** %6, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_10__*
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %26 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %25, i32 0, i32 1
  %27 = load %struct.cam_ed*, %struct.cam_ed** %26, align 8
  %28 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %29 = icmp ne %struct.cam_ed* %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %32 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %31, i32 0, i32 1
  %33 = load %struct.cam_ed*, %struct.cam_ed** %32, align 8
  %34 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %40 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %145

45:                                               ; preds = %38, %30, %2
  %46 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %47 = call i32 @xpt_acquire_device(%struct.cam_ed* %46)
  %48 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %49 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %55 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %54, i32 0, i32 1
  %56 = load %struct.cam_ed*, %struct.cam_ed** %55, align 8
  %57 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %97, label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %63 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %62, i32 0, i32 3
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %71 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %97, label %77

77:                                               ; preds = %69, %61
  %78 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %79 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %78, i32 0, i32 3
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %77
  %88 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %89 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87, %69, %53
  %98 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %99 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %98, i32 0, i32 1
  %100 = call i32 @mtx_unlock(i32* %99)
  %101 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %102 = call i32 @xpt_path_lock(%struct.cam_path* %101)
  store i32 1, i32* %10, align 4
  br label %104

103:                                              ; preds = %87, %77
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %103, %97
  %105 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %106 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %105, i32 0, i32 3
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32 (i32, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.cam_ed*, i8*)*, i32 (i32, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.cam_ed*, i8*)** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %118 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %117, i32 0, i32 3
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %123 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %122, i32 0, i32 3
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 %115(i32 %116, %struct.TYPE_15__* %121, %struct.TYPE_16__* %124, %struct.cam_ed* %125, i8* %126)
  %128 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %129 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %128, i32 0, i32 2
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @xpt_async_bcast(i32* %129, i32 %130, %struct.cam_path* %131, i8* %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %104
  %137 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %138 = call i32 @xpt_path_unlock(%struct.cam_path* %137)
  %139 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %140 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %139, i32 0, i32 1
  %141 = call i32 @mtx_lock(i32* %140)
  br label %142

142:                                              ; preds = %136, %104
  %143 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %144 = call i32 @xpt_release_device(%struct.cam_ed* %143)
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %44
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @xpt_acquire_device(%struct.cam_ed*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @xpt_async_bcast(i32*, i32, %struct.cam_path*, i8*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_release_device(%struct.cam_ed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
