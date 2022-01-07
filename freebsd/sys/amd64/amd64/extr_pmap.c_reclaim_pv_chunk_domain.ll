; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_reclaim_pv_chunk_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_reclaim_pv_chunk_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_chunks_list = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.pv_chunk = type { i64*, %struct.TYPE_33__*, i32, %struct.pv_chunk* }
%struct.pv_chunk_header = type { i32 }
%struct.md_page = type { i32 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"reclaim_pv_chunk: lockp is NULL\00", align 1
@pv_chunks = common dso_local global %struct.pv_chunks_list* null, align 8
@pc_lru = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@PG_PS = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
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
@plinks = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_33__*, %struct.rwlock**, i32)* @reclaim_pv_chunk_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @reclaim_pv_chunk_domain(%struct.TYPE_33__* %0, %struct.rwlock** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.rwlock**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pv_chunks_list*, align 8
  %8 = alloca %struct.pv_chunk*, align 8
  %9 = alloca %struct.pv_chunk*, align 8
  %10 = alloca %struct.pv_chunk*, align 8
  %11 = alloca %struct.pv_chunk_header, align 4
  %12 = alloca %struct.pv_chunk_header, align 4
  %13 = alloca %struct.md_page*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pv_chunk*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca %struct.TYPE_32__*, align 8
  %27 = alloca %struct.spglist, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.rwlock** %1, %struct.rwlock*** %5, align 8
  store i32 %2, i32* %6, align 4
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %34 = load i32, i32* @MA_OWNED, align 4
  %35 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_33__* %33, i32 %34)
  %36 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %37 = icmp ne %struct.rwlock** %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %16, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %26, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %40 = call i32 @SLIST_INIT(%struct.spglist* %27)
  %41 = call i32 @bzero(%struct.pv_chunk_header* %11, i32 4)
  %42 = call i32 @bzero(%struct.pv_chunk_header* %12, i32 4)
  %43 = bitcast %struct.pv_chunk_header* %11 to %struct.pv_chunk*
  store %struct.pv_chunk* %43, %struct.pv_chunk** %9, align 8
  %44 = bitcast %struct.pv_chunk_header* %12 to %struct.pv_chunk*
  store %struct.pv_chunk* %44, %struct.pv_chunk** %10, align 8
  %45 = call i32 (...) @pmap_not_in_di()
  store i32 %45, i32* %32, align 4
  %46 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** @pv_chunks, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %46, i64 %48
  store %struct.pv_chunks_list* %49, %struct.pv_chunks_list** %7, align 8
  %50 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %51 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %50, i32 0, i32 1
  %52 = call i32 @mtx_lock(i32* %51)
  %53 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %54 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %58 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %57, i32 0, i32 2
  %59 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %60 = load i32, i32* @pc_lru, align 4
  %61 = call i32 @TAILQ_INSERT_HEAD(i32* %58, %struct.pv_chunk* %59, i32 %60)
  %62 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %63 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %62, i32 0, i32 2
  %64 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %65 = load i32, i32* @pc_lru, align 4
  %66 = call i32 @TAILQ_INSERT_TAIL(i32* %63, %struct.pv_chunk* %64, i32 %65)
  br label %67

67:                                               ; preds = %460, %146, %127, %110, %3
  %68 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %69 = load i32, i32* @pc_lru, align 4
  %70 = call %struct.pv_chunk* @TAILQ_NEXT(%struct.pv_chunk* %68, i32 %69)
  store %struct.pv_chunk* %70, %struct.pv_chunk** %8, align 8
  %71 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %72 = icmp ne %struct.pv_chunk* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = call i64 @SLIST_EMPTY(%struct.spglist* %27)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %73, %67
  %77 = phi i1 [ false, %67 ], [ %75, %73 ]
  br i1 %77, label %78, label %461

78:                                               ; preds = %76
  %79 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %80 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %79, i32 0, i32 1
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %80, align 8
  store %struct.TYPE_33__* %81, %struct.TYPE_33__** %15, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %83 = icmp eq %struct.TYPE_33__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %416

85:                                               ; preds = %78
  %86 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %87 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %86, i32 0, i32 1
  %88 = call i32 @mtx_unlock(i32* %87)
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %91 = icmp ne %struct.TYPE_33__* %89, %90
  br i1 %91, label %92, label %164

