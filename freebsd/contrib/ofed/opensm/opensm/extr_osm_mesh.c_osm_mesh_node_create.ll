; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_osm_mesh_node_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_osm_mesh_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__**, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@NONE = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed allocating mesh node - out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_mesh_node_create(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @OSM_LOG_ENTER(i32* %19)
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = add i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @calloc(i32 1, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_15__*
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %30 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %85

32:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @calloc(i32 1, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_13__*
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %47, i64 %49
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %50, align 8
  %51 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %85

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %33

57:                                               ; preds = %33
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @calloc(i32 %58, i32 4)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = icmp ne i8* %59, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %85

64:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32, i32* @NONE, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %73, i64 %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %70, i32* %78, align 4
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @OSM_LOG_EXIT(i32* %83)
  store i32 0, i32* %3, align 4
  br label %94

85:                                               ; preds = %63, %52, %31
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = call i32 @osm_mesh_node_delete(%struct.TYPE_16__* %86, %struct.TYPE_14__* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @OSM_LOG_ERROR, align 4
  %91 = call i32 @OSM_LOG(i32* %89, i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @OSM_LOG_EXIT(i32* %92)
  store i32 -1, i32* %3, align 4
  br label %94

94:                                               ; preds = %85, %82
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

declare dso_local i32 @osm_mesh_node_delete(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
