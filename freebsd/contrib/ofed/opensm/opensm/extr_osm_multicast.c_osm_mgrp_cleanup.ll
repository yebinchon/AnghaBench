; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_multicast.c_osm_mgrp_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_multicast.c_osm_mgrp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32**, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }

@IB_LID_MCAST_START_HO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osm_mgrp_cleanup(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %103

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 5
  %17 = call i64 @cl_qmap_count(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 5
  %22 = call i64 @cl_qmap_head(i32* %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %6, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = call i32 @cl_qmap_remove_item(i32* %25, i32* %27)
  %29 = call i32 @osm_mcm_alias_guid_delete(%struct.TYPE_24__** %6)
  br label %14

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 4
  %34 = call i64 @cl_qmap_count(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 4
  %39 = call i64 @cl_qmap_head(i32* %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %7, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = call i32 @cl_qmap_remove_item(i32* %42, i32* %44)
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = call i32 @cl_qlist_remove_item(i32* %49, i32* %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = call i32 @osm_mcm_port_delete(%struct.TYPE_23__* %53)
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %103

61:                                               ; preds = %55
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = call i32 @cl_fmap_remove_item(i32* %63, i32* %65)
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_22__* @osm_get_mbox_by_mlid(%struct.TYPE_20__* %67, i32 %70)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %5, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = call i32 @cl_qlist_remove_item(i32* %73, i32* %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = call i64 @cl_is_qlist_empty(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %61
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @cl_ntoh16(i32 %87)
  %89 = load i64, i64* @IB_LID_MCAST_START_HO, align 8
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds i32*, i32** %84, i64 %90
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = call i32 @mgrp_box_delete(%struct.TYPE_22__* %92)
  br label %94

94:                                               ; preds = %81, %61
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = call i32 @free(%struct.TYPE_21__* %95)
  %97 = load i32, i32* @TRUE, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %94, %60, %12
  ret void
}

declare dso_local i64 @cl_qmap_count(i32*) #1

declare dso_local i64 @cl_qmap_head(i32*) #1

declare dso_local i32 @cl_qmap_remove_item(i32*, i32*) #1

declare dso_local i32 @osm_mcm_alias_guid_delete(%struct.TYPE_24__**) #1

declare dso_local i32 @cl_qlist_remove_item(i32*, i32*) #1

declare dso_local i32 @osm_mcm_port_delete(%struct.TYPE_23__*) #1

declare dso_local i32 @cl_fmap_remove_item(i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @osm_get_mbox_by_mlid(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @cl_is_qlist_empty(i32*) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @mgrp_box_delete(%struct.TYPE_22__*) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
