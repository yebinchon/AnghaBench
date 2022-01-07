; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_cache.c_osm_ucast_cache_add_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_cache.c_osm_ucast_cache_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i32*, i32*, i32*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32*, i32*, i64, i32 }

@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Skip caching. Switch dropped before it gets a valid lid.\0A\00", align 1
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Caching dropped switch lid %u\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"ERR AD03: no switch info for node lid %u - clearing cache\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Dropped non-leaf switch (lid %u)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"No LID matrices for switch lid %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osm_ucast_cache_add_node(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @OSM_LOG_ENTER(i32 %12)
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %238

19:                                               ; preds = %2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = call i64 @osm_node_get_type(%struct.TYPE_23__* %20)
  %22 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %197

24:                                               ; preds = %19
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = call i32 @osm_node_get_base_lid(%struct.TYPE_23__* %25, i32 0)
  %27 = call i32 @cl_ntoh16(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %35 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %33, i32 %34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_21__* %36)
  br label %238

38:                                               ; preds = %24
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %41, i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = icmp ne %struct.TYPE_20__* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @OSM_LOG_ERROR, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %52, i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_21__* %56)
  br label %238

58:                                               ; preds = %38
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %60 = call i32 @osm_node_get_num_physp(%struct.TYPE_23__* %59)
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %84, %58
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.TYPE_22__* @osm_node_get_physp_ptr(%struct.TYPE_23__* %66, i32 %67)
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %8, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = icmp ne %struct.TYPE_22__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = icmp ne %struct.TYPE_22__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %65
  br label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = call i32 @osm_ucast_cache_add_link(%struct.TYPE_21__* %78, %struct.TYPE_22__* %79, %struct.TYPE_22__* %82)
  br label %84

84:                                               ; preds = %77, %76
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %61

87:                                               ; preds = %61
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call %struct.TYPE_24__* @cache_get_sw(%struct.TYPE_21__* %88, i32 %89)
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %9, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = icmp ne %struct.TYPE_24__* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = call i32 @cache_sw_is_leaf(%struct.TYPE_24__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %100, i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_21__* %104)
  br label %238

106:                                              ; preds = %93
  %107 = load i32, i32* @TRUE, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %106
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %116, %106
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %126, i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %131 = call i32 @osm_ucast_cache_invalidate(%struct.TYPE_21__* %130)
  br label %238

132:                                              ; preds = %116
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 5
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 4
  store i32* null, i32** %154, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %173

161:                                              ; preds = %132
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  store i32* %166, i32** %168, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 3
  store i32* null, i32** %172, align 8
  br label %189

173:                                              ; preds = %132
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  store i32* %178, i32** %180, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %173, %161
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  br label %237

197:                                              ; preds = %19
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %199 = call i32 @osm_node_get_num_physp(%struct.TYPE_23__* %198)
  store i32 %199, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %200

200:                                              ; preds = %233, %197
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %236

204:                                              ; preds = %200
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call %struct.TYPE_22__* @osm_node_get_physp_ptr(%struct.TYPE_23__* %205, i32 %206)
  store %struct.TYPE_22__* %207, %struct.TYPE_22__** %8, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %209 = icmp ne %struct.TYPE_22__* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %212, align 8
  %214 = icmp ne %struct.TYPE_22__* %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %210, %204
  br label %233

216:                                              ; preds = %210
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %220, align 8
  %222 = call i64 @osm_node_get_type(%struct.TYPE_23__* %221)
  %223 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @CL_ASSERT(i32 %225)
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %232 = call i32 @osm_ucast_cache_add_link(%struct.TYPE_21__* %227, %struct.TYPE_22__* %230, %struct.TYPE_22__* %231)
  br label %233

233:                                              ; preds = %216, %215
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %200

236:                                              ; preds = %200
  br label %237

237:                                              ; preds = %236, %189
  br label %238

238:                                              ; preds = %237, %123, %97, %49, %30, %18
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @OSM_LOG_EXIT(i32 %241)
  ret void
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i64 @osm_node_get_type(%struct.TYPE_23__*) #1

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i32 @osm_node_get_base_lid(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, ...) #1

declare dso_local i32 @osm_ucast_cache_invalidate(%struct.TYPE_21__*) #1

declare dso_local i32 @osm_node_get_num_physp(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @osm_node_get_physp_ptr(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @osm_ucast_cache_add_link(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_24__* @cache_get_sw(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @cache_sw_is_leaf(%struct.TYPE_24__*) #1

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
