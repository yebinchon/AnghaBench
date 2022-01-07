; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_reclaim_pv_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_reclaim_pv_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.pv_chunk = type { i64*, %struct.TYPE_27__*, i32, %struct.pv_chunk* }
%struct.pv_chunk_header = type { i32 }
%struct.md_page = type { i32 }
%struct.spglist = type { i32 }

@reclaim_pv_chunk.active_reclaims = internal global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"reclaim_pv_chunk: lockp is NULL\00", align 1
@pv_chunks_mutex = common dso_local global i32 0, align 4
@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@pv_entry_frees = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@PC_FREE0 = common dso_local global i64 0, align 8
@PC_FREE1 = common dso_local global i64 0, align 8
@PC_FREE2 = common dso_local global i64 0, align 8
@_NPCPV = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_frees = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_27__*, %struct.rwlock**)* @reclaim_pv_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @reclaim_pv_chunk(%struct.TYPE_27__* %0, %struct.rwlock** %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.rwlock**, align 8
  %5 = alloca %struct.pv_chunk*, align 8
  %6 = alloca %struct.pv_chunk*, align 8
  %7 = alloca %struct.pv_chunk*, align 8
  %8 = alloca %struct.pv_chunk_header, align 4
  %9 = alloca %struct.pv_chunk_header, align 4
  %10 = alloca %struct.md_page*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pv_chunk*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.spglist, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.rwlock** %1, %struct.rwlock*** %4, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %27 = load i32, i32* @MA_OWNED, align 4
  %28 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_27__* %26, i32 %27)
  %29 = load %struct.rwlock**, %struct.rwlock*** %4, align 8
  %30 = icmp ne %struct.rwlock** %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %19, align 8
  %33 = call i32 @SLIST_INIT(%struct.spglist* %20)
  %34 = call i32 @bzero(%struct.pv_chunk_header* %8, i32 4)
  %35 = call i32 @bzero(%struct.pv_chunk_header* %9, i32 4)
  %36 = bitcast %struct.pv_chunk_header* %8 to %struct.pv_chunk*
  store %struct.pv_chunk* %36, %struct.pv_chunk** %6, align 8
  %37 = bitcast %struct.pv_chunk_header* %9 to %struct.pv_chunk*
  store %struct.pv_chunk* %37, %struct.pv_chunk** %7, align 8
  %38 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  %39 = load i32, i32* @reclaim_pv_chunk.active_reclaims, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @reclaim_pv_chunk.active_reclaims, align 4
  %41 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %42 = load i32, i32* @pc_lru, align 4
  %43 = call i32 @TAILQ_INSERT_HEAD(i32* @pv_chunks, %struct.pv_chunk* %41, i32 %42)
  %44 = load %struct.pv_chunk*, %struct.pv_chunk** %7, align 8
  %45 = load i32, i32* @pc_lru, align 4
  %46 = call i32 @TAILQ_INSERT_TAIL(i32* @pv_chunks, %struct.pv_chunk* %44, i32 %45)
  br label %47

47:                                               ; preds = %380, %114, %99, %85, %2
  %48 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %49 = load i32, i32* @pc_lru, align 4
  %50 = call %struct.pv_chunk* @TAILQ_NEXT(%struct.pv_chunk* %48, i32 %49)
  store %struct.pv_chunk* %50, %struct.pv_chunk** %5, align 8
  %51 = load %struct.pv_chunk*, %struct.pv_chunk** %7, align 8
  %52 = icmp ne %struct.pv_chunk* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i64 @SLIST_EMPTY(%struct.spglist* %20)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i1 [ false, %47 ], [ %55, %53 ]
  br i1 %57, label %58, label %381

58:                                               ; preds = %56
  %59 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %60 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %59, i32 0, i32 1
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  store %struct.TYPE_27__* %61, %struct.TYPE_27__** %12, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %63 = icmp eq %struct.TYPE_27__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %348

65:                                               ; preds = %58
  %66 = call i32 @mtx_unlock(i32* @pv_chunks_mutex)
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %69 = icmp ne %struct.TYPE_27__* %67, %68
  br i1 %69, label %70, label %118

70:                                               ; preds = %65
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %72 = icmp ne %struct.TYPE_27__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %76 = icmp ne %struct.TYPE_27__* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %79 = call i32 @PMAP_UNLOCK(%struct.TYPE_27__* %78)
  br label %80

