; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_discover_network_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_discover_network_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__*, i64, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ERR 4D03: Start VL(%d) too high for min operational vl(%d)\0A\00", align 1
@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"min operational vl(%d) start vl(%d) max_switches(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @discover_network_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discover_network_properties(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = call i32 @cl_qmap_count(i32* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @calloc(i32 %30, i32 8)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %178

39:                                               ; preds = %1
  store i64 5, i64* %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = call i64 @cl_qmap_head(i32* %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %8, align 8
  br label %44

44:                                               ; preds = %118, %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = call i64 @cl_qmap_end(i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_13__*
  %50 = icmp ne %struct.TYPE_13__* %45, %49
  br i1 %50, label %51, label %119

51:                                               ; preds = %44
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %9, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = call i64 @cl_qmap_next(i32* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %8, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = call i32 @switch_create(%struct.TYPE_16__* %57, i32 %58, %struct.TYPE_13__* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %178

76:                                               ; preds = %51
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @osm_node_get_num_physp(i32 %81)
  store i32 %82, i32* %11, align 4
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %115, %76
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call %struct.TYPE_15__* @osm_node_get_physp_ptr(i32 %90, i32 %91)
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %12, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %114

95:                                               ; preds = %87
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i64 @ib_port_info_get_op_vls(i32* %103)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i64, i64* %14, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %111, %107, %100
  br label %114

114:                                              ; preds = %113, %95, %87
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %83

118:                                              ; preds = %83
  br label %44

119:                                              ; preds = %44
  %120 = load i64, i64* %6, align 8
  %121 = sub nsw i64 %120, 1
  %122 = trunc i64 %121 to i32
  %123 = shl i32 1, %122
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = icmp sgt i64 %125, 15
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i64 15, i64* %6, align 8
  br label %128

128:                                              ; preds = %127, %119
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %128
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* @OSM_LOG_ERROR, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = call i32 (i32*, i32, i8*, i64, i64, ...) @OSM_LOG(i32* %139, i32 %140, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %147, i64 %148)
  store i32 -1, i32* %2, align 4
  br label %178

150:                                              ; preds = %128
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %151, %158
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* @OSM_LOG_INFO, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32*, i32, i8*, i64, i64, ...) @OSM_LOG(i32* %162, i32 %163, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %166, i64 %173, i32 %176)
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %150, %138, %75, %38
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @cl_qmap_count(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @cl_qmap_head(i32*) #1

declare dso_local i64 @cl_qmap_end(i32*) #1

declare dso_local i64 @cl_qmap_next(i32*) #1

declare dso_local i32 @switch_create(%struct.TYPE_16__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @osm_node_get_num_physp(i32) #1

declare dso_local %struct.TYPE_15__* @osm_node_get_physp_ptr(i32, i32) #1

declare dso_local i64 @ib_port_info_get_op_vls(i32*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
