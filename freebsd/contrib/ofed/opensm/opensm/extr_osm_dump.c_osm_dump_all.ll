; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_dump.c_osm_dump_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_dump.c_osm_dump_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@OSM_LOG_ROUTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"opensm-lid-matrix.dump\00", align 1
@dump_lid_matrix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"opensm-lfts.dump\00", align 1
@dump_ucast_lfts = common dso_local global i32 0, align 4
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@dump_ucast_path_distribution = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"opensm.fdbs\00", align 1
@dump_ucast_routes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"opensm.mcfdbs\00", align 1
@dump_mcast_routes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"opensm-sl2vl.dump\00", align 1
@dump_sl2vl_tbl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"opensm-subnet.lst\00", align 1
@dump_topology_node = common dso_local global i32 0, align 4
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osm_dump_all(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %5 = load i32, i32* @OSM_LOG_ROUTING, align 4
  %6 = call i64 @OSM_LOG_IS_ACTIVE_V2(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %92

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load i32, i32* @dump_lid_matrix, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %13, %struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load i32, i32* @dump_ucast_lfts, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32 %20, %struct.TYPE_13__* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %26 = call i64 @OSM_LOG_IS_ACTIVE_V2(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %8
  %29 = load i32, i32* @stdout, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* @dump_ucast_path_distribution, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = call i32 @dump_qmap(i32 %29, i32* %32, i32 %33, %struct.TYPE_13__* %34)
  br label %36

36:                                               ; preds = %28, %8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @srandom(i64 %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* @dump_ucast_routes, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_13__* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %54, i32 %55, %struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i32, i32* @dump_mcast_routes, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_13__* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %61, i32 %62, %struct.TYPE_13__* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %50
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76, %50
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* @dump_sl2vl_tbl, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_13__* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %87, i32 %88, %struct.TYPE_13__* %89)
  br label %91

91:                                               ; preds = %83, %76, %71
  br label %92

92:                                               ; preds = %91, %1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* @dump_topology_node, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %99 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_13__* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %96, i32 %97, %struct.TYPE_13__* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %103 = call i64 @OSM_LOG_IS_ACTIVE_V2(i32* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @print_report(%struct.TYPE_13__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %92
  ret void
}

declare dso_local i64 @OSM_LOG_IS_ACTIVE_V2(i32*, i32) #1

declare dso_local i32 @osm_dump_qmap_to_file(%struct.TYPE_13__*, i8*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dump_qmap(i32, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @srandom(i64) #1

declare dso_local i32 @print_report(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
