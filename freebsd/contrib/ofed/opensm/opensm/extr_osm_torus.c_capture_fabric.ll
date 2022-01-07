; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_capture_fabric.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_capture_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fabric = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i64, i32*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32* }

@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@IB_NODE_TYPE_CA = common dso_local global i64 0, align 8
@IB_NODE_TYPE_ROUTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fabric*)* @capture_fabric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_fabric(%struct.fabric* %0) #0 {
  %2 = alloca %struct.fabric*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fabric* %0, %struct.fabric** %2, align 8
  %16 = load %struct.fabric*, %struct.fabric** %2, align 8
  %17 = getelementptr inbounds %struct.fabric, %struct.fabric* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %3, align 8
  store i32 1, i32* %15, align 4
  %20 = load %struct.fabric*, %struct.fabric** %2, align 8
  %21 = getelementptr inbounds %struct.fabric, %struct.fabric* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call i32 @OSM_LOG_ENTER(i32* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = call i32* @cl_qmap_head(i32* %26)
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %61, %48, %1
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = call i32* @cl_qmap_end(i32* %31)
  %33 = icmp ne i32* %29, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %4, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @cl_qmap_next(i32* %37)
  store i32* %38, i32** %9, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @osm_node_get_type(i32* %44)
  %46 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %28

49:                                               ; preds = %34
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @osm_node_get_num_physp(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @osm_node_get_node_guid(i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.fabric*, %struct.fabric** %2, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @alloc_fswitch(%struct.fabric* %54, i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %245

61:                                               ; preds = %49
  br label %28

62:                                               ; preds = %28
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = call i32* @cl_qmap_head(i32* %64)
  store i32* %65, i32** %9, align 8
  br label %66

66:                                               ; preds = %151, %137, %120, %109, %88, %62
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = call i32* @cl_qmap_end(i32* %69)
  %71 = icmp ne i32* %67, %70
  br i1 %71, label %72, label %152

72:                                               ; preds = %66
  %73 = load i32*, i32** %9, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %7, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* @cl_qmap_next(i32* %75)
  store i32* %76, i32** %9, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %5, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = icmp ne %struct.TYPE_15__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = call i64 @osm_physp_is_valid(%struct.TYPE_15__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %72
  br label %66

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @osm_node_get_type(i32* %92)
  store i64 %93, i64* %10, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load %struct.fabric*, %struct.fabric** %2, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = call i32 @build_sw_endpoint(%struct.fabric* %103, %struct.TYPE_14__* %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  br label %245

109:                                              ; preds = %102
  br label %66

110:                                              ; preds = %98, %89
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %6, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = icmp ne %struct.TYPE_15__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = call i64 @osm_physp_is_valid(%struct.TYPE_15__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116, %110
  br label %66

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @osm_node_get_type(i32* %124)
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @IB_NODE_TYPE_CA, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @IB_NODE_TYPE_ROUTER, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129, %121
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  br label %66

138:                                              ; preds = %133
  %139 = load %struct.fabric*, %struct.fabric** %2, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @osm_node_get_node_guid(i32* %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = call i32 @osm_physp_get_port_num(%struct.TYPE_15__* %145)
  %147 = call i32 @build_ca_link(%struct.fabric* %139, %struct.TYPE_14__* %140, i32 %144, i32 %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %138
  br label %245

151:                                              ; preds = %138
  br label %66

152:                                              ; preds = %66
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = call i32* @cl_qmap_head(i32* %154)
  store i32* %155, i32** %9, align 8
  br label %156

156:                                              ; preds = %243, %152
  %157 = load i32*, i32** %9, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = call i32* @cl_qmap_end(i32* %159)
  %161 = icmp ne i32* %157, %160
  br i1 %161, label %162, label %244

162:                                              ; preds = %156
  %163 = load i32*, i32** %9, align 8
  %164 = bitcast i32* %163 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %4, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i32* @cl_qmap_next(i32* %165)
  store i32* %166, i32** %9, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @osm_node_get_num_physp(i32* %169)
  store i32 %170, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %240, %162
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %243

175:                                              ; preds = %171
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call %struct.TYPE_15__* @osm_node_get_physp_ptr(i32* %178, i32 %179)
  store %struct.TYPE_15__* %180, %struct.TYPE_15__** %5, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = icmp ne %struct.TYPE_15__* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = call i64 @osm_physp_is_valid(%struct.TYPE_15__* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183, %175
  br label %240

188:                                              ; preds = %183
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  store %struct.TYPE_15__* %191, %struct.TYPE_15__** %6, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = icmp ne %struct.TYPE_15__* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = call i64 @osm_physp_is_valid(%struct.TYPE_15__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194, %188
  br label %240

199:                                              ; preds = %194
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = icmp eq %struct.TYPE_15__* %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %240

204:                                              ; preds = %199
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @osm_node_get_type(i32* %207)
  store i64 %208, i64* %10, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @osm_node_get_type(i32* %211)
  store i64 %212, i64* %11, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %220, label %216

216:                                              ; preds = %204
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216, %204
  br label %240

221:                                              ; preds = %216
  %222 = load %struct.fabric*, %struct.fabric** %2, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @osm_node_get_node_guid(i32* %225)
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %228 = call i32 @osm_physp_get_port_num(%struct.TYPE_15__* %227)
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @osm_node_get_node_guid(i32* %231)
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = call i32 @osm_physp_get_port_num(%struct.TYPE_15__* %233)
  %235 = call i32 @build_link(%struct.fabric* %222, i32 %226, i32 %228, i32 %232, i32 %234)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %221
  br label %245

239:                                              ; preds = %221
  br label %240

240:                                              ; preds = %239, %220, %203, %198, %187
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %171

243:                                              ; preds = %171
  br label %156

244:                                              ; preds = %156
  br label %245

245:                                              ; preds = %244, %238, %150, %108, %60
  %246 = load %struct.fabric*, %struct.fabric** %2, align 8
  %247 = getelementptr inbounds %struct.fabric, %struct.fabric* %246, i32 0, i32 0
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = call i32 @OSM_LOG_EXIT(i32* %249)
  %251 = load i32, i32* %15, align 4
  ret i32 %251
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i64 @osm_node_get_type(i32*) #1

declare dso_local i32 @osm_node_get_num_physp(i32*) #1

declare dso_local i32 @osm_node_get_node_guid(i32*) #1

declare dso_local i32 @alloc_fswitch(%struct.fabric*, i32, i32) #1

declare dso_local i64 @osm_physp_is_valid(%struct.TYPE_15__*) #1

declare dso_local i32 @build_sw_endpoint(%struct.fabric*, %struct.TYPE_14__*) #1

declare dso_local i32 @build_ca_link(%struct.fabric*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @osm_physp_get_port_num(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @osm_node_get_physp_ptr(i32*, i32) #1

declare dso_local i32 @build_link(%struct.fabric*, i32, i32, i32, i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
