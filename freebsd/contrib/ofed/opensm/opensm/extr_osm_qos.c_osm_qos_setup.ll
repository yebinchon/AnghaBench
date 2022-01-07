; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_osm_qos_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_osm_qos_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.qos_config = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }

@IB_NODE_TYPE_ROUTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_qos_setup(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.qos_config, align 4
  %5 = alloca %struct.qos_config, align 4
  %6 = alloca %struct.qos_config, align 4
  %7 = alloca %struct.qos_config, align 4
  %8 = alloca %struct.qos_config*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %239

26:                                               ; preds = %1
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = call i32 @OSM_LOG_ENTER(i32* %28)
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = call i32 @qos_build_config(%struct.qos_config* %4, i32* %33, i32* %37)
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = call i32 @qos_build_config(%struct.qos_config* %5, i32* %42, i32* %46)
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = call i32 @qos_build_config(%struct.qos_config* %6, i32* %51, i32* %55)
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = call i32 @qos_build_config(%struct.qos_config* %7, i32* %60, i32* %64)
  %66 = call i32 @cl_qlist_init(i32* %18)
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = call i32 @cl_plock_excl_acquire(i32* %68)
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 3
  %72 = call i32 @osm_qos_parse_policy_file(%struct.TYPE_21__* %71)
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32* @cl_qmap_head(i32* %76)
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %189, %26
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32* @cl_qmap_end(i32* %80)
  %82 = icmp ne i32* %79, %81
  br i1 %82, label %83, label %190

83:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = bitcast i32* %84 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %85, %struct.TYPE_28__** %11, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32* @cl_qmap_next(i32* %86)
  store i32* %87, i32** %10, align 8
  %88 = call i64 @malloc(i32 8)
  %89 = inttoptr i64 %88 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %89, %struct.TYPE_26__** %15, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %91 = icmp ne %struct.TYPE_26__* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %83
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 1
  %95 = call i32 @cl_plock_release(i32* %94)
  store i32 -1, i32* %2, align 4
  br label %239

96:                                               ; preds = %83
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %98 = call i32 @memset(%struct.TYPE_26__* %97, i32 0, i32 8)
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = call i32 @cl_qlist_init(i32* %100)
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  store %struct.TYPE_30__* %104, %struct.TYPE_30__** %12, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = icmp ne %struct.TYPE_23__* %107, null
  br i1 %108, label %109, label %152

109:                                              ; preds = %96
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = call i64 @qos_extports_setup(%struct.TYPE_20__* %111, %struct.TYPE_30__* %112, %struct.qos_config* %6, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 1
  %120 = call i32 @cl_plock_release(i32* %119)
  store i32 -1, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %109
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = call i32 @ib_switch_info_is_enhanced_port0(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %177

129:                                              ; preds = %121
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = call i64 @ib_switch_info_get_opt_sl2vlmapping(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %129
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %6, i32 0, i32 0
  %147 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %5, i32 0, i32 0
  %148 = call i32 @memcmp(i32* %146, i32* %147, i32 4)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  store i32 1, i32* %14, align 4
  br label %151

151:                                              ; preds = %150, %145, %136, %129
  store %struct.qos_config* %5, %struct.qos_config** %8, align 8
  br label %160

152:                                              ; preds = %96
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %154 = call i64 @osm_node_get_type(%struct.TYPE_30__* %153)
  %155 = load i64, i64* @IB_NODE_TYPE_ROUTER, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store %struct.qos_config* %7, %struct.qos_config** %8, align 8
  br label %159

158:                                              ; preds = %152
  store %struct.qos_config* %4, %struct.qos_config** %8, align 8
  br label %159

159:                                              ; preds = %158, %157
  br label %160

160:                                              ; preds = %159, %151
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.qos_config*, %struct.qos_config** %8, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  %170 = call i64 @qos_endport_setup(%struct.TYPE_20__* %162, i32 %165, %struct.qos_config* %166, i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 1
  %175 = call i32 @cl_plock_release(i32* %174)
  store i32 -1, i32* %13, align 4
  br label %176

176:                                              ; preds = %172, %160
  br label %177

177:                                              ; preds = %176, %128
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = call i64 @cl_qlist_count(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 0
  %185 = call i32 @cl_qlist_insert_tail(i32* %18, i32* %184)
  br label %189

186:                                              ; preds = %177
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %188 = call i32 @free(%struct.TYPE_26__* %187)
  br label %189

189:                                              ; preds = %186, %182
  br label %78

190:                                              ; preds = %78
  br label %191

191:                                              ; preds = %230, %190
  %192 = call i64 @cl_qlist_count(i32* %18)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %231

194:                                              ; preds = %191
  %195 = call i64 @cl_qlist_head(i32* %18)
  %196 = inttoptr i64 %195 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %196, %struct.TYPE_26__** %16, align 8
  br label %197

197:                                              ; preds = %229, %194
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %199 = call i64 @cl_qlist_end(i32* %18)
  %200 = inttoptr i64 %199 to %struct.TYPE_26__*
  %201 = icmp ne %struct.TYPE_26__* %198, %200
  br i1 %201, label %202, label %230

202:                                              ; preds = %197
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %203, %struct.TYPE_26__** %15, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 0
  %206 = call i64 @cl_qlist_next(i32* %205)
  %207 = inttoptr i64 %206 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %207, %struct.TYPE_26__** %16, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 1
  %210 = call i64 @cl_qlist_remove_head(i32* %209)
  %211 = inttoptr i64 %210 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %211, %struct.TYPE_27__** %17, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @osm_send_req_mad(%struct.TYPE_20__* %213, i32 %216)
  %218 = call i32 @osm_qos_mad_delete(%struct.TYPE_27__** %17)
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  %221 = call i64 @cl_qlist_count(i32* %220)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %202
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = call i32 @cl_qlist_remove_item(i32* %18, i32* %225)
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %228 = call i32 @free(%struct.TYPE_26__* %227)
  br label %229

229:                                              ; preds = %223, %202
  br label %197

230:                                              ; preds = %197
  br label %191

231:                                              ; preds = %191
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 1
  %234 = call i32 @cl_plock_release(i32* %233)
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = call i32 @OSM_LOG_EXIT(i32* %236)
  %238 = load i32, i32* %13, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %231, %92, %25
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32 @qos_build_config(%struct.qos_config*, i32*, i32*) #1

declare dso_local i32 @cl_qlist_init(i32*) #1

declare dso_local i32 @cl_plock_excl_acquire(i32*) #1

declare dso_local i32 @osm_qos_parse_policy_file(%struct.TYPE_21__*) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @cl_plock_release(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @qos_extports_setup(%struct.TYPE_20__*, %struct.TYPE_30__*, %struct.qos_config*, i32*) #1

declare dso_local i32 @ib_switch_info_is_enhanced_port0(i32*) #1

declare dso_local i64 @ib_switch_info_get_opt_sl2vlmapping(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @osm_node_get_type(%struct.TYPE_30__*) #1

declare dso_local i64 @qos_endport_setup(%struct.TYPE_20__*, i32, %struct.qos_config*, i32, i32*) #1

declare dso_local i64 @cl_qlist_count(i32*) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_26__*) #1

declare dso_local i64 @cl_qlist_head(i32*) #1

declare dso_local i64 @cl_qlist_end(i32*) #1

declare dso_local i64 @cl_qlist_next(i32*) #1

declare dso_local i64 @cl_qlist_remove_head(i32*) #1

declare dso_local i32 @osm_send_req_mad(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @osm_qos_mad_delete(%struct.TYPE_27__**) #1

declare dso_local i32 @cl_qlist_remove_item(i32*, i32*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
