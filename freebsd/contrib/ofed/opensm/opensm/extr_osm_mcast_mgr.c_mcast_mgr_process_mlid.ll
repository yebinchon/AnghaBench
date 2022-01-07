; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mcast_mgr.c_mcast_mgr_process_mlid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mcast_mgr.c_mcast_mgr_process_mlid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.osm_routing_engine* }
%struct.osm_routing_engine = type { i64 (i32, i32*)*, i32 }

@IB_SUCCESS = common dso_local global i64 0, align 8
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Processing multicast group with mlid 0x%X\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"ERR 0A17: Unable to create spanning tree (%s) for mlid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32)* @mcast_mgr_process_mlid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mcast_mgr_process_mlid(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.osm_routing_engine*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @IB_SUCCESS, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %14, align 8
  store %struct.osm_routing_engine* %15, %struct.osm_routing_engine** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @OSM_LOG_ENTER(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i32, i8*, i32, ...) @OSM_LOG(i32 %22, i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mcast_mgr_clear(%struct.TYPE_8__* %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @cl_hton16(i32 %32)
  %34 = call i32* @osm_get_mbox_by_mlid(%struct.TYPE_9__* %31, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %2
  %38 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %39 = icmp ne %struct.osm_routing_engine* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %42 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %41, i32 0, i32 0
  %43 = load i64 (i32, i32*)*, i64 (i32, i32*)** %42, align 8
  %44 = icmp ne i64 (i32, i32*)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %47 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %46, i32 0, i32 0
  %48 = load i64 (i32, i32*)*, i64 (i32, i32*)** %47, align 8
  %49 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %50 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 %48(i32 %51, i32* %52)
  store i64 %53, i64* %5, align 8
  br label %58

54:                                               ; preds = %40, %37
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @mcast_mgr_build_spanning_tree(%struct.TYPE_8__* %55, i32* %56)
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @IB_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @OSM_LOG_ERROR, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ib_get_err_str(i64 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32, i32, i8*, i32, ...) @OSM_LOG(i32 %65, i32 %66, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %58
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @OSM_LOG_EXIT(i32 %75)
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @mcast_mgr_clear(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @osm_get_mbox_by_mlid(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cl_hton16(i32) #1

declare dso_local i64 @mcast_mgr_build_spanning_tree(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ib_get_err_str(i64) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
