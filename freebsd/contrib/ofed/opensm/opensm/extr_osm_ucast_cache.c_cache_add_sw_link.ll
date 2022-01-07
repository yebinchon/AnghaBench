; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_cache.c_cache_add_sw_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_cache.c_cache_add_sw_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64, i64 }

@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Caching switch port: lid %u [port %u] -> lid %u (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CA/RTR\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"ERR AD01: Out of memory - cache is invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ERR AD02: Wrong switch? - cache is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*, i64, i64)* @cache_add_sw_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_add_sw_link(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %14 = call i32 @osm_node_get_base_lid(%struct.TYPE_19__* %13, i32 0)
  %15 = call i64 @cl_ntoh16(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @OSM_LOG_ENTER(i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %22, %4
  br label %131

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %34, i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %39, i64 %40, i8* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call %struct.TYPE_18__* @cache_get_sw(%struct.TYPE_16__* %46, i64 %47)
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %9, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %50 = icmp ne %struct.TYPE_18__* %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %31
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_18__* @cache_sw_new(i64 %52, i32 %59)
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %9, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = icmp ne %struct.TYPE_18__* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %51
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OSM_LOG_ERROR, align 4
  %68 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %66, i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_16__* %69)
  br label %131

71:                                               ; preds = %51
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = call i32 @cl_qmap_insert(i32* %73, i64 %74, i32* %76)
  br label %78

78:                                               ; preds = %71, %31
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @OSM_LOG_ERROR, align 4
  %91 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %89, i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_16__* %92)
  br label %131

94:                                               ; preds = %78
  %95 = load i64, i64* %8, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = call i32 @cache_sw_set_leaf(%struct.TYPE_18__* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %100
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i64 %112, i64* %120, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  store i64 %121, i64* %129, align 8
  br label %130

130:                                              ; preds = %111, %100
  br label %131

131:                                              ; preds = %130, %86, %63, %30
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @OSM_LOG_EXIT(i32 %134)
  ret void
}

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @osm_node_get_base_lid(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_18__* @cache_get_sw(%struct.TYPE_16__*, i64) #1

declare dso_local %struct.TYPE_18__* @cache_sw_new(i64, i32) #1

declare dso_local i32 @osm_ucast_cache_invalidate(%struct.TYPE_16__*) #1

declare dso_local i32 @cl_qmap_insert(i32*, i64, i32*) #1

declare dso_local i32 @cache_sw_set_leaf(%struct.TYPE_18__*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
