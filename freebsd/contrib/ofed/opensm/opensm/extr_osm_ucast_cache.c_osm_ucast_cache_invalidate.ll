; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_cache.c_osm_ucast_cache_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_cache.c_osm_ucast_cache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unicast Cache invalidated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osm_ucast_cache_invalidate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @OSM_LOG_ENTER(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %46

14:                                               ; preds = %1
  %15 = load i64, i64* @FALSE, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i64 @cl_qmap_head(i32* %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %4, align 8
  br label %22

22:                                               ; preds = %29, %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i64 @cl_qmap_end(i32* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  %28 = icmp ne %struct.TYPE_6__* %23, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i64 @cl_qmap_next(i32* %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call i32 @cache_sw_destroy(%struct.TYPE_6__* %35)
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @cl_qmap_remove_all(i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %45 = call i32 @OSM_LOG(i32 %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %37, %13
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @OSM_LOG_EXIT(i32 %49)
  ret void
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i64 @cl_qmap_head(i32*) #1

declare dso_local i64 @cl_qmap_end(i32*) #1

declare dso_local i64 @cl_qmap_next(i32*) #1

declare dso_local i32 @cache_sw_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @cl_qmap_remove_all(i32*) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