92:                                               ; preds = %85
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %95 = load i32, i32* %32, align 4
  %96 = call i32 @reclaim_pv_chunk_leave_pmap(%struct.TYPE_33__* %93, %struct.TYPE_33__* %94, i32 %95)
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %97, %struct.TYPE_33__** %16, align 8
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %100 = icmp ugt %struct.TYPE_33__* %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %92
  %102 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %103 = call i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock** %102)
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %105 = call i32 @PMAP_LOCK(%struct.TYPE_33__* %104)
  %106 = load i32, i32* %32, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 (...) @pmap_delayed_invl_start()
  br label %110

110:                                              ; preds = %108, %101
  %111 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %112 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %111, i32 0, i32 1
  %113 = call i32 @mtx_lock(i32* %112)
  br label %67

114:                                              ; preds = %92
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %117 = icmp ne %struct.TYPE_33__* %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %120 = call i64 @PMAP_TRYLOCK(%struct.TYPE_33__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* %32, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (...) @pmap_delayed_invl_start()
  br label %127

127:                                              ; preds = %125, %122
  %128 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %129 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %128, i32 0, i32 1
  %130 = call i32 @mtx_lock(i32* %129)
  br label %67

131:                                              ; preds = %118
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %16, align 8
  %132 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %133 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %132, i32 0, i32 1
  %134 = call i32 @mtx_lock(i32* %133)
  %135 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %136 = load i32, i32* @pc_lru, align 4
  %137 = call %struct.pv_chunk* @TAILQ_NEXT(%struct.pv_chunk* %135, i32 %136)
  store %struct.pv_chunk* %137, %struct.pv_chunk** %8, align 8
  %138 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %139 = icmp eq %struct.pv_chunk* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %131
  %141 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %142 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %141, i32 0, i32 1
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %142, align 8
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %145 = icmp ne %struct.TYPE_33__* %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140, %131
  br label %67

147:                                              ; preds = %140
  br label %416

148:                                              ; preds = %114
  %149 = load i32, i32* %32, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 (...) @pmap_delayed_invl_start()
  br label %153

153:                                              ; preds = %151, %148
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %157 = call i32 @pmap_global_bit(%struct.TYPE_33__* %156)
  store i32 %157, i32* %19, align 4
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %159 = call i32 @pmap_accessed_bit(%struct.TYPE_33__* %158)
  store i32 %159, i32* %20, align 4
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %161 = call i32 @pmap_modified_bit(%struct.TYPE_33__* %160)
  store i32 %161, i32* %21, align 4
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %163 = call i32 @pmap_rw_bit(%struct.TYPE_33__* %162)
  store i32 %163, i32* %22, align 4
  br label %164

164:                                              ; preds = %155, %85
  store i32 0, i32* %31, align 4
  store i32 0, i32* %30, align 4
  br label %165

165:                                              ; preds = %327, %164
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* @_NPCM, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %330

169:                                              ; preds = %165
  %170 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %171 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %30, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = xor i64 %176, -1
  %178 = load i64*, i64** @pc_freemask, align 8
  %179 = load i32, i32* %30, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = and i64 %177, %182
  store i64 %183, i64* %28, align 8
  br label %184

184:                                              ; preds = %319, %169
  %185 = load i64, i64* %28, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %326

187:                                              ; preds = %184
  %188 = load i64, i64* %28, align 8
  %189 = call i32 @bsfq(i64 %188)
  store i32 %189, i32* %29, align 4
  %190 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %191 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %190, i32 0, i32 3
  %192 = load %struct.pv_chunk*, %struct.pv_chunk** %191, align 8
  %193 = load i32, i32* %30, align 4
  %194 = mul nsw i32 %193, 64
  %195 = load i32, i32* %29, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %192, i64 %197
  store %struct.pv_chunk* %198, %struct.pv_chunk** %23, align 8
  %199 = load %struct.pv_chunk*, %struct.pv_chunk** %23, align 8
  %200 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %24, align 4
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %203 = load i32, i32* %24, align 4
  %204 = call i32* @pmap_pde(%struct.TYPE_33__* %202, i32 %203)
  store i32* %204, i32** %14, align 8
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PG_PS, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %187
  br label %319

211:                                              ; preds = %187
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %24, align 4
  %214 = call i32* @pmap_pde_to_pte(i32* %212, i32 %213)
  store i32* %214, i32** %17, align 8
  %215 = load i32*, i32** %17, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @PG_W, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %319

221:                                              ; preds = %211
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @pte_load_clear(i32* %222)
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %19, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %230 = load i32, i32* %24, align 4
  %231 = call i32 @pmap_invalidate_page(%struct.TYPE_33__* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %221
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @PG_FRAME, align 4
  %235 = and i32 %233, %234
  %236 = call %struct.TYPE_32__* @PHYS_TO_VM_PAGE(i32 %235)
  store %struct.TYPE_32__* %236, %struct.TYPE_32__** %25, align 8
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %22, align 4
  %240 = or i32 %238, %239
  %241 = and i32 %237, %240
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %22, align 4
  %244 = or i32 %242, %243
  %245 = icmp eq i32 %241, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %232
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %248 = call i32 @vm_page_dirty(%struct.TYPE_32__* %247)
  br label %249

249:                                              ; preds = %246, %232
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %20, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %256 = load i32, i32* @PGA_REFERENCED, align 4
  %257 = call i32 @vm_page_aflag_set(%struct.TYPE_32__* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %249
  %259 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %261 = call i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock** %259, %struct.TYPE_32__* %260)
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  %265 = load %struct.pv_chunk*, %struct.pv_chunk** %23, align 8
  %266 = load i32, i32* @pv_next, align 4
  %267 = call i32 @TAILQ_REMOVE(i32* %264, %struct.pv_chunk* %265, i32 %266)
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 0
  %276 = call i64 @TAILQ_EMPTY(i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %298

278:                                              ; preds = %258
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @PG_FICTITIOUS, align 4
  %283 = and i32 %281, %282
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %278
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %287 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_32__* %286)
  %288 = call %struct.md_page* @pa_to_pvh(i32 %287)
  store %struct.md_page* %288, %struct.md_page** %13, align 8
  %289 = load %struct.md_page*, %struct.md_page** %13, align 8
  %290 = getelementptr inbounds %struct.md_page, %struct.md_page* %289, i32 0, i32 0
  %291 = call i64 @TAILQ_EMPTY(i32* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %285
  %294 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %295 = load i32, i32* @PGA_WRITEABLE, align 4
  %296 = call i32 @vm_page_aflag_clear(%struct.TYPE_32__* %294, i32 %295)
  br label %297

297:                                              ; preds = %293, %285
  br label %298

298:                                              ; preds = %297, %278, %258
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %300 = call i32 @pmap_delayed_invl_page(%struct.TYPE_32__* %299)
  %301 = load i32, i32* %29, align 4
  %302 = zext i32 %301 to i64
  %303 = shl i64 1, %302
  %304 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %305 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %304, i32 0, i32 0
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %30, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = or i64 %310, %303
  store i64 %311, i64* %309, align 8
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %313 = load i32, i32* %24, align 4
  %314 = load i32*, i32** %14, align 8
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @pmap_unuse_pt(%struct.TYPE_33__* %312, i32 %313, i32 %315, %struct.spglist* %27)
  %317 = load i32, i32* %31, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %31, align 4
  br label %319

319:                                              ; preds = %298, %220, %210
  %320 = load i32, i32* %29, align 4
  %321 = zext i32 %320 to i64
  %322 = shl i64 1, %321
  %323 = xor i64 %322, -1
  %324 = load i64, i64* %28, align 8
  %325 = and i64 %324, %323
  store i64 %325, i64* %28, align 8
  br label %184

326:                                              ; preds = %184
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %30, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %30, align 4
  br label %165

330:                                              ; preds = %165
  %331 = load i32, i32* %31, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %335 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %334, i32 0, i32 1
  %336 = call i32 @mtx_lock(i32* %335)
  br label %416

337:                                              ; preds = %330
  %338 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %339 = load i32, i32* %31, align 4
  %340 = call i32 @pmap_resident_count_dec(%struct.TYPE_33__* %338, i32 %339)
  %341 = load i32, i32* %31, align 4
  %342 = call i32 @atomic_add_long(i32* @pv_entry_frees, i32 %341)
  %343 = call i32 @PV_STAT(i32 %342)
  %344 = load i32, i32* %31, align 4
  %345 = call i32 @atomic_add_int(i32* @pv_entry_spare, i32 %344)
  %346 = call i32 @PV_STAT(i32 %345)
  %347 = load i32, i32* %31, align 4
  %348 = call i32 @atomic_subtract_long(i32* @pv_entry_count, i32 %347)
  %349 = call i32 @PV_STAT(i32 %348)
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 0
  %352 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %353 = load i32, i32* @pc_list, align 4
  %354 = call i32 @TAILQ_REMOVE(i32* %351, %struct.pv_chunk* %352, i32 %353)
  %355 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %356 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @PC_FREE0, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %402

362:                                              ; preds = %337
  %363 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %364 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %363, i32 0, i32 0
  %365 = load i64*, i64** %364, align 8
  %366 = getelementptr inbounds i64, i64* %365, i64 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @PC_FREE1, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %402

370:                                              ; preds = %362
  %371 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %372 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %371, i32 0, i32 0
  %373 = load i64*, i64** %372, align 8
  %374 = getelementptr inbounds i64, i64* %373, i64 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @PC_FREE2, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %402

378:                                              ; preds = %370
  %379 = load i32, i32* @_NPCPV, align 4
  %380 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i32 %379)
  %381 = call i32 @PV_STAT(i32 %380)
  %382 = call i32 @atomic_subtract_int(i32* @pc_chunk_count, i32 1)
  %383 = call i32 @PV_STAT(i32 %382)
  %384 = call i32 @atomic_add_int(i32* @pc_chunk_frees, i32 1)
  %385 = call i32 @PV_STAT(i32 %384)
  %386 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %387 = ptrtoint %struct.pv_chunk* %386 to i32
  %388 = call i32 @DMAP_TO_PHYS(i32 %387)
  %389 = call %struct.TYPE_32__* @PHYS_TO_VM_PAGE(i32 %388)
  store %struct.TYPE_32__* %389, %struct.TYPE_32__** %26, align 8
  %390 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %391 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @dump_drop_page(i32 %392)
  %394 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %395 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %394, i32 0, i32 1
  %396 = call i32 @mtx_lock(i32* %395)
  %397 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %398 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %397, i32 0, i32 2
  %399 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %400 = load i32, i32* @pc_lru, align 4
  %401 = call i32 @TAILQ_REMOVE(i32* %398, %struct.pv_chunk* %399, i32 %400)
  br label %461

402:                                              ; preds = %370, %362, %337
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %403, i32 0, i32 0
  %405 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %406 = load i32, i32* @pc_list, align 4
  %407 = call i32 @TAILQ_INSERT_HEAD(i32* %404, %struct.pv_chunk* %405, i32 %406)
  %408 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %409 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %408, i32 0, i32 1
  %410 = call i32 @mtx_lock(i32* %409)
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %412 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %413 = icmp eq %struct.TYPE_33__* %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %402
  br label %461

415:                                              ; preds = %402
  br label %416

416:                                              ; preds = %415, %333, %147, %84
  %417 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %418 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %417, i32 0, i32 2
  %419 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %420 = load i32, i32* @pc_lru, align 4
  %421 = call i32 @TAILQ_REMOVE(i32* %418, %struct.pv_chunk* %419, i32 %420)
  %422 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %423 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %422, i32 0, i32 2
  %424 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %425 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %426 = load i32, i32* @pc_lru, align 4
  %427 = call i32 @TAILQ_INSERT_AFTER(i32* %423, %struct.pv_chunk* %424, %struct.pv_chunk* %425, i32 %426)
  %428 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %429 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %430, 1
  br i1 %431, label %432, label %460

432:                                              ; preds = %416
  %433 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %434 = icmp ne %struct.TYPE_33__* %433, null
  br i1 %434, label %435, label %460

435:                                              ; preds = %432
  br label %436

436:                                              ; preds = %442, %435
  %437 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %438 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %437, i32 0, i32 2
  %439 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %438)
  store %struct.pv_chunk* %439, %struct.pv_chunk** %8, align 8
  %440 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %441 = icmp ne %struct.pv_chunk* %439, %440
  br i1 %441, label %442, label %459

442:                                              ; preds = %436
  %443 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %444 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %443, i32 0, i32 1
  %445 = load %struct.TYPE_33__*, %struct.TYPE_33__** %444, align 8
  %446 = icmp ne %struct.TYPE_33__* %445, null
  %447 = zext i1 %446 to i32
  %448 = call i32 @MPASS(i32 %447)
  %449 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %450 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %449, i32 0, i32 2
  %451 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %452 = load i32, i32* @pc_lru, align 4
  %453 = call i32 @TAILQ_REMOVE(i32* %450, %struct.pv_chunk* %451, i32 %452)
  %454 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %455 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %454, i32 0, i32 2
  %456 = load %struct.pv_chunk*, %struct.pv_chunk** %8, align 8
  %457 = load i32, i32* @pc_lru, align 4
  %458 = call i32 @TAILQ_INSERT_TAIL(i32* %455, %struct.pv_chunk* %456, i32 %457)
  br label %436

459:                                              ; preds = %436
  br label %460

460:                                              ; preds = %459, %432, %416
  br label %67

461:                                              ; preds = %414, %378, %76
  %462 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %463 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %462, i32 0, i32 2
  %464 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %465 = load i32, i32* @pc_lru, align 4
  %466 = call i32 @TAILQ_REMOVE(i32* %463, %struct.pv_chunk* %464, i32 %465)
  %467 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %468 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %467, i32 0, i32 2
  %469 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %470 = load i32, i32* @pc_lru, align 4
  %471 = call i32 @TAILQ_REMOVE(i32* %468, %struct.pv_chunk* %469, i32 %470)
  %472 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %473 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %474, -1
  store i32 %475, i32* %473, align 4
  %476 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %7, align 8
  %477 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %476, i32 0, i32 1
  %478 = call i32 @mtx_unlock(i32* %477)
  %479 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %480 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %481 = load i32, i32* %32, align 4
  %482 = call i32 @reclaim_pv_chunk_leave_pmap(%struct.TYPE_33__* %479, %struct.TYPE_33__* %480, i32 %481)
  %483 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %484 = icmp eq %struct.TYPE_32__* %483, null
  br i1 %484, label %485, label %494

485:                                              ; preds = %461
  %486 = call i64 @SLIST_EMPTY(%struct.spglist* %27)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %485
  %489 = call %struct.TYPE_32__* @SLIST_FIRST(%struct.spglist* %27)
  store %struct.TYPE_32__* %489, %struct.TYPE_32__** %26, align 8
  %490 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @plinks, i32 0, i32 0, i32 0), align 4
  %491 = call i32 @SLIST_REMOVE_HEAD(%struct.spglist* %27, i32 %490)
  %492 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %493 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %492, i32 0, i32 1
  store i32 1, i32* %493, align 4
  br label %494

