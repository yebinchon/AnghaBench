; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_opensm.c_setup_routing_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_opensm.c_setup_routing_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.routing_engine_module = type { i8*, i64 (%struct.osm_routing_engine.0*, %struct.TYPE_4__*)* }
%struct.osm_routing_engine.0 = type opaque
%struct.TYPE_4__ = type { i32, %struct.osm_routing_engine*, i32 }
%struct.osm_routing_engine = type { i8*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"no_fallback\00", align 1
@TRUE = common dso_local global i32 0, align 4
@routing_modules = common dso_local global %struct.routing_engine_module* null, align 8
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"setup of routing engine '%s' failed\0A\00", align 1
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"'%s' routing engine set up\0A\00", align 1
@OSM_ROUTING_ENGINE_TYPE_MINHOP = common dso_local global i64 0, align 8
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot find or setup routing engine '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.osm_routing_engine* (%struct.TYPE_4__*, i8*)* @setup_routing_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.osm_routing_engine* @setup_routing_engine(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.osm_routing_engine*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.osm_routing_engine*, align 8
  %7 = alloca %struct.routing_engine_module*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  store %struct.osm_routing_engine* null, %struct.osm_routing_engine** %3, align 8
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.routing_engine_module*, %struct.routing_engine_module** @routing_modules, align 8
  store %struct.routing_engine_module* %16, %struct.routing_engine_module** %7, align 8
  br label %17

17:                                               ; preds = %97, %15
  %18 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %19 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %24 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %17
  %30 = phi i1 [ false, %17 ], [ %28, %22 ]
  br i1 %30, label %31, label %100

31:                                               ; preds = %29
  %32 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %33 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %96, label %38

38:                                               ; preds = %31
  %39 = call %struct.osm_routing_engine* @malloc(i32 16)
  store %struct.osm_routing_engine* %39, %struct.osm_routing_engine** %6, align 8
  %40 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %41 = icmp ne %struct.osm_routing_engine* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %46 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %44, i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.osm_routing_engine* null, %struct.osm_routing_engine** %3, align 8
  br label %106

47:                                               ; preds = %38
  %48 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %49 = call i32 @memset(%struct.osm_routing_engine* %48, i32 0, i32 16)
  %50 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %51 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %54 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %56 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @osm_routing_engine_type(i8* %57)
  %59 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %60 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %62 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %61, i32 0, i32 1
  %63 = load i64 (%struct.osm_routing_engine.0*, %struct.TYPE_4__*)*, i64 (%struct.osm_routing_engine.0*, %struct.TYPE_4__*)** %62, align 8
  %64 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %65 = bitcast %struct.osm_routing_engine* %64 to %struct.osm_routing_engine.0*
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i64 %63(%struct.osm_routing_engine.0* %65, %struct.TYPE_4__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %47
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %71, i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %76 = call i32 @free(%struct.osm_routing_engine* %75)
  store %struct.osm_routing_engine* null, %struct.osm_routing_engine** %3, align 8
  br label %106

77:                                               ; preds = %47
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %81 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %82 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %79, i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %86 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @OSM_ROUTING_ENGINE_TYPE_MINHOP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store %struct.osm_routing_engine* %91, %struct.osm_routing_engine** %93, align 8
  br label %94

94:                                               ; preds = %90, %77
  %95 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %6, align 8
  store %struct.osm_routing_engine* %95, %struct.osm_routing_engine** %3, align 8
  br label %106

96:                                               ; preds = %31
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.routing_engine_module*, %struct.routing_engine_module** %7, align 8
  %99 = getelementptr inbounds %struct.routing_engine_module, %struct.routing_engine_module* %98, i32 1
  store %struct.routing_engine_module* %99, %struct.routing_engine_module** %7, align 8
  br label %17

100:                                              ; preds = %29
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* @OSM_LOG_ERROR, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %102, i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  store %struct.osm_routing_engine* null, %struct.osm_routing_engine** %3, align 8
  br label %106

106:                                              ; preds = %100, %94, %69, %42, %11
  %107 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %3, align 8
  ret %struct.osm_routing_engine* %107
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.osm_routing_engine* @malloc(i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.osm_routing_engine*, i32, i32) #1

declare dso_local i64 @osm_routing_engine_type(i8*) #1

declare dso_local i32 @free(%struct.osm_routing_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
