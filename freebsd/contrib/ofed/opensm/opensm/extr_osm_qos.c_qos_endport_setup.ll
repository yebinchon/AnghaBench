; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_qos_endport_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_qos_endport_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.osm_routing_engine* }
%struct.osm_routing_engine = type { i32, i32 (i32, %struct.TYPE_17__*, i32, i32, i32*)* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.qos_config = type { i32, i32 }

@IB_PORT_CAP_HAS_SL_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.qos_config*, i32, i32*)* @qos_endport_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qos_endport_setup(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.qos_config* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.qos_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.osm_routing_engine*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.qos_config* %2, %struct.qos_config** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %20, %5
  %28 = phi i1 [ true, %5 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %35, align 8
  store %struct.osm_routing_engine* %36, %struct.osm_routing_engine** %13, align 8
  %37 = load %struct.qos_config*, %struct.qos_config** %9, align 8
  %38 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %37, i32 0, i32 1
  store i32* %38, i32** %14, align 8
  %39 = load %struct.qos_config*, %struct.qos_config** %9, align 8
  %40 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.qos_config*, %struct.qos_config** %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @vlarb_update(%struct.TYPE_16__* %44, %struct.TYPE_17__* %45, i32 0, i32 %46, %struct.qos_config* %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %94

52:                                               ; preds = %27
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %94

56:                                               ; preds = %52
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IB_PORT_CAP_HAS_SL_MAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %94

65:                                               ; preds = %56
  %66 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %13, align 8
  %67 = icmp ne %struct.osm_routing_engine* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %13, align 8
  %70 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %69, i32 0, i32 1
  %71 = load i32 (i32, %struct.TYPE_17__*, i32, i32, i32*)*, i32 (i32, %struct.TYPE_17__*, i32, i32, i32*)** %70, align 8
  %72 = icmp ne i32 (i32, %struct.TYPE_17__*, i32, i32, i32*)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  %76 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %13, align 8
  %77 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %76, i32 0, i32 1
  %78 = load i32 (i32, %struct.TYPE_17__*, i32, i32, i32*)*, i32 (i32, %struct.TYPE_17__*, i32, i32, i32*)** %77, align 8
  %79 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %13, align 8
  %80 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = call i32 %78(i32 %81, %struct.TYPE_17__* %82, i32 0, i32 0, i32* %15)
  store i32* %15, i32** %14, align 8
  br label %84

84:                                               ; preds = %73, %68, %65
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i64 @sl2vl_update_table(%struct.TYPE_16__* %85, %struct.TYPE_17__* %86, i32 0, i32 0, i32 %87, i32* %88, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 -1, i32* %6, align 4
  br label %94

93:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %92, %64, %55, %51
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @vlarb_update(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, %struct.qos_config*, i32*) #1

declare dso_local i64 @sl2vl_update_table(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