494:                                              ; preds = %488, %485, %461
  %495 = call i32 @vm_page_free_pages_toq(%struct.spglist* %27, i32 1)
  %496 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  ret %struct.TYPE_32__* %496
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @bzero(%struct.pv_chunk_header*, i32) #1

declare dso_local i32 @pmap_not_in_di(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local %struct.pv_chunk* @TAILQ_NEXT(%struct.pv_chunk*, i32) #1

declare dso_local i64 @SLIST_EMPTY(%struct.spglist*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @reclaim_pv_chunk_leave_pmap(%struct.TYPE_33__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock**) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_33__*) #1

declare dso_local i32 @pmap_delayed_invl_start(...) #1

declare dso_local i64 @PMAP_TRYLOCK(%struct.TYPE_33__*) #1

declare dso_local i32 @pmap_global_bit(%struct.TYPE_33__*) #1

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_33__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_33__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_33__*) #1

declare dso_local i32 @bsfq(i64) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_33__*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_32__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_32__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock**, %struct.TYPE_32__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_32__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @pmap_delayed_invl_page(%struct.TYPE_32__*) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_33__*, i32, i32, %struct.spglist*) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_33__*, i32) #1

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

declare dso_local %struct.TYPE_32__* @SLIST_FIRST(%struct.spglist*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.spglist*, i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
