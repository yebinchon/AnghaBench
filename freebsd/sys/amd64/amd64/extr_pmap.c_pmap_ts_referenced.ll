; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_ts_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_ts_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_ts_referenced: page %p is not managed\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@pv_dummy = common dso_local global %struct.md_page zeroinitializer, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PDRSHIFT = common dso_local global i64 0, align 8
@NPTEPG = common dso_local global i32 0, align 4
@PG_W = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PG_PS_FRAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"inconsistent pv lock %p %p for page %p\00", align 1
@pv_next = common dso_local global i32 0, align 4
@PMAP_TS_REFERENCED_MAX = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"pmap_ts_referenced: found a 2mpage in page %p's pv list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_ts_referenced(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.md_page*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rwlock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.spglist, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VPO_UNMANAGED, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = bitcast %struct.TYPE_14__* %29 to i8*
  %31 = call i32 @KASSERT(i32 %28, i8* %30)
  %32 = call i32 @SLIST_INIT(%struct.spglist* %20)
  store i32 0, i32* %16, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_14__* %33)
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i64 %35)
  store %struct.rwlock* %36, %struct.rwlock** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PG_FICTITIOUS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %47

44:                                               ; preds = %1
  %45 = load i64, i64* %15, align 8
  %46 = call %struct.md_page* @pa_to_pvh(i64 %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi %struct.md_page* [ @pv_dummy, %43 ], [ %46, %44 ]
  store %struct.md_page* %48, %struct.md_page** %3, align 8
  %49 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %50 = call i32 @rw_wlock(%struct.rwlock* %49)
  br label %51

51:                                               ; preds = %306, %85, %47
  store i32 0, i32* %18, align 4
  %52 = load %struct.md_page*, %struct.md_page** %3, align 8
  %53 = getelementptr inbounds %struct.md_page, %struct.md_page* %52, i32 0, i32 1
  %54 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %53)
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %5, align 8
  %55 = icmp eq %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %260

57:                                               ; preds = %51
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %4, align 8
  br label %59

