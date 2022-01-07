; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_vlarb_update_table_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_vlarb_update_table_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.osm_routing_engine* }
%struct.osm_routing_engine = type { i32, i32 (i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, i32)* }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@IB_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_ATTR_VL_ARBITRATION = common dso_local global i32 0, align 4
@IB_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i32, %struct.TYPE_27__*, i32, i32, i32*)* @vlarb_update_table_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlarb_update_table_block(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32 %2, i32 %3, %struct.TYPE_27__* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.osm_routing_engine*, align 8
  %19 = alloca %struct.TYPE_27__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %29, align 8
  store %struct.osm_routing_engine* %30, %struct.osm_routing_engine** %18, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 1
  %33 = call i32 @ib_port_info_get_op_vls(i32* %32)
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %21, align 4
  %37 = call i32 @memset(%struct.TYPE_27__* %19, i32 0, i32 8)
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(%struct.TYPE_27__* %19, %struct.TYPE_27__* %38, i32 %42)
  %44 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %18, align 8
  %45 = icmp ne %struct.osm_routing_engine* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %8
  %47 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %18, align 8
  %48 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %47, i32 0, i32 1
  %49 = load i32 (i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, i32)*, i32 (i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, i32)** %48, align 8
  %50 = icmp ne i32 (i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, i32)* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %18, align 8
  %53 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %52, i32 0, i32 1
  %54 = load i32 (i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, i32)*, i32 (i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, i32)** %53, align 8
  %55 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %18, align 8
  %56 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 %54(i32 %57, %struct.TYPE_26__* %58, i32 %59, %struct.TYPE_27__* %19, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %46, %8
  store i32 0, i32* %22, align 4
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32, i32* %21, align 4
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = load i32, i32* %22, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %69
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %22, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %22, align 4
  br label %64

81:                                               ; preds = %64
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i64 %89
  %91 = load i32, i32* %15, align 4
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcmp(%struct.TYPE_27__* %90, %struct.TYPE_27__* %19, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %84
  %98 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %98, i32* %9, align 4
  br label %132

99:                                               ; preds = %84, %81
  %100 = load i32, i32* %16, align 4
  %101 = add i32 %100, 1
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %20, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %107 = bitcast %struct.TYPE_27__* %19 to i32*
  %108 = load i32, i32* @IB_MAD_ATTR_VL_ARBITRATION, align 4
  %109 = load i32, i32* %20, align 4
  %110 = call %struct.TYPE_24__* @osm_qos_mad_create(%struct.TYPE_25__* %105, %struct.TYPE_26__* %106, i32 8, i32* %107, i32 %108, i32 %109)
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %23, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %112 = icmp ne %struct.TYPE_24__* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %99
  %114 = load i32, i32* @IB_INSUFFICIENT_MEMORY, align 4
  store i32 %114, i32* %9, align 4
  br label %132

115:                                              ; preds = %99
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i64 %120
  %122 = load i32, i32* %15, align 4
  %123 = zext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memset(%struct.TYPE_27__* %121, i32 0, i32 %125)
  %127 = load i32*, i32** %17, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = call i32 @cl_qlist_insert_tail(i32* %127, i32* %129)
  %131 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %115, %113, %97
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

declare dso_local i32 @ib_port_info_get_op_vls(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_24__* @osm_qos_mad_create(%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i32*, i32, i32) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
