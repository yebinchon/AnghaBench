; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_osm_ucast_torus2QoS_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_osm_ucast_torus2QoS_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osm_routing_engine = type { i32, i32, i32, i32, i32, i32, i32, %struct.torus_context* }
%struct.torus_context = type { i32 }

@torus_build_lfts = common dso_local global i32 0, align 4
@ucast_dummy_build_lid_matrices = common dso_local global i32 0, align 4
@torus_update_osm_sl2vl = common dso_local global i32 0, align 4
@torus_update_osm_vlarb = common dso_local global i32 0, align 4
@torus_path_sl = common dso_local global i32 0, align 4
@torus_mcast_stree = common dso_local global i32 0, align 4
@torus_context_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_ucast_torus2QoS_setup(%struct.osm_routing_engine* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.osm_routing_engine*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.torus_context*, align 8
  store %struct.osm_routing_engine* %0, %struct.osm_routing_engine** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call %struct.torus_context* @torus_context_create(i32* %7)
  store %struct.torus_context* %8, %struct.torus_context** %6, align 8
  %9 = load %struct.torus_context*, %struct.torus_context** %6, align 8
  %10 = icmp ne %struct.torus_context* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.torus_context*, %struct.torus_context** %6, align 8
  %14 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %15 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %14, i32 0, i32 7
  store %struct.torus_context* %13, %struct.torus_context** %15, align 8
  %16 = load i32, i32* @torus_build_lfts, align 4
  %17 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %18 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @ucast_dummy_build_lid_matrices, align 4
  %20 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %21 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @torus_update_osm_sl2vl, align 4
  %23 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %24 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @torus_update_osm_vlarb, align 4
  %26 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %27 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @torus_path_sl, align 4
  %29 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %30 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @torus_mcast_stree, align 4
  %32 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %33 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @torus_context_delete, align 4
  %35 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %4, align 8
  %36 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %12, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.torus_context* @torus_context_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