80:                                               ; preds = %77, %73, %70
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %81, %struct.TYPE_27__** %13, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %84 = icmp ugt %struct.TYPE_27__* %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.rwlock**, %struct.rwlock*** %4, align 8
  %87 = call i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock** %86)
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %89 = call i32 @PMAP_LOCK(%struct.TYPE_27__* %88)
  %90 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  br label %47

91:                                               ; preds = %80
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %94 = icmp ne %struct.TYPE_27__* %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %97 = call i64 @PMAP_TRYLOCK(%struct.TYPE_27__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  br label %47

101:                                              ; preds = %95
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  %102 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  %103 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %104 = load i32, i32* @pc_lru, align 4
  %105 = call %struct.pv_chunk* @TAILQ_NEXT(%struct.pv_chunk* %103, i32 %104)
  store %struct.pv_chunk* %105, %struct.pv_chunk** %5, align 8
  %106 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %107 = icmp eq %struct.pv_chunk* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %110 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %109, i32 0, i32 1
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %113 = icmp ne %struct.TYPE_27__* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %101
  br label %47

115:                                              ; preds = %108
  br label %348

116:                                              ; preds = %91
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %65
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %119

119:                                              ; preds = %267, %118
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* @_NPCM, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %270

123:                                              ; preds = %119
  %124 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %125 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = xor i64 %130, -1
  %132 = load i64*, i64** @pc_freemask, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = and i64 %131, %136
  store i64 %137, i64* %21, align 8
  br label %138

138:                                              ; preds = %259, %123
  %139 = load i64, i64* %21, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %266

141:                                              ; preds = %138
  %142 = load i64, i64* %21, align 8
  %143 = call i32 @ffsl(i64 %142)
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %22, align 4
  %145 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %146 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %145, i32 0, i32 3
  %147 = load %struct.pv_chunk*, %struct.pv_chunk** %146, align 8
  %148 = load i32, i32* %23, align 4
  %149 = mul nsw i32 %148, 64
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %147, i64 %152
  store %struct.pv_chunk* %153, %struct.pv_chunk** %16, align 8
  %154 = load %struct.pv_chunk*, %struct.pv_chunk** %16, align 8
  %155 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %17, align 4
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i32* @pmap_pde(%struct.TYPE_27__* %157, i32 %158, i32* %25)
  store i32* %159, i32** %11, align 8
  %160 = load i32, i32* %25, align 4
  %161 = icmp ne i32 %160, 2
  br i1 %161, label %162, label %163

162:                                              ; preds = %141
  br label %259

163:                                              ; preds = %141
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %17, align 4
  %166 = call i32* @pmap_l2_to_l3(i32* %164, i32 %165)
  store i32* %166, i32** %14, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @pmap_load(i32* %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @ATTR_SW_WIRED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %259

174:                                              ; preds = %163
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @pmap_load_clear(i32* %175)
  store i32 %176, i32* %15, align 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @pmap_invalidate_page(%struct.TYPE_27__* %177, i32 %178)
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* @ATTR_MASK, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = call %struct.TYPE_26__* @PHYS_TO_VM_PAGE(i32 %183)
  store %struct.TYPE_26__* %184, %struct.TYPE_26__** %18, align 8
  %185 = load i32, i32* %15, align 4
  %186 = call i64 @pmap_pte_dirty(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %174
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %190 = call i32 @vm_page_dirty(%struct.TYPE_26__* %189)
  br label %191

191:                                              ; preds = %188, %174
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* @ATTR_AF, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %198 = load i32, i32* @PGA_REFERENCED, align 4
  %199 = call i32 @vm_page_aflag_set(%struct.TYPE_26__* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.rwlock**, %struct.rwlock*** %4, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %203 = call i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock** %201, %struct.TYPE_26__* %202)
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load %struct.pv_chunk*, %struct.pv_chunk** %16, align 8
  %208 = load i32, i32* @pv_next, align 4
  %209 = call i32 @TAILQ_REMOVE(i32* %206, %struct.pv_chunk* %207, i32 %208)
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = call i64 @TAILQ_EMPTY(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %200
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @PG_FICTITIOUS, align 4
  %225 = and i32 %223, %224
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %229 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_26__* %228)
  %230 = call %struct.md_page* @pa_to_pvh(i32 %229)
  store %struct.md_page* %230, %struct.md_page** %10, align 8
  %231 = load %struct.md_page*, %struct.md_page** %10, align 8
  %232 = getelementptr inbounds %struct.md_page, %struct.md_page* %231, i32 0, i32 0
  %233 = call i64 @TAILQ_EMPTY(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %237 = load i32, i32* @PGA_WRITEABLE, align 4
  %238 = call i32 @vm_page_aflag_clear(%struct.TYPE_26__* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %227
  br label %240

240:                                              ; preds = %239, %220, %200
  %241 = load i32, i32* %22, align 4
  %242 = zext i32 %241 to i64
  %243 = shl i64 1, %242
  %244 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %245 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %244, i32 0, i32 0
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %23, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = or i64 %250, %243
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %253 = load i32, i32* %17, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 @pmap_load(i32* %254)
  %256 = call i32 @pmap_unuse_pt(%struct.TYPE_27__* %252, i32 %253, i32 %255, %struct.spglist* %20)
  %257 = load i32, i32* %24, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %24, align 4
  br label %259

259:                                              ; preds = %240, %173, %162
  %260 = load i32, i32* %22, align 4
  %261 = zext i32 %260 to i64
  %262 = shl i64 1, %261
  %263 = xor i64 %262, -1
  %264 = load i64, i64* %21, align 8
  %265 = and i64 %264, %263
  store i64 %265, i64* %21, align 8
  br label %138

266:                                              ; preds = %138
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %23, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %23, align 4
  br label %119

270:                                              ; preds = %119
  %271 = load i32, i32* %24, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  br label %348

275:                                              ; preds = %270
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %277 = load i32, i32* %24, align 4
  %278 = call i32 @pmap_resident_count_dec(%struct.TYPE_27__* %276, i32 %277)
  %279 = load i32, i32* %24, align 4
  %280 = call i32 @atomic_add_long(i32* @pv_entry_frees, i32 %279)
  %281 = call i32 @PV_STAT(i32 %280)
  %282 = load i32, i32* %24, align 4
  %283 = call i32 @atomic_add_int(i32* @pv_entry_spare, i32 %282)
  %284 = call i32 @PV_STAT(i32 %283)
  %285 = load i32, i32* %24, align 4
  %286 = call i32 @atomic_subtract_long(i32* @pv_entry_count, i32 %285)
  %287 = call i32 @PV_STAT(i32 %286)
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 0
  %290 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %291 = load i32, i32* @pc_list, align 4
  %292 = call i32 @TAILQ_REMOVE(i32* %289, %struct.pv_chunk* %290, i32 %291)
  %293 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %294 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @PC_FREE0, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %336

300:                                              ; preds = %275
  %301 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %302 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %301, i32 0, i32 0
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @PC_FREE1, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %336

308:                                              ; preds = %300
  %309 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %310 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 2
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @PC_FREE2, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %336

316:                                              ; preds = %308
  %317 = load i32, i32* @_NPCPV, align 4
  %318 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i32 %317)
  %319 = call i32 @PV_STAT(i32 %318)
  %320 = call i32 @atomic_subtract_int(i32* @pc_chunk_count, i32 1)
  %321 = call i32 @PV_STAT(i32 %320)
  %322 = call i32 @atomic_add_int(i32* @pc_chunk_frees, i32 1)
  %323 = call i32 @PV_STAT(i32 %322)
  %324 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %325 = ptrtoint %struct.pv_chunk* %324 to i32
  %326 = call i32 @DMAP_TO_PHYS(i32 %325)
  %327 = call %struct.TYPE_26__* @PHYS_TO_VM_PAGE(i32 %326)
  store %struct.TYPE_26__* %327, %struct.TYPE_26__** %19, align 8
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @dump_drop_page(i32 %330)
  %332 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  %333 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %334 = load i32, i32* @pc_lru, align 4
  %335 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %333, i32 %334)
  br label %381

336:                                              ; preds = %308, %300, %275
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 0
  %339 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %340 = load i32, i32* @pc_list, align 4
  %341 = call i32 @TAILQ_INSERT_HEAD(i32* %338, %struct.pv_chunk* %339, i32 %340)
  %342 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %345 = icmp eq %struct.TYPE_27__* %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %336
  br label %381

347:                                              ; preds = %336
  br label %348

348:                                              ; preds = %347, %273, %115, %64
  %349 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %350 = load i32, i32* @pc_lru, align 4
  %351 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %349, i32 %350)
  %352 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %353 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %354 = load i32, i32* @pc_lru, align 4
  %355 = call i32 @TAILQ_INSERT_AFTER(i32* @pv_chunks, %struct.pv_chunk* %352, %struct.pv_chunk* %353, i32 %354)
  %356 = load i32, i32* @reclaim_pv_chunk.active_reclaims, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %380

358:                                              ; preds = %348
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %360 = icmp ne %struct.TYPE_27__* %359, null
  br i1 %360, label %361, label %380

361:                                              ; preds = %358
  br label %362

362:                                              ; preds = %366, %361
  %363 = call %struct.pv_chunk* @TAILQ_FIRST(i32* @pv_chunks)
  store %struct.pv_chunk* %363, %struct.pv_chunk** %5, align 8
  %364 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %365 = icmp ne %struct.pv_chunk* %363, %364
  br i1 %365, label %366, label %379

366:                                              ; preds = %362
  %367 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %368 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %367, i32 0, i32 1
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %368, align 8
  %370 = icmp ne %struct.TYPE_27__* %369, null
  %371 = zext i1 %370 to i32
  %372 = call i32 @MPASS(i32 %371)
  %373 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %374 = load i32, i32* @pc_lru, align 4
  %375 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %373, i32 %374)
  %376 = load %struct.pv_chunk*, %struct.pv_chunk** %5, align 8
  %377 = load i32, i32* @pc_lru, align 4
  %378 = call i32 @TAILQ_INSERT_TAIL(i32* @pv_chunks, %struct.pv_chunk* %376, i32 %377)
  br label %362

379:                                              ; preds = %362
  br label %380

380:                                              ; preds = %379, %358, %348
  br label %47

381:                                              ; preds = %346, %316, %56
  %382 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %383 = load i32, i32* @pc_lru, align 4
  %384 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %382, i32 %383)
  %385 = load %struct.pv_chunk*, %struct.pv_chunk** %7, align 8
  %386 = load i32, i32* @pc_lru, align 4
  %387 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %385, i32 %386)
  %388 = load i32, i32* @reclaim_pv_chunk.active_reclaims, align 4
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* @reclaim_pv_chunk.active_reclaims, align 4
  %390 = call i32 @mtx_unlock(i32* @pv_chunks_mutex)
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %392 = icmp ne %struct.TYPE_27__* %391, null
  br i1 %392, label %393, label %400

