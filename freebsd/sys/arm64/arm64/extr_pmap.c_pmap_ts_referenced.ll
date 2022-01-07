; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_ts_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_ts_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_ts_referenced: page %p is not managed\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@pv_dummy = common dso_local global %struct.md_page zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pmap_ts_referenced: no l1 table found\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"pmap_ts_referenced: invalid pde level %d\00", align 1
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"pmap_ts_referenced: found an invalid l1 table\00", align 1
@ATTR_AF = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@L2_SHIFT = common dso_local global i64 0, align 8
@Ln_ENTRIES = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PMAP_TS_REFERENCED_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"pmap_ts_referenced: no l2 table found\00", align 1
@L2_TABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"pmap_ts_referenced: found an invalid l2 table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_ts_referenced(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.md_page*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rwlock*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.spglist, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VPO_UNMANAGED, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = bitcast %struct.TYPE_13__* %27 to i8*
  %29 = call i32 @KASSERT(i32 %26, i8* %28)
  %30 = call i32 @SLIST_INIT(%struct.spglist* %19)
  store i32 0, i32* %14, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i64 %33)
  store %struct.rwlock* %34, %struct.rwlock** %7, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PG_FICTITIOUS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %45

42:                                               ; preds = %1
  %43 = load i64, i64* %13, align 8
  %44 = call %struct.md_page* @pa_to_pvh(i64 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi %struct.md_page* [ @pv_dummy, %41 ], [ %44, %42 ]
  store %struct.md_page* %46, %struct.md_page** %3, align 8
  %47 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %48 = call i32 @rw_wlock(%struct.rwlock* %47)
  br label %49

49:                                               ; preds = %257, %83, %45
  store i32 0, i32* %17, align 4
  %50 = load %struct.md_page*, %struct.md_page** %3, align 8
  %51 = getelementptr inbounds %struct.md_page, %struct.md_page* %50, i32 0, i32 1
  %52 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %5, align 8
  %53 = icmp eq %struct.TYPE_14__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %211

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %4, align 8
  br label %57

57:                                               ; preds = %204, %55
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = icmp eq %struct.TYPE_14__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %5, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i64 @PV_PMAP(%struct.TYPE_14__* %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @PMAP_TRYLOCK(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %62
  %69 = load %struct.md_page*, %struct.md_page** %3, align 8
  %70 = getelementptr inbounds %struct.md_page, %struct.md_page* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %18, align 4
  %72 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %73 = call i32 @rw_wunlock(%struct.rwlock* %72)
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @PMAP_LOCK(i64 %74)
  %76 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %77 = call i32 @rw_wlock(%struct.rwlock* %76)
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.md_page*, %struct.md_page** %3, align 8
  %80 = getelementptr inbounds %struct.md_page, %struct.md_page* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @PMAP_UNLOCK(i64 %84)
  br label %49

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %62
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32* @pmap_pde(i64 %91, i64 %94, i32* %15)
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @KASSERT(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @KASSERT(i32 %102, i8* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @pmap_load(i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @L1_TABLE, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @KASSERT(i32 %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32* @pmap_l1_to_l2(i32* %116, i64 %119)
  store i32* %120, i32** %10, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @pmap_load(i32* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i64 @pmap_pte_dirty(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %87
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %128 = call i32 @vm_page_dirty(%struct.TYPE_13__* %127)
  br label %129

129:                                              ; preds = %126, %87
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @ATTR_AF, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %129
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @PAGE_SHIFT, align 8
  %137 = lshr i64 %135, %136
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @L2_SHIFT, align 8
  %142 = lshr i64 %140, %141
  %143 = xor i64 %137, %142
  %144 = load i64, i64* %6, align 8
  %145 = xor i64 %143, %144
  %146 = load i32, i32* @Ln_ENTRIES, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = and i64 %145, %148
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %134
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @ATTR_SW_WIRED, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* @ATTR_AF, align 4
  %159 = call i32 @pmap_clear_bits(i32* %157, i32 %158)
  %160 = load i64, i64* %6, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @pmap_invalidate_page(i64 %160, i64 %163)
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %170

167:                                              ; preds = %151, %134
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %167, %156
  br label %171

171:                                              ; preds = %170, %129
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @PMAP_UNLOCK(i64 %172)
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = icmp ne %struct.TYPE_14__* %174, null
  br i1 %175, label %176, label %196

176:                                              ; preds = %171
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = load i32, i32* @pv_next, align 4
  %179 = call i32* @TAILQ_NEXT(%struct.TYPE_14__* %177, i32 %178)
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %196

181:                                              ; preds = %176
  %182 = load %struct.md_page*, %struct.md_page** %3, align 8
  %183 = getelementptr inbounds %struct.md_page, %struct.md_page* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = load i32, i32* @pv_next, align 4
  %186 = call i32 @TAILQ_REMOVE(i32* %183, %struct.TYPE_14__* %184, i32 %185)
  %187 = load %struct.md_page*, %struct.md_page** %3, align 8
  %188 = getelementptr inbounds %struct.md_page, %struct.md_page* %187, i32 0, i32 1
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = load i32, i32* @pv_next, align 4
  %191 = call i32 @TAILQ_INSERT_TAIL(i32* %188, %struct.TYPE_14__* %189, i32 %190)
  %192 = load %struct.md_page*, %struct.md_page** %3, align 8
  %193 = getelementptr inbounds %struct.md_page, %struct.md_page* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %181, %176, %171
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %201 = icmp sge i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %370

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.md_page*, %struct.md_page** %3, align 8
  %206 = getelementptr inbounds %struct.md_page, %struct.md_page* %205, i32 0, i32 1
  %207 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %206)
  store %struct.TYPE_14__* %207, %struct.TYPE_14__** %4, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = icmp ne %struct.TYPE_14__* %207, %208
  br i1 %209, label %57, label %210

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %54
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %214)
  store %struct.TYPE_14__* %215, %struct.TYPE_14__** %5, align 8
  %216 = icmp eq %struct.TYPE_14__* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %370

218:                                              ; preds = %211
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %219, %struct.TYPE_14__** %4, align 8
  br label %220

220:                                              ; preds = %367, %218
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %222 = icmp eq %struct.TYPE_14__* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %224, %struct.TYPE_14__** %5, align 8
  br label %225

225:                                              ; preds = %223, %220
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %227 = call i64 @PV_PMAP(%struct.TYPE_14__* %226)
  store i64 %227, i64* %6, align 8
  %228 = load i64, i64* %6, align 8
  %229 = call i32 @PMAP_TRYLOCK(i64 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %261, label %231

231:                                              ; preds = %225
  %232 = load %struct.md_page*, %struct.md_page** %3, align 8
  %233 = getelementptr inbounds %struct.md_page, %struct.md_page* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %18, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %16, align 4
  %239 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %240 = call i32 @rw_wunlock(%struct.rwlock* %239)
  %241 = load i64, i64* %6, align 8
  %242 = call i32 @PMAP_LOCK(i64 %241)
  %243 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %244 = call i32 @rw_wlock(%struct.rwlock* %243)
  %245 = load i32, i32* %18, align 4
  %246 = load %struct.md_page*, %struct.md_page** %3, align 8
  %247 = getelementptr inbounds %struct.md_page, %struct.md_page* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %257, label %250

250:                                              ; preds = %231
  %251 = load i32, i32* %16, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %251, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %250, %231
  %258 = load i64, i64* %6, align 8
  %259 = call i32 @PMAP_UNLOCK(i64 %258)
  br label %49

260:                                              ; preds = %250
  br label %261

261:                                              ; preds = %260, %225
  %262 = load i64, i64* %6, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i32* @pmap_pde(i64 %262, i64 %265, i32* %15)
  store i32* %266, i32** %8, align 8
  %267 = load i32*, i32** %8, align 8
  %268 = icmp ne i32* %267, null
  %269 = zext i1 %268 to i32
  %270 = call i32 @KASSERT(i32 %269, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %271 = load i32, i32* %15, align 4
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = inttoptr i64 %275 to i8*
  %277 = call i32 @KASSERT(i32 %273, i8* %276)
  %278 = load i32*, i32** %8, align 8
  %279 = call i32 @pmap_load(i32* %278)
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* @L2_TABLE, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @KASSERT(i32 %285, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %287 = load i32*, i32** %8, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32* @pmap_l2_to_l3(i32* %287, i64 %290)
  store i32* %291, i32** %10, align 8
  %292 = load i32*, i32** %10, align 8
  %293 = call i32 @pmap_load(i32* %292)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = call i64 @pmap_pte_dirty(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %261
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %299 = call i32 @vm_page_dirty(%struct.TYPE_13__* %298)
  br label %300

300:                                              ; preds = %297, %261
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* @ATTR_AF, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %325

305:                                              ; preds = %300
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @ATTR_SW_WIRED, align 4
  %308 = and i32 %306, %307
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %305
  %311 = load i32*, i32** %10, align 8
  %312 = load i32, i32* @ATTR_AF, align 4
  %313 = call i32 @pmap_clear_bits(i32* %311, i32 %312)
  %314 = load i64, i64* %6, align 8
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @pmap_invalidate_page(i64 %314, i64 %317)
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %14, align 4
  br label %324

321:                                              ; preds = %305
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  br label %324

324:                                              ; preds = %321, %310
  br label %325

325:                                              ; preds = %324, %300
  %326 = load i64, i64* %6, align 8
  %327 = call i32 @PMAP_UNLOCK(i64 %326)
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %329 = icmp ne %struct.TYPE_14__* %328, null
  br i1 %329, label %330, label %353

330:                                              ; preds = %325
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %332 = load i32, i32* @pv_next, align 4
  %333 = call i32* @TAILQ_NEXT(%struct.TYPE_14__* %331, i32 %332)
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %353

335:                                              ; preds = %330
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %340 = load i32, i32* @pv_next, align 4
  %341 = call i32 @TAILQ_REMOVE(i32* %338, %struct.TYPE_14__* %339, i32 %340)
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %346 = load i32, i32* @pv_next, align 4
  %347 = call i32 @TAILQ_INSERT_TAIL(i32* %344, %struct.TYPE_14__* %345, i32 %346)
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %335, %330, %325
  br label %354

354:                                              ; preds = %353
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 1
  %358 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %357)
  store %struct.TYPE_14__* %358, %struct.TYPE_14__** %4, align 8
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %360 = icmp ne %struct.TYPE_14__* %358, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %354
  %362 = load i32, i32* %14, align 4
  %363 = load i32, i32* %17, align 4
  %364 = add nsw i32 %362, %363
  %365 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %366 = icmp slt i32 %364, %365
  br label %367

367:                                              ; preds = %361, %354
  %368 = phi i1 [ false, %354 ], [ %366, %361 ]
  br i1 %368, label %220, label %369

369:                                              ; preds = %367
  br label %370

370:                                              ; preds = %369, %217, %202
  %371 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %372 = call i32 @rw_wunlock(%struct.rwlock* %371)
  %373 = call i32 @vm_page_free_pages_toq(%struct.spglist* %19, i32 1)
  %374 = load i32, i32* %14, align 4
  %375 = load i32, i32* %17, align 4
  %376 = add nsw i32 %374, %375
  ret i32 %376
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_13__*) #1

declare dso_local %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i64) #1

declare dso_local %struct.md_page* @pa_to_pvh(i64) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @PV_PMAP(%struct.TYPE_14__*) #1

declare dso_local i32 @PMAP_TRYLOCK(i64) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

declare dso_local i32* @pmap_pde(i64, i64, i32*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i64) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @pmap_clear_bits(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i64, i64) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i64) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
