; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_get_local_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_get_local_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }

@MAX_DEGREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @get_local_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_local_geometry(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @OSM_LOG_ENTER(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %23, i64 %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_DEGREE, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %45

35:                                               ; preds = %20
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @get_switch_metric(%struct.TYPE_13__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %80

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @classify_mesh_type(%struct.TYPE_13__* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %14

48:                                               ; preds = %14
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = call i32 @remove_edges(%struct.TYPE_13__* %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %76, %48
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %60, i64 %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %76

71:                                               ; preds = %57
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @classify_switch(%struct.TYPE_13__* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %51

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %40
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @OSM_LOG_EXIT(i32* %81)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i64 @get_switch_metric(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @classify_mesh_type(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @remove_edges(%struct.TYPE_13__*) #1

declare dso_local i32 @classify_switch(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
