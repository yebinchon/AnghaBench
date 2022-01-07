; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_dijkstra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_dijkstra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i64, i32 }
%struct.TYPE_17__ = type { i64, i32, i64, i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@INF = common dso_local global i64 0, align 8
@UNDISCOVERED = common dso_local global i64 0, align 8
@IB_NODE_TYPE_CA = common dso_local global i64 0, align 8
@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ERR AD07: cannot allocate memory for a link\0A\00", align 1
@.str.1 = private unnamed_addr constant [166 x i8] c"ERR AD0B: unsupported network state (CA with unhealthy link state discovered; should have been filtered out before already; gracefully shutdown this routing engine)\0A\00", align 1
@DISCOVERED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"ERR AD09: cannot allocate memory for heap or heap->node in heap_create(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64, %struct.TYPE_16__*, i32)* @dijkstra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dijkstra(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i64 %2, %struct.TYPE_16__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  store i64 0, i64* %19, align 8
  store i32* null, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @OSM_LOG_ENTER(i32 %24)
  store i64 1, i64* %12, align 8
  br label %26

26:                                               ; preds = %49, %5
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %38, align 8
  %39 = load i64, i64* @INF, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* @UNDISCOVERED, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %30
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %12, align 8
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @osm_node_get_type(i32* %55)
  %57 = load i64, i64* @IB_NODE_TYPE_CA, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %208

59:                                               ; preds = %52
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %18, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 0
  %66 = call i32 @set_default_vertex(%struct.TYPE_14__* %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @osm_node_get_node_guid(i32* %69)
  %71 = call i8* @cl_ntoh64(i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 7
  store i32 %76, i32* %79, align 8
  store i64 0, i64* %14, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 5
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = icmp ne %struct.TYPE_18__* %86, null
  br i1 %87, label %88, label %201

88:                                               ; preds = %59
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = call i64 @osm_link_is_healthy(%struct.TYPE_18__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %201

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @osm_node_get_remote_node(i32* %97, i32 %102, i32* %16)
  store i32* %103, i32** %15, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %200

106:                                              ; preds = %94
  %107 = load i32*, i32** %15, align 8
  %108 = call i64 @osm_node_get_type(i32* %107)
  %109 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %200

111:                                              ; preds = %106
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = icmp ne %struct.TYPE_17__* %115, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %111
  %118 = call i64 @malloc(i32 48)
  %119 = inttoptr i64 %118 to %struct.TYPE_17__*
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 5
  store %struct.TYPE_17__* %119, %struct.TYPE_17__** %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = icmp ne %struct.TYPE_17__* %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %117
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @OSM_LOG_ERROR, align 4
  %133 = call i32 @OSM_LOG(i32 %131, i32 %132, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %396

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134, %111
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = call i32 @set_default_link(%struct.TYPE_17__* %139)
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @osm_node_get_node_guid(i32* %141)
  %143 = call i8* @cl_ntoh64(i32 %142)
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  store i64 %144, i64* %149, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 6
  store i32 %154, i32* %159, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 5
  store i32 %160, i32* %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 8
  store i64 1, i64* %13, align 8
  br label %171

171:                                              ; preds = %196, %135
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* %9, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %171
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %183 = load i64, i64* %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %181, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %175
  %189 = load i64, i64* %13, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  store i64 %189, i64* %194, align 8
  br label %199

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %13, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %13, align 8
  br label %171

199:                                              ; preds = %188, %171
  br label %200

200:                                              ; preds = %199, %106, %94
  br label %207

201:                                              ; preds = %88, %59
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @OSM_LOG_ERROR, align 4
  %206 = call i32 @OSM_LOG(i32 %204, i32 %205, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %396

207:                                              ; preds = %200
  br label %249

208:                                              ; preds = %52
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = icmp ne %struct.TYPE_17__* %212, null
  br i1 %213, label %214, label %223

214:                                              ; preds = %208
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 5
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = call i32 @free(%struct.TYPE_17__* %218)
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 0
  %222 = call i32 @set_default_vertex(%struct.TYPE_14__* %221)
  br label %223

223:                                              ; preds = %214, %208
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @osm_node_get_node_guid(i32* %226)
  %228 = call i8* @cl_ntoh64(i32 %227)
  %229 = ptrtoint i8* %228 to i64
  store i64 %229, i64* %19, align 8
  store i64 1, i64* %12, align 8
  br label %230

230:                                              ; preds = %245, %223
  %231 = load i64, i64* %12, align 8
  %232 = load i64, i64* %9, align 8
  %233 = icmp ult i64 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %230
  %235 = load i64, i64* %19, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %237 = load i64, i64* %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %235, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %234
  %243 = load i64, i64* %12, align 8
  store i64 %243, i64* %14, align 8
  br label %248

244:                                              ; preds = %234
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %12, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %12, align 8
  br label %230

248:                                              ; preds = %242, %230
  br label %249

249:                                              ; preds = %248, %207
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %251 = load i64, i64* %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  %254 = load i64, i64* @DISCOVERED, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %256 = load i64, i64* %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  store i64 %254, i64* %258, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %260 = load i64, i64* %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 6
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i64 @osm_node_get_type(i32* %265)
  %267 = load i64, i64* @IB_NODE_TYPE_CA, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %249
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %271 = load i64, i64* %9, align 8
  %272 = call i32 @heap_create(%struct.TYPE_14__* %270, i64 %271, i32** %20)
  store i32 %272, i32* %21, align 4
  br label %279

273:                                              ; preds = %249
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 1
  %276 = load i64, i64* %9, align 8
  %277 = sub i64 %276, 1
  %278 = call i32 @heap_create(%struct.TYPE_14__* %275, i64 %277, i32** %20)
  store i32 %278, i32* %21, align 4
  br label %279

279:                                              ; preds = %273, %269
  %280 = load i32, i32* %21, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @OSM_LOG_ERROR, align 4
  %287 = call i32 @OSM_LOG(i32 %285, i32 %286, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %288 = load i32, i32* %21, align 4
  store i32 %288, i32* %6, align 4
  br label %396

289:                                              ; preds = %279
  %290 = load i32*, i32** %20, align 8
  %291 = call %struct.TYPE_14__* @heap_getmin(i32* %290)
  store %struct.TYPE_14__* %291, %struct.TYPE_14__** %17, align 8
  br label %292

292:                                              ; preds = %386, %289
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %294 = icmp ne %struct.TYPE_14__* %293, null
  br i1 %294, label %295, label %389

295:                                              ; preds = %292
  %296 = load i64, i64* @DISCOVERED, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  store i64 %296, i64* %298, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 4
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %300, align 8
  %302 = icmp ne %struct.TYPE_17__* %301, null
  br i1 %302, label %303, label %316

303:                                              ; preds = %295
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 6
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, 1
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 6
  store i64 %313, i64* %315, align 8
  br label %316

316:                                              ; preds = %303, %295
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 5
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %318, align 8
  store %struct.TYPE_17__* %319, %struct.TYPE_17__** %18, align 8
  br label %320

320:                                              ; preds = %382, %316
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %322 = icmp ne %struct.TYPE_17__* %321, null
  br i1 %322, label %323, label %386

323:                                              ; preds = %320
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @DISCOVERED, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %381

333:                                              ; preds = %323
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = add nsw i64 %336, %340
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp slt i64 %341, %348
  br i1 %349, label %350, label %381

350:                                              ; preds = %333
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 4
  store %struct.TYPE_17__* %351, %struct.TYPE_17__** %357, align 8
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %360, %364
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 0
  store i64 %365, i64* %371, align 8
  %372 = load i32*, i32** %20, align 8
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @heap_heapify(i32* %372, i32 %379)
  br label %381

381:                                              ; preds = %350, %333, %323
  br label %382

382:                                              ; preds = %381
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 4
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %384, align 8
  store %struct.TYPE_17__* %385, %struct.TYPE_17__** %18, align 8
  br label %320

386:                                              ; preds = %320
  %387 = load i32*, i32** %20, align 8
  %388 = call %struct.TYPE_14__* @heap_getmin(i32* %387)
  store %struct.TYPE_14__* %388, %struct.TYPE_14__** %17, align 8
  br label %292

389:                                              ; preds = %292
  %390 = load i32*, i32** %20, align 8
  %391 = call i32 @heap_free(i32* %390)
  store i32* null, i32** %20, align 8
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @OSM_LOG_EXIT(i32 %394)
  store i32 0, i32* %6, align 4
  br label %396

396:                                              ; preds = %389, %282, %201, %128
  %397 = load i32, i32* %6, align 4
  ret i32 %397
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i64 @osm_node_get_type(i32*) #1

declare dso_local i32 @set_default_vertex(%struct.TYPE_14__*) #1

declare dso_local i8* @cl_ntoh64(i32) #1

declare dso_local i32 @osm_node_get_node_guid(i32*) #1

declare dso_local i64 @osm_link_is_healthy(%struct.TYPE_18__*) #1

declare dso_local i32* @osm_node_get_remote_node(i32*, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*) #1

declare dso_local i32 @set_default_link(%struct.TYPE_17__*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @heap_create(%struct.TYPE_14__*, i64, i32**) #1

declare dso_local %struct.TYPE_14__* @heap_getmin(i32*) #1

declare dso_local i32 @heap_heapify(i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
