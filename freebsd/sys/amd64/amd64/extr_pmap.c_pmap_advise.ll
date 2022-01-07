; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_advise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }

@MADV_DONTNEED = common dso_local global i32 0, align 4
@MADV_FREE = common dso_local global i32 0, align 4
@NBPML4 = common dso_local global i32 0, align 4
@PML4MASK = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i32 0, align 4
@PDPMASK = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"pmap_advise: no address gap\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pmap_advise: invalid PTE\00", align 1
@PG_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_advise(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rwlock*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MADV_DONTNEED, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MADV_FREE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %318

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @pmap_emulate_ad_bits(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %318

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pmap_accessed_bit(i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pmap_global_bit(i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pmap_modified_bit(i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pmap_valid_bit(i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pmap_rw_bit(i32 %46)
  store i32 %47, i32* %18, align 4
  store i32 0, i32* %23, align 4
  %48 = call i32 (...) @pmap_delayed_invl_start()
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PMAP_LOCK(i32 %49)
  br label %51

51:                                               ; preds = %306, %37
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %308

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32* @pmap_pml4e(i32 %56, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %19, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NBPML4, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @PML4MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %21, align 4
  br label %76

76:                                               ; preds = %74, %64
  br label %306

77:                                               ; preds = %55
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32* @pmap_pml4e_to_pdpe(i32* %78, i32 %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %19, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @NBPDP, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @PDPMASK, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %96, %86
  br label %306

99:                                               ; preds = %77
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NBPDR, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @PDRMASK, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %109, %99
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32* @pmap_pdpe_to_pde(i32* %112, i32 %113)
  store i32* %114, i32** %13, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %19, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %306

122:                                              ; preds = %111
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @PG_PS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %192

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @PG_MANAGED, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %306

133:                                              ; preds = %127
  store %struct.rwlock* null, %struct.rwlock** %9, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @pmap_demote_pde_locked(i32 %134, i32* %135, i32 %136, %struct.rwlock** %9)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %133
  %140 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %141 = icmp ne %struct.rwlock* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %144 = call i32 @rw_wunlock(%struct.rwlock* %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %306

146:                                              ; preds = %133
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @PG_W, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %185

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %21, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %21, align 4
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %156, %151
  %159 = load i64, i64* @PAGE_SIZE, align 8
  %160 = load i32, i32* %20, align 4
  %161 = sext i32 %160 to i64
  %162 = sub nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp sge i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @KASSERT(i32 %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %20, align 4
  %171 = call i32* @pmap_pde_to_pte(i32* %169, i32 %170)
  store i32* %171, i32** %14, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %19, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @KASSERT(i32 %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i32, i32* %5, align 4
  %180 = load i32*, i32** %14, align 8
  %181 = load i32, i32* %20, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @pmap_remove_pte(i32 %179, i32* %180, i32 %181, i32 %183, i32* null, %struct.rwlock** %9)
  store i32 1, i32* %23, align 4
  br label %185

185:                                              ; preds = %158, %146
  %186 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %187 = icmp ne %struct.rwlock* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %190 = call i32 @rw_wunlock(%struct.rwlock* %189)
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %122
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %197, %193
  %200 = load i32, i32* %21, align 4
  store i32 %200, i32* %20, align 4
  %201 = load i32*, i32** %13, align 8
  %202 = load i32, i32* %6, align 4
  %203 = call i32* @pmap_pde_to_pte(i32* %201, i32 %202)
  store i32* %203, i32** %14, align 8
  br label %204

204:                                              ; preds = %288, %199
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %21, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %296

208:                                              ; preds = %204
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @PG_MANAGED, align 4
  %212 = load i32, i32* %19, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %210, %213
  %215 = load i32, i32* @PG_MANAGED, align 4
  %216 = load i32, i32* %19, align 4
  %217 = or i32 %215, %216
  %218 = icmp ne i32 %214, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  br label %277

220:                                              ; preds = %208
  %221 = load i32*, i32** %14, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %18, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %222, %225
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %18, align 4
  %229 = or i32 %227, %228
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %249

231:                                              ; preds = %220
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @MADV_DONTNEED, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load i32*, i32** %14, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @PG_FRAME, align 4
  %239 = and i32 %237, %238
  %240 = call i32 @PHYS_TO_VM_PAGE(i32 %239)
  store i32 %240, i32* %22, align 4
  %241 = load i32, i32* %22, align 4
  %242 = call i32 @vm_page_dirty(i32 %241)
  br label %243

243:                                              ; preds = %235, %231
  %244 = load i32*, i32** %14, align 8
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %15, align 4
  %247 = or i32 %245, %246
  %248 = call i32 @atomic_clear_long(i32* %244, i32 %247)
  br label %261

249:                                              ; preds = %220
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %15, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i32*, i32** %14, align 8
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @atomic_clear_long(i32* %256, i32 %257)
  br label %260

259:                                              ; preds = %249
  br label %277

260:                                              ; preds = %255
  br label %261

261:                                              ; preds = %260, %243
  br label %262

262:                                              ; preds = %261
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %16, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* %21, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32, i32* %6, align 4
  store i32 %273, i32* %20, align 4
  br label %274

274:                                              ; preds = %272, %268
  br label %276

275:                                              ; preds = %262
  store i32 1, i32* %23, align 4
  br label %276

276:                                              ; preds = %275, %274
  br label %288

277:                                              ; preds = %259, %219
  %278 = load i32, i32* %20, align 4
  %279 = load i32, i32* %21, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @pmap_invalidate_range(i32 %282, i32 %283, i32 %284)
  %286 = load i32, i32* %21, align 4
  store i32 %286, i32* %20, align 4
  br label %287

287:                                              ; preds = %281, %277
  br label %288

288:                                              ; preds = %287, %276
  %289 = load i32*, i32** %14, align 8
  %290 = getelementptr inbounds i32, i32* %289, i32 1
  store i32* %290, i32** %14, align 8
  %291 = load i64, i64* @PAGE_SIZE, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %6, align 4
  br label %204

296:                                              ; preds = %204
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %21, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @pmap_invalidate_range(i32 %301, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %300, %296
  br label %306

306:                                              ; preds = %305, %145, %132, %121, %98, %76
  %307 = load i32, i32* %21, align 4
  store i32 %307, i32* %6, align 4
  br label %51

308:                                              ; preds = %51
  %309 = load i32, i32* %23, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @pmap_invalidate_all(i32 %312)
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i32, i32* %5, align 4
  %316 = call i32 @PMAP_UNLOCK(i32 %315)
  %317 = call i32 (...) @pmap_delayed_invl_finish()
  br label %318

318:                                              ; preds = %314, %36, %31
  ret void
}

declare dso_local i64 @pmap_emulate_ad_bits(i32) #1

declare dso_local i32 @pmap_accessed_bit(i32) #1

declare dso_local i32 @pmap_global_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @pmap_delayed_invl_start(...) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pml4e(i32, i32) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32 @pmap_demote_pde_locked(i32, i32*, i32, %struct.rwlock**) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @pmap_remove_pte(i32, i32*, i32, i32, i32*, %struct.rwlock**) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @atomic_clear_long(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

declare dso_local i32 @pmap_invalidate_all(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @pmap_delayed_invl_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
