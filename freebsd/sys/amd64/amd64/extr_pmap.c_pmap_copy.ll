; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }
%struct.TYPE_25__ = type { i64, i64 }

@UPT_MIN_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"pmap_copy: invalid to pmap_copy page tables\00", align 1
@NBPML4 = common dso_local global i64 0, align 8
@PML4MASK = common dso_local global i64 0, align 8
@NBPDP = common dso_local global i64 0, align 8
@PDPMASK = common dso_local global i64 0, align 8
@NBPDR = common dso_local global i64 0, align 8
@PDRMASK = common dso_local global i64 0, align 8
@PG_PS = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@pmap_pde_mappings = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap_copy: source page table page is unused\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"dstmpte pindex/addr mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rwlock*, align 8
  %12 = alloca %struct.spglist, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_25__*, align 8
  %27 = alloca %struct.TYPE_25__*, align 8
  %28 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %350

33:                                               ; preds = %5
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %350

42:                                               ; preds = %33
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = call i64 @pmap_emulate_ad_bits(%struct.TYPE_26__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %350

47:                                               ; preds = %42
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %24, align 8
  store %struct.rwlock* null, %struct.rwlock** %11, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %53 = icmp ult %struct.TYPE_26__* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %56 = call i32 @PMAP_LOCK(%struct.TYPE_26__* %55)
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %58 = call i32 @PMAP_LOCK(%struct.TYPE_26__* %57)
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %61 = call i32 @PMAP_LOCK(%struct.TYPE_26__* %60)
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %63 = call i32 @PMAP_LOCK(%struct.TYPE_26__* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %66 = call i32 @pmap_accessed_bit(%struct.TYPE_26__* %65)
  store i32 %66, i32* %18, align 4
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %68 = call i32 @pmap_modified_bit(%struct.TYPE_26__* %67)
  store i32 %68, i32* %19, align 4
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %70 = call i32 @pmap_valid_bit(%struct.TYPE_26__* %69)
  store i32 %70, i32* %20, align 4
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %23, align 8
  br label %72

72:                                               ; preds = %336, %64
  %73 = load i64, i64* %23, align 8
  %74 = load i64, i64* %24, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %338

76:                                               ; preds = %72
  %77 = load i64, i64* %23, align 8
  %78 = load i64, i64* @UPT_MIN_ADDRESS, align 8
  %79 = icmp slt i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @KASSERT(i32 %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %83 = load i64, i64* %23, align 8
  %84 = call i32* @pmap_pml4e(%struct.TYPE_26__* %82, i64 %83)
  store i32* %84, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %20, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %76
  %91 = load i64, i64* %23, align 8
  %92 = load i64, i64* @NBPML4, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i64, i64* @PML4MASK, align 8
  %95 = xor i64 %94, -1
  %96 = and i64 %93, %95
  store i64 %96, i64* %25, align 8
  %97 = load i64, i64* %25, align 8
  %98 = load i64, i64* %23, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i64, i64* %24, align 8
  store i64 %101, i64* %25, align 8
  br label %102

102:                                              ; preds = %100, %90
  br label %336

103:                                              ; preds = %76
  %104 = load i32*, i32** %13, align 8
  %105 = load i64, i64* %23, align 8
  %106 = call i32* @pmap_pml4e_to_pdpe(i32* %104, i64 %105)
  store i32* %106, i32** %14, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %20, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %103
  %113 = load i64, i64* %23, align 8
  %114 = load i64, i64* @NBPDP, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* @PDPMASK, align 8
  %117 = xor i64 %116, -1
  %118 = and i64 %115, %117
  store i64 %118, i64* %25, align 8
  %119 = load i64, i64* %25, align 8
  %120 = load i64, i64* %23, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i64, i64* %24, align 8
  store i64 %123, i64* %25, align 8
  br label %124

124:                                              ; preds = %122, %112
  br label %336

125:                                              ; preds = %103
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* @NBPDR, align 8
  %128 = add nsw i64 %126, %127
  %129 = load i64, i64* @PDRMASK, align 8
  %130 = xor i64 %129, -1
  %131 = and i64 %128, %130
  store i64 %131, i64* %25, align 8
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %23, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i64, i64* %24, align 8
  store i64 %136, i64* %25, align 8
  br label %137

137:                                              ; preds = %135, %125
  %138 = load i32*, i32** %14, align 8
  %139 = load i64, i64* %23, align 8
  %140 = call i32* @pmap_pdpe_to_pde(i32* %138, i64 %139)
  store i32* %140, i32** %15, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %336

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @PG_PS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %213

151:                                              ; preds = %146
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* @PDRMASK, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load i64, i64* %23, align 8
  %158 = load i64, i64* @NBPDR, align 8
  %159 = add nsw i64 %157, %158
  %160 = load i64, i64* %24, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156, %151
  br label %336

163:                                              ; preds = %156
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %165 = load i64, i64* %23, align 8
  %166 = call %struct.TYPE_25__* @pmap_allocpde(%struct.TYPE_26__* %164, i64 %165, i32* null)
  store %struct.TYPE_25__* %166, %struct.TYPE_25__** %26, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %168 = icmp eq %struct.TYPE_25__* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %338

170:                                              ; preds = %163
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %172 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_25__* %171)
  %173 = call i64 @PHYS_TO_DMAP(i32 %172)
  %174 = inttoptr i64 %173 to i32*
  store i32* %174, i32** %15, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = load i64, i64* %23, align 8
  %177 = call i64 @pmap_pde_index(i64 %176)
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32* %178, i32** %15, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %207

182:                                              ; preds = %170
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @PG_MANAGED, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %189 = load i64, i64* %23, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %192 = call i64 @pmap_pv_insert_pde(%struct.TYPE_26__* %188, i64 %189, i32 %190, i32 %191, %struct.rwlock** %11)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %187, %182
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* @PG_W, align 4
  %197 = xor i32 %196, -1
  %198 = and i32 %195, %197
  %199 = load i32*, i32** %15, align 8
  store i32 %198, i32* %199, align 4
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %201 = load i64, i64* @NBPDR, align 8
  %202 = load i64, i64* @PAGE_SIZE, align 8
  %203 = sdiv i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = call i32 @pmap_resident_count_inc(%struct.TYPE_26__* %200, i32 %204)
  %206 = call i32 @atomic_add_long(i32* @pmap_pde_mappings, i32 1)
  br label %212

207:                                              ; preds = %187, %170
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, -1
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %207, %194
  br label %336

213:                                              ; preds = %146
  %214 = load i32, i32* @PG_FRAME, align 4
  %215 = load i32, i32* %16, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = call %struct.TYPE_25__* @PHYS_TO_VM_PAGE(i32 %217)
  store %struct.TYPE_25__* %218, %struct.TYPE_25__** %28, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @KASSERT(i32 %223, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %225 = load i64, i64* %25, align 8
  %226 = load i64, i64* %24, align 8
  %227 = icmp sgt i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %213
  %229 = load i64, i64* %24, align 8
  store i64 %229, i64* %25, align 8
  br label %230

230:                                              ; preds = %228, %213
  %231 = load i32, i32* %16, align 4
  %232 = call i64 @PHYS_TO_DMAP(i32 %231)
  %233 = inttoptr i64 %232 to i32*
  store i32* %233, i32** %22, align 8
  %234 = load i32*, i32** %22, align 8
  %235 = load i64, i64* %23, align 8
  %236 = call i64 @pmap_pte_index(i64 %235)
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32* %237, i32** %22, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %27, align 8
  br label %238

238:                                              ; preds = %329, %230
  %239 = load i64, i64* %23, align 8
  %240 = load i64, i64* %25, align 8
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %242, label %335

242:                                              ; preds = %238
  %243 = load i32*, i32** %22, align 8
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %21, align 4
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* @PG_MANAGED, align 4
  %247 = and i32 %245, %246
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %329

250:                                              ; preds = %242
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %252 = icmp ne %struct.TYPE_25__* %251, null
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %23, align 8
  %258 = call i64 @pmap_pde_pindex(i64 %257)
  %259 = icmp eq i64 %256, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @KASSERT(i32 %260, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %263, align 8
  br label %273

266:                                              ; preds = %250
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %268 = load i64, i64* %23, align 8
  %269 = call %struct.TYPE_25__* @pmap_allocpte(%struct.TYPE_26__* %267, i64 %268, i32* null)
  store %struct.TYPE_25__* %269, %struct.TYPE_25__** %27, align 8
  %270 = icmp eq %struct.TYPE_25__* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %339

272:                                              ; preds = %266
  br label %273

273:                                              ; preds = %272, %253
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %275 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_25__* %274)
  %276 = call i64 @PHYS_TO_DMAP(i32 %275)
  %277 = inttoptr i64 %276 to i32*
  store i32* %277, i32** %17, align 8
  %278 = load i32*, i32** %17, align 8
  %279 = load i64, i64* %23, align 8
  %280 = call i64 @pmap_pte_index(i64 %279)
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32* %281, i32** %17, align 8
  %282 = load i32*, i32** %17, align 8
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %306

285:                                              ; preds = %273
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %287 = load i64, i64* %23, align 8
  %288 = load i32, i32* %21, align 4
  %289 = load i32, i32* @PG_FRAME, align 4
  %290 = and i32 %288, %289
  %291 = call %struct.TYPE_25__* @PHYS_TO_VM_PAGE(i32 %290)
  %292 = call i64 @pmap_try_insert_pv_entry(%struct.TYPE_26__* %286, i64 %287, %struct.TYPE_25__* %291, %struct.rwlock** %11)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %285
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* @PG_W, align 4
  %297 = load i32, i32* %19, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* %18, align 4
  %300 = or i32 %298, %299
  %301 = xor i32 %300, -1
  %302 = and i32 %295, %301
  %303 = load i32*, i32** %17, align 8
  store i32 %302, i32* %303, align 4
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %305 = call i32 @pmap_resident_count_inc(%struct.TYPE_26__* %304, i32 1)
  br label %319

306:                                              ; preds = %285, %273
  %307 = call i32 @SLIST_INIT(%struct.spglist* %12)
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %309 = load i64, i64* %23, align 8
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %311 = call i64 @pmap_unwire_ptp(%struct.TYPE_26__* %308, i64 %309, %struct.TYPE_25__* %310, %struct.spglist* %12)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %315 = load i64, i64* %23, align 8
  %316 = call i32 @pmap_invalidate_page(%struct.TYPE_26__* %314, i64 %315)
  %317 = call i32 @vm_page_free_pages_toq(%struct.spglist* %12, i32 1)
  br label %318

318:                                              ; preds = %313, %306
  br label %339

319:                                              ; preds = %294
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp sge i64 %322, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  br label %335

328:                                              ; preds = %319
  br label %329

329:                                              ; preds = %328, %249
  %330 = load i64, i64* @PAGE_SIZE, align 8
  %331 = load i64, i64* %23, align 8
  %332 = add nsw i64 %331, %330
  store i64 %332, i64* %23, align 8
  %333 = load i32*, i32** %22, align 8
  %334 = getelementptr inbounds i32, i32* %333, i32 1
  store i32* %334, i32** %22, align 8
  br label %238

335:                                              ; preds = %327, %238
  br label %336

336:                                              ; preds = %335, %212, %162, %145, %124, %102
  %337 = load i64, i64* %25, align 8
  store i64 %337, i64* %23, align 8
  br label %72

338:                                              ; preds = %169, %72
  br label %339

339:                                              ; preds = %338, %318, %271
  %340 = load %struct.rwlock*, %struct.rwlock** %11, align 8
  %341 = icmp ne %struct.rwlock* %340, null
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load %struct.rwlock*, %struct.rwlock** %11, align 8
  %344 = call i32 @rw_wunlock(%struct.rwlock* %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %347 = call i32 @PMAP_UNLOCK(%struct.TYPE_26__* %346)
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %349 = call i32 @PMAP_UNLOCK(%struct.TYPE_26__* %348)
  br label %350

350:                                              ; preds = %345, %46, %41, %32
  ret void
}

declare dso_local i64 @pmap_emulate_ad_bits(%struct.TYPE_26__*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_valid_bit(%struct.TYPE_26__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_pml4e(%struct.TYPE_26__*, i64) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i64) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i64) #1

declare dso_local %struct.TYPE_25__* @pmap_allocpde(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_25__*) #1

declare dso_local i64 @pmap_pde_index(i64) #1

declare dso_local i64 @pmap_pv_insert_pde(%struct.TYPE_26__*, i64, i32, i32, %struct.rwlock**) #1

declare dso_local i32 @pmap_resident_count_inc(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local %struct.TYPE_25__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_pte_index(i64) #1

declare dso_local i64 @pmap_pde_pindex(i64) #1

declare dso_local %struct.TYPE_25__* @pmap_allocpte(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i64 @pmap_try_insert_pv_entry(%struct.TYPE_26__*, i64, %struct.TYPE_25__*, %struct.rwlock**) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @pmap_unwire_ptp(%struct.TYPE_26__*, i64, %struct.TYPE_25__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
