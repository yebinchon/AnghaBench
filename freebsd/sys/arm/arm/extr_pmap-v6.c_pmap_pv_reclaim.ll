; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_pv_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_pv_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.pch = type { i32 }
%struct.pv_chunk = type { i64*, i32, %struct.pv_chunk*, %struct.TYPE_28__* }
%struct.md_page = type { i32 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@pv_chunks = common dso_local global i32 0, align 4
@pv_vafree = common dso_local global i64 0, align 8
@pc_lru = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@PTE2_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pmap_pv_reclaim: pmap %p va %#x zero pte\00", align 1
@PTE2_A = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@pv_entry_frees = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_frees = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_28__*)* @pmap_pv_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @pmap_pv_reclaim(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.pch, align 4
  %4 = alloca %struct.pv_chunk*, align 8
  %5 = alloca %struct.md_page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pv_chunk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_28__* %19, i32 %20)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  %22 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %23 = call i32 @TAILQ_INIT(%struct.pch* %3)
  br label %24

24:                                               ; preds = %330, %242, %75, %1
  %25 = call %struct.pv_chunk* @TAILQ_FIRST(i32* @pv_chunks)
  store %struct.pv_chunk* %25, %struct.pv_chunk** %4, align 8
  %26 = icmp ne %struct.pv_chunk* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* @pv_vafree, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i64 @SLIST_EMPTY(%struct.spglist* %14)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ true, %27 ], [ %32, %30 ]
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi i1 [ false, %24 ], [ %34, %33 ]
  br i1 %36, label %37, label %331

37:                                               ; preds = %35
  %38 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %39 = load i32, i32* @pc_lru, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %38, i32 %39)
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %43 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %42, i32 0, i32 3
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  %45 = icmp ne %struct.TYPE_28__* %41, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %37
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %48 = icmp ne %struct.TYPE_28__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %52 = icmp ne %struct.TYPE_28__* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %55 = call i32 @PMAP_UNLOCK(%struct.TYPE_28__* %54)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %59 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %58, i32 0, i32 3
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  store %struct.TYPE_28__* %60, %struct.TYPE_28__** %7, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %63 = icmp ugt %struct.TYPE_28__* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %66 = call i32 @PMAP_LOCK(%struct.TYPE_28__* %65)
  br label %80