59:                                               ; preds = %253, %57
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = icmp eq %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %5, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = call i64 @PV_PMAP(%struct.TYPE_15__* %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @PMAP_TRYLOCK(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %64
  %71 = load %struct.md_page*, %struct.md_page** %3, align 8
  %72 = getelementptr inbounds %struct.md_page, %struct.md_page* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %19, align 4
  %74 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %75 = call i32 @rw_wunlock(%struct.rwlock* %74)
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @PMAP_LOCK(i64 %76)
  %78 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %79 = call i32 @rw_wlock(%struct.rwlock* %78)
  %80 = load i32, i32* %19, align 4
  %81 = load %struct.md_page*, %struct.md_page** %3, align 8
  %82 = getelementptr inbounds %struct.md_page, %struct.md_page* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @PMAP_UNLOCK(i64 %86)
  br label %51

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @pmap_accessed_bit(i64 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @pmap_modified_bit(i64 %92)
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @pmap_rw_bit(i64 %94)
  store i64 %95, i64* %13, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64* @pmap_pde(i64 %99, i64 %102)
  store i64* %103, i64** %9, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = or i64 %107, %108
  %110 = and i64 %106, %109
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %13, align 8
  %113 = or i64 %111, %112
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %89
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = call i32 @vm_page_dirty(%struct.TYPE_14__* %116)
  br label %118

118:                                              ; preds = %115, %89
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %220

123:                                              ; preds = %118
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* @PAGE_SHIFT, align 8
  %126 = lshr i64 %124, %125
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PDRSHIFT, align 8
  %131 = lshr i64 %129, %130
  %132 = xor i64 %126, %131
  %133 = load i64, i64* %6, align 8
  %134 = xor i64 %132, %133
  %135 = load i32, i32* @NPTEPG, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = and i64 %134, %137
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %216

140:                                              ; preds = %123
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @PG_W, align 8
  %143 = and i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %216

145:                                              ; preds = %140
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i64 @safe_to_clear_referenced(i64 %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i64*, i64** %9, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @atomic_clear_long(i64* %151, i64 %152)
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @pmap_invalidate_page(i64 %154, i64 %157)
  %159 = load i64, i64* @FALSE, align 8
  store i64 %159, i64* %21, align 8
  br label %193

160:                                              ; preds = %145
  %161 = load i64, i64* %6, align 8
  %162 = load i64*, i64** %9, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @pmap_demote_pde_locked(i64 %161, i64* %162, i64 %165, %struct.rwlock** %7)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %160
  %169 = load i64, i64* @TRUE, align 8
  store i64 %169, i64* %21, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_14__* %170)
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* @PG_PS_FRAME, align 8
  %174 = and i64 %172, %173
  %175 = sub i64 %171, %174
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %14, align 8
  %178 = load i64*, i64** %9, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i64* @pmap_pde_to_pte(i64* %178, i64 %179)
  store i64* %180, i64** %10, align 8
  %181 = load i64, i64* %6, align 8
  %182 = load i64*, i64** %10, align 8
  %183 = load i64, i64* %14, align 8
  %184 = load i64*, i64** %9, align 8
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @pmap_remove_pte(i64 %181, i64* %182, i64 %183, i64 %185, %struct.spglist* null, %struct.rwlock** %7)
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* %14, align 8
  %189 = call i32 @pmap_invalidate_page(i64 %187, i64 %188)
  br label %192

190:                                              ; preds = %160
  %191 = load i64, i64* @TRUE, align 8
  store i64 %191, i64* %21, align 8
  br label %192

192:                                              ; preds = %190, %168
  br label %193

193:                                              ; preds = %192, %150
  %194 = load i64, i64* %21, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = icmp eq %struct.TYPE_15__* %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %201

201:                                              ; preds = %200, %196
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %202

202:                                              ; preds = %201, %193
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  %205 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = call %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_14__* %206)
  %208 = icmp eq %struct.rwlock* %205, %207
  %209 = zext i1 %208 to i32
  %210 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %212 = call %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_14__* %211)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %214 = bitcast %struct.TYPE_14__* %213 to i8*
  %215 = call i32 @KASSERT(i32 %209, i8* %214)
  br label %219

216:                                              ; preds = %140, %123
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %18, align 4
  br label %219

219:                                              ; preds = %216, %202
  br label %220

220:                                              ; preds = %219, %118
  %221 = load i64, i64* %6, align 8
  %222 = call i32 @PMAP_UNLOCK(i64 %221)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %224 = icmp ne %struct.TYPE_15__* %223, null
  br i1 %224, label %225, label %245

225:                                              ; preds = %220
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = load i32, i32* @pv_next, align 4
  %228 = call i32* @TAILQ_NEXT(%struct.TYPE_15__* %226, i32 %227)
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load %struct.md_page*, %struct.md_page** %3, align 8
  %232 = getelementptr inbounds %struct.md_page, %struct.md_page* %231, i32 0, i32 1
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %234 = load i32, i32* @pv_next, align 4
  %235 = call i32 @TAILQ_REMOVE(i32* %232, %struct.TYPE_15__* %233, i32 %234)
  %236 = load %struct.md_page*, %struct.md_page** %3, align 8
  %237 = getelementptr inbounds %struct.md_page, %struct.md_page* %236, i32 0, i32 1
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %239 = load i32, i32* @pv_next, align 4
  %240 = call i32 @TAILQ_INSERT_TAIL(i32* %237, %struct.TYPE_15__* %238, i32 %239)
  %241 = load %struct.md_page*, %struct.md_page** %3, align 8
  %242 = getelementptr inbounds %struct.md_page, %struct.md_page* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %230, %225, %220
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* %18, align 4
  %248 = add nsw i32 %246, %247
  %249 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %250 = icmp sge i32 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %460

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252
  %254 = load %struct.md_page*, %struct.md_page** %3, align 8
  %255 = getelementptr inbounds %struct.md_page, %struct.md_page* %254, i32 0, i32 1
  %256 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %255)
  store %struct.TYPE_15__* %256, %struct.TYPE_15__** %4, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %258 = icmp ne %struct.TYPE_15__* %256, %257
  br i1 %258, label %59, label %259

259:                                              ; preds = %253
  br label %260

260:                                              ; preds = %259, %56
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %263)
  store %struct.TYPE_15__* %264, %struct.TYPE_15__** %5, align 8
  %265 = icmp eq %struct.TYPE_15__* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  br label %460

267:                                              ; preds = %260
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %268, %struct.TYPE_15__** %4, align 8
  br label %269

