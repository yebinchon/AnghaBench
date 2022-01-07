; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mcast_mgr.c_mcast_mgr_compute_max_hops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mcast_mgr.c_mcast_mgr_compute_max_hops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@mgrp_item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_9__*, i32*, %struct.TYPE_8__*)* @mcast_mgr_compute_max_hops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @mcast_mgr_compute_max_hops(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OSM_LOG_ENTER(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @cl_qmap_head(i32* %16)
  store i32* %17, i32** %10, align 8
  br label %18

18:                                               ; preds = %50, %3
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @cl_qmap_end(i32* %20)
  %22 = icmp ne i32* %19, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = load i32, i32* @mgrp_item, align 4
  %27 = call %struct.TYPE_8__* @cl_item_obj(i32* %24, %struct.TYPE_8__* %25, i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @osm_node_get_base_lid(i32 %30, i32 0)
  %32 = call i32 @cl_ntoh16(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @osm_switch_get_least_hops(%struct.TYPE_8__* %33, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %23
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %10, align 8
  %52 = call i32* @cl_qmap_next(i32* %51)
  store i32* %52, i32** %10, align 8
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OSM_LOG_EXIT(i32 %56)
  %58 = load i64, i64* %7, align 8
  %59 = sitofp i64 %58 to float
  ret float %59
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local %struct.TYPE_8__* @cl_item_obj(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i32 @osm_node_get_base_lid(i32, i32) #1

declare dso_local i64 @osm_switch_get_least_hops(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
