; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_ucast_mgr_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_ucast_mgr_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osm_routing_engine = type { i32 (i32)*, i32 (i32)*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.osm_routing_engine*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"building routing with '%s' routing algorithm...\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: cannot build lid matrices\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: cannot build fwd tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osm_routing_engine*, %struct.TYPE_9__*)* @ucast_mgr_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucast_mgr_route(%struct.osm_routing_engine* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.osm_routing_engine*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.osm_routing_engine* %0, %struct.osm_routing_engine** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %10 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %11 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @OSM_LOG(i32* %8, i32 %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @srandom(i64 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %29 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = icmp ne i32 (i32)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %34 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %37 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %35(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32, %27
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @osm_ucast_mgr_build_lid_matrices(i32* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* @OSM_LOG_ERROR, align 4
  %53 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %54 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @OSM_LOG(i32* %51, i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %97

58:                                               ; preds = %46
  %59 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %60 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %59, i32 0, i32 1
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = icmp ne i32 (i32)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %65 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %64, i32 0, i32 1
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %68 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %66(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63, %58
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @ucast_mgr_build_lfts(i32* %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %63
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* @OSM_LOG_ERROR, align 4
  %84 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %85 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @OSM_LOG(i32* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %97

89:                                               ; preds = %77
  %90 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store %struct.osm_routing_engine* %90, %struct.osm_routing_engine** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32 @osm_ucast_mgr_set_fwd_tables(i32* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %89, %80, %49
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32) #1

declare dso_local i32 @srandom(i64) #1

declare dso_local i32 @osm_ucast_mgr_build_lid_matrices(i32*) #1

declare dso_local i32 @ucast_mgr_build_lfts(i32*) #1

declare dso_local i32 @osm_ucast_mgr_set_fwd_tables(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
