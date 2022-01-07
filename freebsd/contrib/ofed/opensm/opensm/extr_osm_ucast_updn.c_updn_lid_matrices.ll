; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_updn.c_updn_lid_matrices.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_updn.c_updn_lid_matrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ERR AA0C: cannot create updn node\0A\00", align 1
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"UPDN - Fetching root nodes from file '%s'\0A\00", align 1
@rank_root_node = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"ERR AA02: cannot parse root guids file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"UPDN - update node ids from file '%s'\0A\00", align 1
@update_id = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"ERR AA03: cannot parse node ids file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"activating UPDN algorithm\0A\00", align 1
@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"disabling UPDN algorithm, no root nodes were found\0A\00", align 1
@OSM_LOG_ROUTING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"opensm-updn-roots.dump\00", align 1
@dump_roots = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @updn_lid_matrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @updn_lid_matrices(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = call i32 @OSM_LOG_ENTER(i32* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = call i32* @cl_qmap_head(i32* %19)
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %54, %1
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = call i32* @cl_qmap_end(i32* %27)
  %29 = icmp ne i32* %22, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %6, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = call i32 @create_updn_node(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %30
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* @OSM_LOG_ERROR, align 4
  %47 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %45, i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = call i32 @OSM_LOG_EXIT(i32* %51)
  store i32 -1, i32* %2, align 4
  br label %273

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @cl_qmap_next(i32* %55)
  store i32* %56, i32** %5, align 8
  br label %21

57:                                               ; preds = %21
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %139

68:                                               ; preds = %57
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %72, i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @rank_root_node, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = call i32 @parse_node_map(i64 %88, i32 %89, %struct.TYPE_14__* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %68
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* @OSM_LOG_ERROR, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %98, i32 %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = call i32 @osm_ucast_mgr_build_lid_matrices(i32* %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = call i32 @updn_find_root_nodes_by_min_hop(%struct.TYPE_14__* %114)
  br label %138

116:                                              ; preds = %68
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %116
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = call i32 @osm_ucast_mgr_build_lid_matrices(i32* %135)
  br label %137

137:                                              ; preds = %130, %125, %116
  br label %138

138:                                              ; preds = %137, %94
  br label %148

139:                                              ; preds = %57
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = call i32 @osm_ucast_mgr_build_lid_matrices(i32* %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = call i32 @updn_find_root_nodes_by_min_hop(%struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %139, %138
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %200

157:                                              ; preds = %148
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %161, i32 %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @update_id, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = call i32 @parse_node_map(i64 %177, i32 %178, %struct.TYPE_14__* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %157
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i32, i32* @OSM_LOG_ERROR, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %189, i32 %190, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %197)
  br label %199

199:                                              ; preds = %185, %157
  br label %200

200:                                              ; preds = %199, %148
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %211 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %209, i32 %210, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = call i32 @updn_build_lid_matrices(%struct.TYPE_14__* %212)
  store i32 %213, i32* %7, align 4
  br label %221

214:                                              ; preds = %200
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i32, i32* @OSM_LOG_INFO, align 4
  %220 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %218, i32 %219, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %221

221:                                              ; preds = %214, %205
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* @OSM_LOG_ROUTING, align 4
  %227 = call i64 @OSM_LOG_IS_ACTIVE_V2(i32* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %221
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* @dump_roots, align 4
  %239 = call i32 @osm_dump_qmap_to_file(%struct.TYPE_14__* %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %237, i32 %238, i32* null)
  br label %240

240:                                              ; preds = %229, %221
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = call i32* @cl_qmap_head(i32* %245)
  store i32* %246, i32** %5, align 8
  br label %247

247:                                              ; preds = %263, %240
  %248 = load i32*, i32** %5, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = call i32* @cl_qmap_end(i32* %253)
  %255 = icmp ne i32* %248, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %247
  %257 = load i32*, i32** %5, align 8
  %258 = bitcast i32* %257 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %258, %struct.TYPE_15__** %6, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @delete_updn_node(i32 %261)
  br label %263

263:                                              ; preds = %256
  %264 = load i32*, i32** %5, align 8
  %265 = call i32* @cl_qmap_next(i32* %264)
  store i32* %265, i32** %5, align 8
  br label %247

266:                                              ; preds = %247
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = call i32 @OSM_LOG_EXIT(i32* %270)
  %272 = load i32, i32* %7, align 4
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %266, %41
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32 @create_updn_node(%struct.TYPE_15__*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i32 @parse_node_map(i64, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @osm_ucast_mgr_build_lid_matrices(i32*) #1

declare dso_local i32 @updn_find_root_nodes_by_min_hop(%struct.TYPE_14__*) #1

declare dso_local i32 @updn_build_lid_matrices(%struct.TYPE_14__*) #1

declare dso_local i64 @OSM_LOG_IS_ACTIVE_V2(i32*, i32) #1

declare dso_local i32 @osm_dump_qmap_to_file(%struct.TYPE_14__*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @delete_updn_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
