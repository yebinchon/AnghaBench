; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_get_lash_sl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_get_lash_sl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_11__* }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@OSM_ROUTING_ENGINE_TYPE_LASH = common dso_local global i64 0, align 8
@OSM_DEFAULT_SL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @get_lash_sl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lash_sl(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %15, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %16, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OSM_ROUTING_ENGINE_TYPE_LASH, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %26, %4
  %35 = load i32, i32* @OSM_DEFAULT_SL, align 4
  store i32 %35, i32* %5, align 4
  br label %104

36:                                               ; preds = %26
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @osm_get_port_by_lid(%struct.TYPE_18__* %38, i32 %39)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @OSM_DEFAULT_SL, align 4
  store i32 %44, i32* %5, align 4
  br label %104

45:                                               ; preds = %36
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32* @osm_get_port_by_lid(%struct.TYPE_18__* %47, i32 %48)
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @OSM_DEFAULT_SL, align 4
  store i32 %53, i32* %5, align 4
  br label %104

54:                                               ; preds = %45
  %55 = load i32*, i32** %13, align 8
  %56 = call %struct.TYPE_15__* @get_osm_switch_from_port(i32* %55)
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %14, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @OSM_DEFAULT_SL, align 4
  store i32 %65, i32* %5, align 4
  br label %104

66:                                               ; preds = %59
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %68 = call i32 @get_lash_id(%struct.TYPE_15__* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call %struct.TYPE_15__* @get_osm_switch_from_port(i32* %69)
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %14, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73, %66
  %79 = load i32, i32* @OSM_DEFAULT_SL, align 4
  store i32 %79, i32* %5, align 4
  br label %104

80:                                               ; preds = %73
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %82 = call i32 @get_lash_id(%struct.TYPE_15__* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %5, align 4
  br label %104

92:                                               ; preds = %80
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_14__*
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %92, %86, %78, %64, %52, %43, %34
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32* @osm_get_port_by_lid(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_15__* @get_osm_switch_from_port(i32*) #1

declare dso_local i32 @get_lash_id(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