67:                                               ; preds = %57
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %70 = icmp ne %struct.TYPE_28__* %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %73 = call i32 @PMAP_TRYLOCK(%struct.TYPE_28__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %7, align 8
  %76 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %77 = load i32, i32* @pc_lru, align 4
  %78 = call i32 @TAILQ_INSERT_TAIL(%struct.pch* %3, %struct.pv_chunk* %76, i32 %77)
  br label %24

79:                                               ; preds = %71, %67
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %37
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %236, %81
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @_NPCM, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %239

86:                                               ; preds = %82
  %87 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %88 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = xor i64 %93, -1
  %95 = load i64*, i64** @pc_freemask, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %94, %99
  store i64 %100, i64* %15, align 8
  br label %101

101:                                              ; preds = %228, %86
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %235

104:                                              ; preds = %101
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @ffs(i64 %105)
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %109 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %108, i32 0, i32 2
  %110 = load %struct.pv_chunk*, %struct.pv_chunk** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = mul nsw i32 %111, 32
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %110, i64 %115
  store %struct.pv_chunk* %116, %struct.pv_chunk** %10, align 8
  %117 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %118 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %11, align 4
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32* @pmap_pte1(%struct.TYPE_28__* %120, i32 %121)
  store i32* %122, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @pte1_load(i32* %123)
  %125 = call i64 @pte1_is_section(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %104
  br label %228

128:                                              ; preds = %104
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32* @pmap_pte2(%struct.TYPE_28__* %129, i32 %130)
  store i32* %131, i32** %8, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @pte2_load(i32* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @PTE2_W, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @pte2_load_clear(i32* %139)
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %138, %128
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @pmap_pte2_release(i32* %142)
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @PTE2_W, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %228

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @KASSERT(i32 %152, i8* %156)
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @pmap_tlb_flush(%struct.TYPE_28__* %158, i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @pte2_pa(i32 %161)
  %163 = call %struct.TYPE_27__* @PHYS_TO_VM_PAGE(i32 %162)
  store %struct.TYPE_27__* %163, %struct.TYPE_27__** %12, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @pte2_is_dirty(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %149
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %169 = call i32 @vm_page_dirty(%struct.TYPE_27__* %168)
  br label %170

170:                                              ; preds = %167, %149
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @PTE2_A, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %177 = load i32, i32* @PGA_REFERENCED, align 4
  %178 = call i32 @vm_page_aflag_set(%struct.TYPE_27__* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %170
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %184 = load i32, i32* @pv_next, align 4
  %185 = call i32 @TAILQ_REMOVE(i32* %182, %struct.pv_chunk* %183, i32 %184)
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = call i64 @TAILQ_EMPTY(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %179
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PG_FICTITIOUS, align 4
  %196 = and i32 %194, %195
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %191
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %200 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_27__* %199)
  %201 = call %struct.md_page* @pa_to_pvh(i32 %200)
  store %struct.md_page* %201, %struct.md_page** %5, align 8
  %202 = load %struct.md_page*, %struct.md_page** %5, align 8
  %203 = getelementptr inbounds %struct.md_page, %struct.md_page* %202, i32 0, i32 0
  %204 = call i64 @TAILQ_EMPTY(i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %198
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %208 = load i32, i32* @PGA_WRITEABLE, align 4
  %209 = call i32 @vm_page_aflag_clear(%struct.TYPE_27__* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %198
  br label %211

211:                                              ; preds = %210, %191, %179
  %212 = load i32, i32* %16, align 4
  %213 = zext i32 %212 to i64
  %214 = shl i64 1, %213
  %215 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %216 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = or i64 %221, %214
  store i64 %222, i64* %220, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @pmap_unuse_pt2(%struct.TYPE_28__* %223, i32 %224, %struct.spglist* %14)
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  br label %228

228:                                              ; preds = %211, %148, %127
  %229 = load i32, i32* %16, align 4
  %230 = zext i32 %229 to i64
  %231 = shl i64 1, %230
  %232 = xor i64 %231, -1
  %233 = load i64, i64* %15, align 8
  %234 = and i64 %233, %232
  store i64 %234, i64* %15, align 8
  br label %101

235:                                              ; preds = %101
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %17, align 4
  br label %82

239:                                              ; preds = %82
  %240 = load i32, i32* %18, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %244 = load i32, i32* @pc_lru, align 4
  %245 = call i32 @TAILQ_INSERT_TAIL(%struct.pch* %3, %struct.pv_chunk* %243, i32 %244)
  br label %24

246:                                              ; preds = %239
  %247 = load i32, i32* %18, align 4
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %251, %247
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* @pv_entry_frees, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* @pv_entry_frees, align 4
  %256 = call i32 @PV_STAT(i32 %255)
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* @pv_entry_spare, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* @pv_entry_spare, align 4
  %260 = call i32 @PV_STAT(i32 %259)
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* @pv_entry_count, align 4
  %263 = sub nsw i32 %262, %261
  store i32 %263, i32* @pv_entry_count, align 4
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 0
  %266 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %267 = load i32, i32* @pc_list, align 4
  %268 = call i32 @TAILQ_REMOVE(i32* %265, %struct.pv_chunk* %266, i32 %267)
  store i32 0, i32* %17, align 4
  br label %269

269:                                              ; preds = %302, %246
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* @_NPCM, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %305

273:                                              ; preds = %269
  %274 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %275 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %274, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load i64*, i64** @pc_freemask, align 8
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %280, %285
  br i1 %286, label %287, label %301

287:                                              ; preds = %273
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 0
  %290 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %291 = load i32, i32* @pc_list, align 4
  %292 = call i32 @TAILQ_INSERT_HEAD(i32* %289, %struct.pv_chunk* %290, i32 %291)
  %293 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %294 = load i32, i32* @pc_lru, align 4
  %295 = call i32 @TAILQ_INSERT_TAIL(%struct.pch* %3, %struct.pv_chunk* %293, i32 %294)
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %298 = icmp eq %struct.TYPE_28__* %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %287
  br label %332

300:                                              ; preds = %287
  br label %305

301:                                              ; preds = %273
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %17, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %17, align 4
  br label %269

305:                                              ; preds = %300, %269
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* @_NPCM, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %330

309:                                              ; preds = %305
  %310 = load i32, i32* @_NPCPV, align 4
  %311 = load i32, i32* @pv_entry_spare, align 4
  %312 = sub nsw i32 %311, %310
  store i32 %312, i32* @pv_entry_spare, align 4
  %313 = call i32 @PV_STAT(i32 %312)
  %314 = load i32, i32* @pc_chunk_count, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* @pc_chunk_count, align 4
  %316 = call i32 @PV_STAT(i32 %314)
  %317 = load i32, i32* @pc_chunk_frees, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* @pc_chunk_frees, align 4
  %319 = call i32 @PV_STAT(i32 %317)
  %320 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %321 = ptrtoint %struct.pv_chunk* %320 to i32
  %322 = call i32 @pmap_kextract(i32 %321)
  %323 = call %struct.TYPE_27__* @PHYS_TO_VM_PAGE(i32 %322)
  store %struct.TYPE_27__* %323, %struct.TYPE_27__** %13, align 8
  %324 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %325 = ptrtoint %struct.pv_chunk* %324 to i32
  %326 = call i32 @pmap_qremove(i32 %325, i32 1)
  %327 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %328 = ptrtoint %struct.pv_chunk* %327 to i32
  %329 = call i32 @pmap_pte2list_free(i64* @pv_vafree, i32 %328)
  br label %331

330:                                              ; preds = %305
  br label %24

331:                                              ; preds = %309, %35
  br label %332

332:                                              ; preds = %331, %299
  %333 = load i32, i32* @pc_lru, align 4
  %334 = call i32 @TAILQ_CONCAT(i32* @pv_chunks, %struct.pch* %3, i32 %333)
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %336 = icmp ne %struct.TYPE_28__* %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %332
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %340 = icmp ne %struct.TYPE_28__* %338, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %343 = call i32 @PMAP_UNLOCK(%struct.TYPE_28__* %342)
  br label %344

344:                                              ; preds = %341, %337
  br label %345

345:                                              ; preds = %344, %332
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %347 = icmp eq %struct.TYPE_27__* %346, null
  br i1 %347, label %348, label %361

348:                                              ; preds = %345
  %349 = load i64, i64* @pv_vafree, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = call i64 @SLIST_EMPTY(%struct.spglist* %14)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = call %struct.TYPE_27__* @SLIST_FIRST(%struct.spglist* %14)
  store %struct.TYPE_27__* %355, %struct.TYPE_27__** %13, align 8
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @plinks, i32 0, i32 0, i32 0), align 4
  %357 = call i32 @SLIST_REMOVE_HEAD(%struct.spglist* %14, i32 %356)
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %358, i32 0, i32 1
  store i32 1, i32* %359, align 4
  %360 = call i32 @vm_wire_add(i32 1)
  br label %361

361:                                              ; preds = %354, %351, %348, %345
  %362 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 0)
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  ret %struct.TYPE_27__* %363
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @TAILQ_INIT(%struct.pch*) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @SLIST_EMPTY(%struct.spglist*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @PMAP_TRYLOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.pch*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32* @pmap_pte1(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @pte1_is_section(i32) #1

declare dso_local i32 @pte1_load(i32*) #1

declare dso_local i32* @pmap_pte2(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @pte2_load(i32*) #1

declare dso_local i32 @pte2_load_clear(i32*) #1

declare dso_local i32 @pmap_pte2_release(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_tlb_flush(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pte2_pa(i32) #1

declare dso_local i64 @pte2_is_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @pmap_unuse_pt2(%struct.TYPE_28__*, i32, %struct.spglist*) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @pmap_pte2list_free(i64*, i32) #1

declare dso_local i32 @TAILQ_CONCAT(i32*, %struct.pch*, i32) #1

declare dso_local %struct.TYPE_27__* @SLIST_FIRST(%struct.spglist*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.spglist*, i32) #1

declare dso_local i32 @vm_wire_add(i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