269:                                              ; preds = %457, %267
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %271 = icmp eq %struct.TYPE_15__* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %273, %struct.TYPE_15__** %5, align 8
  br label %274

274:                                              ; preds = %272, %269
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %276 = call i64 @PV_PMAP(%struct.TYPE_15__* %275)
  store i64 %276, i64* %6, align 8
  %277 = load i64, i64* %6, align 8
  %278 = call i32 @PMAP_TRYLOCK(i64 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %310, label %280

280:                                              ; preds = %274
  %281 = load %struct.md_page*, %struct.md_page** %3, align 8
  %282 = getelementptr inbounds %struct.md_page, %struct.md_page* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %19, align 4
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %17, align 4
  %288 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %289 = call i32 @rw_wunlock(%struct.rwlock* %288)
  %290 = load i64, i64* %6, align 8
  %291 = call i32 @PMAP_LOCK(i64 %290)
  %292 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %293 = call i32 @rw_wlock(%struct.rwlock* %292)
  %294 = load i32, i32* %19, align 4
  %295 = load %struct.md_page*, %struct.md_page** %3, align 8
  %296 = getelementptr inbounds %struct.md_page, %struct.md_page* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %294, %297
  br i1 %298, label %306, label %299

299:                                              ; preds = %280
  %300 = load i32, i32* %17, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %300, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %299, %280
  %307 = load i64, i64* %6, align 8
  %308 = call i32 @PMAP_UNLOCK(i64 %307)
  br label %51

309:                                              ; preds = %299
  br label %310

310:                                              ; preds = %309, %274
  %311 = load i64, i64* %6, align 8
  %312 = call i64 @pmap_accessed_bit(i64 %311)
  store i64 %312, i64* %11, align 8
  %313 = load i64, i64* %6, align 8
  %314 = call i64 @pmap_modified_bit(i64 %313)
  store i64 %314, i64* %12, align 8
  %315 = load i64, i64* %6, align 8
  %316 = call i64 @pmap_rw_bit(i64 %315)
  store i64 %316, i64* %13, align 8
  %317 = load i64, i64* %6, align 8
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = call i64* @pmap_pde(i64 %317, i64 %320)
  store i64* %321, i64** %9, align 8
  %322 = load i64*, i64** %9, align 8
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @PG_PS, align 8
  %325 = and i64 %323, %324
  %326 = icmp eq i64 %325, 0
  %327 = zext i1 %326 to i32
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %329 = bitcast %struct.TYPE_14__* %328 to i8*
  %330 = call i32 @KASSERT(i32 %327, i8* %329)
  %331 = load i64*, i64** %9, align 8
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = call i64* @pmap_pde_to_pte(i64* %331, i64 %334)
  store i64* %335, i64** %10, align 8
  %336 = load i64*, i64** %10, align 8
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* %12, align 8
  %339 = load i64, i64* %13, align 8
  %340 = or i64 %338, %339
  %341 = and i64 %337, %340
  %342 = load i64, i64* %12, align 8
  %343 = load i64, i64* %13, align 8
  %344 = or i64 %342, %343
  %345 = icmp eq i64 %341, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %310
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %348 = call i32 @vm_page_dirty(%struct.TYPE_14__* %347)
  br label %349

349:                                              ; preds = %346, %310
  %350 = load i64*, i64** %10, align 8
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %11, align 8
  %353 = and i64 %351, %352
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %415

355:                                              ; preds = %349
  %356 = load i64, i64* %6, align 8
  %357 = load i64*, i64** %10, align 8
  %358 = load i64, i64* %357, align 8
  %359 = call i64 @safe_to_clear_referenced(i64 %356, i64 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %372

361:                                              ; preds = %355
  %362 = load i64*, i64** %10, align 8
  %363 = load i64, i64* %11, align 8
  %364 = call i32 @atomic_clear_long(i64* %362, i64 %363)
  %365 = load i64, i64* %6, align 8
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @pmap_invalidate_page(i64 %365, i64 %368)
  %370 = load i32, i32* %16, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %16, align 4
  br label %414

372:                                              ; preds = %355
  %373 = load i64*, i64** %10, align 8
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @PG_W, align 8
  %376 = and i64 %374, %375
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %410

378:                                              ; preds = %372
  %379 = load i64, i64* %6, align 8
  %380 = load i64*, i64** %10, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64*, i64** %9, align 8
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @pmap_remove_pte(i64 %379, i64* %380, i64 %383, i64 %385, %struct.spglist* %20, %struct.rwlock** %7)
  %387 = load i64, i64* %6, align 8
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = call i32 @pmap_invalidate_page(i64 %387, i64 %390)
  %392 = load i32, i32* %16, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %16, align 4
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %396 = icmp eq %struct.TYPE_15__* %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %378
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %398

398:                                              ; preds = %397, %378
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  %399 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %401 = call %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_14__* %400)
  %402 = icmp eq %struct.rwlock* %399, %401
  %403 = zext i1 %402 to i32
  %404 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %406 = call %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_14__* %405)
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %408 = bitcast %struct.TYPE_14__* %407 to i8*
  %409 = call i32 @KASSERT(i32 %403, i8* %408)
  br label %413

