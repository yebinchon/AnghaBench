; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mcast_mgr.c_osm_mcast_make_port_list_and_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mcast_mgr.c_osm_mcast_make_port_list_and_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_mcast_make_port_list_and_map(i32* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @cl_qmap_init(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @cl_qlist_init(i32* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = call i32* @cl_qlist_head(i32* %18)
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %82, %3
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call i32* @cl_qlist_end(i32* %23)
  %25 = icmp ne i32* %21, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.TYPE_10__* @cl_item_obj(i32* %27, %struct.TYPE_10__* %28, i32* %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = call i32* @cl_qmap_head(i32* %32)
  store i32* %33, i32** %8, align 8
  br label %34

34:                                               ; preds = %78, %26
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = call i32* @cl_qmap_end(i32* %37)
  %39 = icmp ne i32* %35, %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call %struct.TYPE_10__* @cl_item_obj(i32* %41, %struct.TYPE_10__* %42, i32* %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @cl_qmap_get(i32* %45, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @cl_qmap_end(i32* %52)
  %54 = icmp ne i32* %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %78

56:                                               ; preds = %40
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = call %struct.TYPE_12__* @mcast_work_obj_new(%struct.TYPE_13__* %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %12, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %86

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = call i32 @cl_qlist_insert_tail(i32* %65, i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = call i32 @cl_qmap_insert(i32* %69, i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %64, %55
  %79 = load i32*, i32** %8, align 8
  %80 = call i32* @cl_qmap_next(i32* %79)
  store i32* %80, i32** %8, align 8
  br label %34

81:                                               ; preds = %34
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %9, align 8
  %84 = call i32* @cl_qlist_next(i32* %83)
  store i32* %84, i32** %9, align 8
  br label %20

85:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @cl_qmap_init(i32*) #1

declare dso_local i32 @cl_qlist_init(i32*) #1

declare dso_local i32* @cl_qlist_head(i32*) #1

declare dso_local i32* @cl_qlist_end(i32*) #1

declare dso_local %struct.TYPE_10__* @cl_item_obj(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qmap_get(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @mcast_work_obj_new(%struct.TYPE_13__*) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

declare dso_local i32 @cl_qmap_insert(i32*, i32, i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i32* @cl_qlist_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
