; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_osm_ucast_sssp_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_osm_ucast_sssp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osm_routing_engine = type { i32, i32, i32, i32, i8* }

@OSM_ROUTING_ENGINE_TYPE_SSSP = common dso_local global i32 0, align 4
@dfsssp_build_graph = common dso_local global i32 0, align 4
@dfsssp_do_dijkstra_routing = common dso_local global i32 0, align 4
@dfsssp_do_mcast_routing = common dso_local global i32 0, align 4
@delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_ucast_sssp_setup(%struct.osm_routing_engine* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.osm_routing_engine*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.osm_routing_engine* %0, %struct.osm_routing_engine** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @OSM_ROUTING_ENGINE_TYPE_SSSP, align 4
  %9 = call i32* @dfsssp_context_create(i32* %7, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %17 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @dfsssp_build_graph, align 4
  %19 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %20 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @dfsssp_do_dijkstra_routing, align 4
  %22 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %23 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @dfsssp_do_mcast_routing, align 4
  %25 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %26 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @delete, align 4
  %28 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %29 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %13, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32* @dfsssp_context_create(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