410:                                              ; preds = %372
  %411 = load i32, i32* %18, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %18, align 4
  br label %413

413:                                              ; preds = %410, %398
  br label %414

414:                                              ; preds = %413, %361
  br label %415

415:                                              ; preds = %414, %349
  %416 = load i64, i64* %6, align 8
  %417 = call i32 @PMAP_UNLOCK(i64 %416)
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %419 = icmp ne %struct.TYPE_15__* %418, null
  br i1 %419, label %420, label %443

420:                                              ; preds = %415
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %422 = load i32, i32* @pv_next, align 4
  %423 = call i32* @TAILQ_NEXT(%struct.TYPE_15__* %421, i32 %422)
  %424 = icmp ne i32* %423, null
  br i1 %424, label %425, label %443

425:                                              ; preds = %420
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %430 = load i32, i32* @pv_next, align 4
  %431 = call i32 @TAILQ_REMOVE(i32* %428, %struct.TYPE_15__* %429, i32 %430)
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %436 = load i32, i32* @pv_next, align 4
  %437 = call i32 @TAILQ_INSERT_TAIL(i32* %434, %struct.TYPE_15__* %435, i32 %436)
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %440, align 4
  br label %443

443:                                              ; preds = %425, %420, %415
  br label %444

444:                                              ; preds = %443
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 1
  %448 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %447)
  store %struct.TYPE_15__* %448, %struct.TYPE_15__** %4, align 8
  %449 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %450 = icmp ne %struct.TYPE_15__* %448, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %444
  %452 = load i32, i32* %16, align 4
  %453 = load i32, i32* %18, align 4
  %454 = add nsw i32 %452, %453
  %455 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %456 = icmp slt i32 %454, %455
  br label %457

457:                                              ; preds = %451, %444
  %458 = phi i1 [ false, %444 ], [ %456, %451 ]
  br i1 %458, label %269, label %459

459:                                              ; preds = %457
  br label %460

460:                                              ; preds = %459, %266, %251
  %461 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %462 = call i32 @rw_wunlock(%struct.rwlock* %461)
  %463 = call i32 @vm_page_free_pages_toq(%struct.spglist* %20, i32 1)
  %464 = load i32, i32* %16, align 4
  %465 = load i32, i32* %18, align 4
  %466 = add nsw i32 %464, %465
  ret i32 %466
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_14__*) #1

declare dso_local %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i64) #1

declare dso_local %struct.md_page* @pa_to_pvh(i64) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local %struct.TYPE_15__* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @PV_PMAP(%struct.TYPE_15__*) #1

declare dso_local i32 @PMAP_TRYLOCK(i64) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

declare dso_local i64 @pmap_accessed_bit(i64) #1

declare dso_local i64 @pmap_modified_bit(i64) #1

declare dso_local i64 @pmap_rw_bit(i64) #1

declare dso_local i64* @pmap_pde(i64, i64) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_14__*) #1

declare dso_local i64 @safe_to_clear_referenced(i64, i64) #1

declare dso_local i32 @atomic_clear_long(i64*, i64) #1

declare dso_local i32 @pmap_invalidate_page(i64, i64) #1

declare dso_local i64 @pmap_demote_pde_locked(i64, i64*, i64, %struct.rwlock**) #1

declare dso_local i64* @pmap_pde_to_pte(i64*, i64) #1

declare dso_local i32 @pmap_remove_pte(i64, i64*, i64, i64, %struct.spglist*, %struct.rwlock**) #1

declare dso_local %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_14__*) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
