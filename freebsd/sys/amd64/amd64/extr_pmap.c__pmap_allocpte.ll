; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c__pmap_allocpte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c__pmap_allocpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32*, i32*, i64 }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@NUPDE = common dso_local global i64 0, align 8
@NUPDPE = common dso_local global i64 0, align 8
@PG_U = common dso_local global i32 0, align 4
@NUPML4E = common dso_local global i64 0, align 8
@PMAP_NO_CR3 = common dso_local global i64 0, align 8
@pg_nx = common dso_local global i32 0, align 4
@NPML4EPGSHIFT = common dso_local global i64 0, align 8
@PG_FRAME = common dso_local global i32 0, align 4
@NPDPEPGSHIFT = common dso_local global i64 0, align 8
@NPDEPGSHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_20__*, i64, %struct.rwlock**)* @_pmap_allocpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @_pmap_allocpte(%struct.TYPE_20__* %0, i64 %1, %struct.rwlock** %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rwlock**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rwlock** %2, %struct.rwlock*** %7, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = load i32, i32* @MA_OWNED, align 4
  %29 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_20__* %27, i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = call i32 @pmap_accessed_bit(%struct.TYPE_20__* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = call i32 @pmap_modified_bit(%struct.TYPE_20__* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = call i32 @pmap_valid_bit(%struct.TYPE_20__* %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = call i32 @pmap_rw_bit(%struct.TYPE_20__* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %40 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.TYPE_19__* @vm_page_alloc(i32* null, i64 %38, i32 %43)
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %8, align 8
  %45 = icmp eq %struct.TYPE_19__* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %3
  %47 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %48 = icmp ne %struct.rwlock** %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %51 = call i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock** %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = call i32 @PMAP_UNLOCK(%struct.TYPE_20__* %52)
  %54 = call i32 (...) @PMAP_ASSERT_NOT_IN_DI()
  %55 = call i32 @vm_wait(i32* null)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = call i32 @PMAP_LOCK(%struct.TYPE_20__* %56)
  br label %58

58:                                               ; preds = %49, %46
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %332

59:                                               ; preds = %3
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PG_ZERO, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = call i32 @pmap_zero_page(%struct.TYPE_19__* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @NUPDE, align 8
  %72 = load i64, i64* @NUPDPE, align 8
  %73 = add i64 %71, %72
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %138

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @NUPDE, align 8
  %78 = load i64, i64* @NUPDPE, align 8
  %79 = add i64 %77, %78
  %80 = sub i64 %76, %79
  store i64 %80, i64* %17, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %15, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__* %86)
  %88 = load i32, i32* @PG_U, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %95, %96
  %98 = load i32*, i32** %15, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %137

103:                                              ; preds = %75
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* @NUPML4E, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PMAP_NO_CR3, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* @pg_nx, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %107
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %17, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %16, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %125 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__* %124)
  %126 = load i32, i32* @PG_U, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %133, %134
  %136 = load i32*, i32** %16, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %118, %103, %75
  br label %328

138:                                              ; preds = %69
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @NUPDE, align 8
  %141 = icmp uge i64 %139, %140
  br i1 %141, label %142, label %212

142:                                              ; preds = %138
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @NUPDE, align 8
  %145 = sub i64 %143, %144
  store i64 %145, i64* %19, align 8
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* @NPML4EPGSHIFT, align 8
  %148 = lshr i64 %146, %147
  store i64 %148, i64* %18, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %18, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %20, align 8
  %154 = load i32*, i32** %20, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %142
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = load i64, i64* @NUPDE, align 8
  %162 = load i64, i64* @NUPDPE, align 8
  %163 = add i64 %161, %162
  %164 = load i64, i64* %18, align 8
  %165 = add i64 %163, %164
  %166 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %167 = call %struct.TYPE_19__* @_pmap_allocpte(%struct.TYPE_20__* %160, i64 %165, %struct.rwlock** %166)
  %168 = icmp eq %struct.TYPE_19__* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %159
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %171 = call i32 @vm_page_unwire_noq(%struct.TYPE_19__* %170)
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %173 = call i32 @vm_page_free_zero(%struct.TYPE_19__* %172)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %332

174:                                              ; preds = %159
  br label %185

175:                                              ; preds = %142
  %176 = load i32*, i32** %20, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @PG_FRAME, align 4
  %179 = and i32 %177, %178
  %180 = call %struct.TYPE_19__* @PHYS_TO_VM_PAGE(i32 %179)
  store %struct.TYPE_19__* %180, %struct.TYPE_19__** %9, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %175, %174
  %186 = load i32*, i32** %20, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @PG_FRAME, align 4
  %189 = and i32 %187, %188
  %190 = call i64 @PHYS_TO_DMAP(i32 %189)
  %191 = inttoptr i64 %190 to i32*
  store i32* %191, i32** %21, align 8
  %192 = load i32*, i32** %21, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* @NPDPEPGSHIFT, align 8
  %195 = shl i64 1, %194
  %196 = sub i64 %195, 1
  %197 = and i64 %193, %196
  %198 = getelementptr inbounds i32, i32* %192, i64 %197
  store i32* %198, i32** %21, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %200 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__* %199)
  %201 = load i32, i32* @PG_U, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %13, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %14, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* %11, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %12, align 4
  %210 = or i32 %208, %209
  %211 = load i32*, i32** %21, align 8
  store i32 %210, i32* %211, align 4
  br label %327

212:                                              ; preds = %138
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* @NPDPEPGSHIFT, align 8
  %215 = lshr i64 %213, %214
  store i64 %215, i64* %23, align 8
  %216 = load i64, i64* %23, align 8
  %217 = load i64, i64* @NPML4EPGSHIFT, align 8
  %218 = lshr i64 %216, %217
  store i64 %218, i64* %22, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %22, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %24, align 8
  %224 = load i32*, i32** %24, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %14, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %212
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %231 = load i64, i64* @NUPDE, align 8
  %232 = load i64, i64* %23, align 8
  %233 = add i64 %231, %232
  %234 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %235 = call %struct.TYPE_19__* @_pmap_allocpte(%struct.TYPE_20__* %230, i64 %233, %struct.rwlock** %234)
  %236 = icmp eq %struct.TYPE_19__* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %229
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %239 = call i32 @vm_page_unwire_noq(%struct.TYPE_19__* %238)
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %241 = call i32 @vm_page_free_zero(%struct.TYPE_19__* %240)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %332

242:                                              ; preds = %229
  %243 = load i32*, i32** %24, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @PG_FRAME, align 4
  %246 = and i32 %244, %245
  %247 = call i64 @PHYS_TO_DMAP(i32 %246)
  %248 = inttoptr i64 %247 to i32*
  store i32* %248, i32** %25, align 8
  %249 = load i32*, i32** %25, align 8
  %250 = load i64, i64* %23, align 8
  %251 = load i64, i64* @NPDPEPGSHIFT, align 8
  %252 = shl i64 1, %251
  %253 = sub i64 %252, 1
  %254 = and i64 %250, %253
  %255 = getelementptr inbounds i32, i32* %249, i64 %254
  store i32* %255, i32** %25, align 8
  br label %300

256:                                              ; preds = %212
  %257 = load i32*, i32** %24, align 8
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @PG_FRAME, align 4
  %260 = and i32 %258, %259
  %261 = call i64 @PHYS_TO_DMAP(i32 %260)
  %262 = inttoptr i64 %261 to i32*
  store i32* %262, i32** %25, align 8
  %263 = load i32*, i32** %25, align 8
  %264 = load i64, i64* %23, align 8
  %265 = load i64, i64* @NPDPEPGSHIFT, align 8
  %266 = shl i64 1, %265
  %267 = sub i64 %266, 1
  %268 = and i64 %264, %267
  %269 = getelementptr inbounds i32, i32* %263, i64 %268
  store i32* %269, i32** %25, align 8
  %270 = load i32*, i32** %25, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %14, align 4
  %273 = and i32 %271, %272
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %256
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %277 = load i64, i64* @NUPDE, align 8
  %278 = load i64, i64* %23, align 8
  %279 = add i64 %277, %278
  %280 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %281 = call %struct.TYPE_19__* @_pmap_allocpte(%struct.TYPE_20__* %276, i64 %279, %struct.rwlock** %280)
  %282 = icmp eq %struct.TYPE_19__* %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %275
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %285 = call i32 @vm_page_unwire_noq(%struct.TYPE_19__* %284)
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %287 = call i32 @vm_page_free_zero(%struct.TYPE_19__* %286)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %332

288:                                              ; preds = %275
  br label %299

289:                                              ; preds = %256
  %290 = load i32*, i32** %25, align 8
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @PG_FRAME, align 4
  %293 = and i32 %291, %292
  %294 = call %struct.TYPE_19__* @PHYS_TO_VM_PAGE(i32 %293)
  store %struct.TYPE_19__* %294, %struct.TYPE_19__** %10, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %289, %288
  br label %300

300:                                              ; preds = %299, %242
  %301 = load i32*, i32** %25, align 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @PG_FRAME, align 4
  %304 = and i32 %302, %303
  %305 = call i64 @PHYS_TO_DMAP(i32 %304)
  %306 = inttoptr i64 %305 to i32*
  store i32* %306, i32** %26, align 8
  %307 = load i32*, i32** %26, align 8
  %308 = load i64, i64* %6, align 8
  %309 = load i64, i64* @NPDEPGSHIFT, align 8
  %310 = shl i64 1, %309
  %311 = sub i64 %310, 1
  %312 = and i64 %308, %311
  %313 = getelementptr inbounds i32, i32* %307, i64 %312
  store i32* %313, i32** %26, align 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %315 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__* %314)
  %316 = load i32, i32* @PG_U, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* %13, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* %14, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* %11, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* %12, align 4
  %325 = or i32 %323, %324
  %326 = load i32*, i32** %26, align 8
  store i32 %325, i32* %326, align 4
  br label %327

327:                                              ; preds = %300, %185
  br label %328

328:                                              ; preds = %327, %137
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %330 = call i32 @pmap_resident_count_inc(%struct.TYPE_20__* %329, i32 1)
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %331, %struct.TYPE_19__** %4, align 8
  br label %332

332:                                              ; preds = %328, %283, %237, %169, %58
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %333
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_valid_bit(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @vm_page_alloc(i32*, i64, i32) #1

declare dso_local i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock**) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @PMAP_ASSERT_NOT_IN_DI(...) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_19__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_unwire_noq(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_free_zero(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_resident_count_inc(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
