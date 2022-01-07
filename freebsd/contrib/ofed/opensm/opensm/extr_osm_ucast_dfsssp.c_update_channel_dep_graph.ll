; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_update_channel_dep_graph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_update_channel_dep_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i64, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64* }

@OSM_NO_PATH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__**, %struct.TYPE_22__*, i64, %struct.TYPE_22__*, i64)* @update_channel_dep_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_channel_dep_graph(%struct.TYPE_24__** %0, %struct.TYPE_22__* %1, i64 %2, %struct.TYPE_22__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 16
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %16, align 4
  %30 = call i64 @malloc(i32 48)
  %31 = inttoptr i64 %30 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %20, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %33 = icmp ne %struct.TYPE_24__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %333

35:                                               ; preds = %5
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %37 = call i32 @set_default_cdg_node(%struct.TYPE_24__* %36)
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %22, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_23__* @osm_node_get_remote_node(%struct.TYPE_23__* %41, i64 %46, i64* %18)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %13, align 8
  br label %48

48:                                               ; preds = %304, %35
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = icmp ne %struct.TYPE_21__* %54, null
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %58, label %306

58:                                               ; preds = %56
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %59, %struct.TYPE_23__** %12, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @OSM_NO_PATH, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %333

72:                                               ; preds = %58
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %74 = call i32 @osm_node_get_base_lid(%struct.TYPE_23__* %73, i32 0)
  %75 = call i64 @cl_ntoh16(i32 %74)
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call %struct.TYPE_23__* @osm_node_get_remote_node(%struct.TYPE_23__* %76, i64 %77, i64* %18)
  store %struct.TYPE_23__* %78, %struct.TYPE_23__** %13, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %80 = icmp ne %struct.TYPE_23__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = icmp ne %struct.TYPE_21__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %72
  br label %306

87:                                               ; preds = %81
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %89 = call i32 @osm_node_get_base_lid(%struct.TYPE_23__* %88, i32 0)
  %90 = call i64 @cl_ntoh16(i32 %89)
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 48
  %94 = load i64, i64* %17, align 8
  %95 = trunc i64 %94 to i32
  %96 = shl i32 %95, 32
  %97 = add nsw i32 %93, %96
  %98 = load i64, i64* %15, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 16
  %101 = add nsw i32 %97, %100
  %102 = load i64, i64* %18, align 8
  %103 = trunc i64 %102 to i32
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %19, align 4
  %105 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = load i32, i32* %19, align 4
  %108 = call %struct.TYPE_24__* @cdg_search(%struct.TYPE_24__* %106, i32 %107)
  store %struct.TYPE_24__* %108, %struct.TYPE_24__** %21, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %110 = icmp ne %struct.TYPE_24__* %109, null
  br i1 %110, label %111, label %209

111:                                              ; preds = %87
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  store %struct.TYPE_24__* %114, %struct.TYPE_24__** %23, align 8
  br label %115

115:                                              ; preds = %131, %111
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %117 = icmp ne %struct.TYPE_24__* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %123 = icmp ne %struct.TYPE_24__* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = icmp ne %struct.TYPE_24__* %127, null
  br label %129

129:                                              ; preds = %124, %118, %115
  %130 = phi i1 [ false, %118 ], [ false, %115 ], [ %128, %124 ]
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %23, align 8
  br label %115

135:                                              ; preds = %129
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %137 = icmp ne %struct.TYPE_24__* %136, null
  br i1 %137, label %138, label %175

138:                                              ; preds = %135
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %143 = icmp eq %struct.TYPE_24__* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @set_next_srcdest_pair(%struct.TYPE_24__* %145, i32 %146)
  br label %174

148:                                              ; preds = %138
  %149 = call i64 @malloc(i32 48)
  %150 = inttoptr i64 %149 to %struct.TYPE_24__*
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  store %struct.TYPE_24__* %150, %struct.TYPE_24__** %152, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = icmp ne %struct.TYPE_24__* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %333

158:                                              ; preds = %148
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %160, align 8
  store %struct.TYPE_24__* %161, %struct.TYPE_24__** %23, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 5
  store %struct.TYPE_24__* %162, %struct.TYPE_24__** %164, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 4
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %168, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @set_next_srcdest_pair(%struct.TYPE_24__* %169, i32 %170)
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %173, align 8
  br label %174

174:                                              ; preds = %158, %144
  br label %208

175:                                              ; preds = %135
  %176 = call i64 @malloc(i32 48)
  %177 = inttoptr i64 %176 to %struct.TYPE_24__*
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 1
  store %struct.TYPE_24__* %177, %struct.TYPE_24__** %179, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = icmp ne %struct.TYPE_24__* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %175
  br label %333

185:                                              ; preds = %175
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 5
  store %struct.TYPE_24__* %186, %struct.TYPE_24__** %190, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %198, align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @set_next_srcdest_pair(%struct.TYPE_24__* %201, i32 %202)
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %207, align 8
  br label %208

208:                                              ; preds = %185, %174
  br label %304

209:                                              ; preds = %87
  %210 = call i64 @malloc(i32 48)
  %211 = inttoptr i64 %210 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %211, %struct.TYPE_24__** %21, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %213 = icmp ne %struct.TYPE_24__* %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  br label %333

215:                                              ; preds = %209
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %217 = call i32 @set_default_cdg_node(%struct.TYPE_24__* %216)
  %218 = load i32, i32* %19, align 4
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %223 = call i32 @cdg_insert(%struct.TYPE_24__** %221, %struct.TYPE_24__* %222)
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %225, align 8
  store %struct.TYPE_24__* %226, %struct.TYPE_24__** %23, align 8
  br label %227

227:                                              ; preds = %237, %215
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %229 = icmp ne %struct.TYPE_24__* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %232, align 8
  %234 = icmp ne %struct.TYPE_24__* %233, null
  br label %235

235:                                              ; preds = %230, %227
  %236 = phi i1 [ false, %227 ], [ %234, %230 ]
  br i1 %236, label %237, label %241

237:                                              ; preds = %235
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %239, align 8
  store %struct.TYPE_24__* %240, %struct.TYPE_24__** %23, align 8
  br label %227

241:                                              ; preds = %235
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %243 = icmp ne %struct.TYPE_24__* %242, null
  br i1 %243, label %244, label %270

244:                                              ; preds = %241
  %245 = call i64 @malloc(i32 48)
  %246 = inttoptr i64 %245 to %struct.TYPE_24__*
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 3
  store %struct.TYPE_24__* %246, %struct.TYPE_24__** %248, align 8
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %250, align 8
  %252 = icmp ne %struct.TYPE_24__* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %244
  br label %333

254:                                              ; preds = %244
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %256, align 8
  store %struct.TYPE_24__* %257, %struct.TYPE_24__** %23, align 8
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 5
  store %struct.TYPE_24__* %258, %struct.TYPE_24__** %260, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @set_next_srcdest_pair(%struct.TYPE_24__* %265, i32 %266)
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %269, align 8
  br label %303

270:                                              ; preds = %241
  %271 = call i64 @malloc(i32 48)
  %272 = inttoptr i64 %271 to %struct.TYPE_24__*
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 1
  store %struct.TYPE_24__* %272, %struct.TYPE_24__** %274, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %276, align 8
  %278 = icmp ne %struct.TYPE_24__* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %270
  br label %333

280:                                              ; preds = %270
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 5
  store %struct.TYPE_24__* %281, %struct.TYPE_24__** %285, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 4
  store i64 0, i64* %289, align 8
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %293, align 8
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  %297 = load i32, i32* %16, align 4
  %298 = call i32 @set_next_srcdest_pair(%struct.TYPE_24__* %296, i32 %297)
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %302, align 8
  br label %303

303:                                              ; preds = %280, %254
  br label %304

304:                                              ; preds = %303, %208
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %305, %struct.TYPE_24__** %22, align 8
  br label %48

306:                                              ; preds = %86, %56
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %308, align 8
  %310 = icmp ne %struct.TYPE_24__* %309, null
  br i1 %310, label %311, label %330

311:                                              ; preds = %306
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %315, align 8
  %317 = icmp ne %struct.TYPE_24__* %316, null
  br i1 %317, label %318, label %325

318:                                              ; preds = %311
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %322, align 8
  %324 = call i32 @free(%struct.TYPE_24__* %323)
  br label %325

325:                                              ; preds = %318, %311
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %327, align 8
  %329 = call i32 @free(%struct.TYPE_24__* %328)
  br label %330

330:                                              ; preds = %325, %306
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %332 = call i32 @free(%struct.TYPE_24__* %331)
  store i32 0, i32* %6, align 4
  br label %350

333:                                              ; preds = %279, %253, %214, %184, %157, %71, %34
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %335 = icmp ne %struct.TYPE_24__* %334, null
  br i1 %335, label %336, label %349

336:                                              ; preds = %333
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %338, align 8
  %340 = icmp ne %struct.TYPE_24__* %339, null
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %343, align 8
  %345 = call i32 @free(%struct.TYPE_24__* %344)
  br label %346

346:                                              ; preds = %341, %336
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %348 = call i32 @free(%struct.TYPE_24__* %347)
  br label %349

349:                                              ; preds = %346, %333
  store i32 1, i32* %6, align 4
  br label %350

350:                                              ; preds = %349, %330
  %351 = load i32, i32* %6, align 4
  ret i32 %351
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @set_default_cdg_node(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @osm_node_get_remote_node(%struct.TYPE_23__*, i64, i64*) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @osm_node_get_base_lid(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_24__* @cdg_search(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @set_next_srcdest_pair(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @cdg_insert(%struct.TYPE_24__**, %struct.TYPE_24__*) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