393:                                              ; preds = %381
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %396 = icmp ne %struct.TYPE_27__* %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %399 = call i32 @PMAP_UNLOCK(%struct.TYPE_27__* %398)
  br label %400

400:                                              ; preds = %397, %393, %381
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %402 = icmp eq %struct.TYPE_26__* %401, null
  br i1 %402, label %403, label %412

403:                                              ; preds = %400
  %404 = call i64 @SLIST_EMPTY(%struct.spglist* %20)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %403
  %407 = call %struct.TYPE_26__* @SLIST_FIRST(%struct.spglist* %20)
  store %struct.TYPE_26__* %407, %struct.TYPE_26__** %19, align 8
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @plinks, i32 0, i32 0, i32 0), align 4
  %409 = call i32 @SLIST_REMOVE_HEAD(%struct.spglist* %20, i32 %408)
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 1
  store i32 1, i32* %411, align 4
  br label %412

412:                                              ; preds = %406, %403, %400
  %413 = call i32 @vm_page_free_pages_toq(%struct.spglist* %20, i32 1)
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  ret %struct.TYPE_26__* %414
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @bzero(%struct.pv_chunk_header*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local %struct.pv_chunk* @TAILQ_NEXT(%struct.pv_chunk*, i32) #1

declare dso_local i64 @SLIST_EMPTY(%struct.spglist*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock**) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_27__*) #1

declare dso_local i64 @PMAP_TRYLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_27__*, i32, i32*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @pmap_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_26__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock**, %struct.TYPE_26__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_27__*, i32, i32, %struct.spglist*) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @atomic_subtract_long(i32*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i32 @dump_drop_page(i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.pv_chunk*, %struct.pv_chunk*, i32) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.TYPE_26__* @SLIST_FIRST(%struct.spglist*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.spglist*, i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
