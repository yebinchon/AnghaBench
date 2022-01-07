; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_quick_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_quick_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@kmi = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"pmap_enter_quick_locked: managed mapping within the clean submap\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pmap_enter_quick_locked: %p %lx\00", align 1
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"pmap_enter_quick_locked: Invalid page entry, va: 0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"pmap_enter_quick_locked: Invalid level %d\00", align 1
@ATTR_DEFAULT = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@DEVICE_MEMORY = common dso_local global i64 0, align 8
@ATTR_XN = common dso_local global i32 0, align 4
@ATTR_AP_USER = common dso_local global i32 0, align 4
@ATTR_PXN = common dso_local global i32 0, align 4
@ATTR_UXN = common dso_local global i32 0, align 4
@ATTR_nG = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_BACK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i64, i32, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, %struct.rwlock**)* @pmap_enter_quick_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @pmap_enter_quick_locked(i64 %0, i32 %1, %struct.TYPE_13__* %2, i32 %3, %struct.TYPE_13__* %4, %struct.rwlock** %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.rwlock**, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @kmi, i32 0, i32 1), align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @kmi, i32 0, i32 0), align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VPO_UNMANAGED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %25, %6
  %37 = phi i1 [ true, %25 ], [ true, %6 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @MA_OWNED, align 4
  %42 = call i32 @PMAP_LOCK_ASSERT(i64 %40, i32 %41)
  %43 = load i32, i32* @KTR_PMAP, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @CTR2(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @pmap_l2_pindex(i32 %51)
  store i64 %52, i64* %21, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %21, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %112

66:                                               ; preds = %55, %50
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32* @pmap_pde(i64 %67, i32 %68, i32* %20)
  store i32* %69, i32** %15, align 8
  %70 = load i32, i32* %20, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32* @pmap_l1_to_l2(i32* %73, i32 %74)
  store i32* %75, i32** %16, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @pmap_load(i32* %76)
  %78 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @L2_BLOCK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %288

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i32, i32* %20, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @pmap_load(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @pmap_load(i32* %92)
  %94 = load i32, i32* @ATTR_MASK, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = call %struct.TYPE_13__* @PHYS_TO_VM_PAGE(i32 %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %12, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %111

102:                                              ; preds = %87, %84
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %21, align 8
  %105 = call %struct.TYPE_13__* @_pmap_alloc_l3(i64 %103, i64 %104, i32* null)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %12, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = icmp eq %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %7, align 8
  br label %288

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %61
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %113)
  %115 = call i64 @PHYS_TO_DMAP(i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %17, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @pmap_l3_index(i32 %118)
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %17, align 8
  br label %142

121:                                              ; preds = %36
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %122 = load i64, i64* @kernel_pmap, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32* @pmap_pde(i64 %122, i32 %123, i32* %20)
  store i32* %124, i32** %15, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = icmp ne i32* %125, null
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @KASSERT(i32 %127, i8* %130)
  %132 = load i32, i32* %20, align 4
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @KASSERT(i32 %134, i8* %137)
  %139 = load i32*, i32** %15, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32* @pmap_l2_to_l3(i32* %139, i32 %140)
  store i32* %141, i32** %17, align 8
  br label %142

142:                                              ; preds = %121, %112
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @pmap_load(i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %148 = icmp ne %struct.TYPE_13__* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  br label %154

154:                                              ; preds = %149, %146
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %7, align 8
  br label %288

156:                                              ; preds = %142
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @VPO_UNMANAGED, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %156
  %164 = load i64, i64* %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %168 = call i32 @pmap_try_insert_pv_entry(i64 %164, i32 %165, %struct.TYPE_13__* %166, %struct.rwlock** %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %163
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %172 = icmp ne %struct.TYPE_13__* %171, null
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %175 = load i64, i64* %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %178 = call i64 @pmap_unwire_l3(i64 %175, i32 %176, %struct.TYPE_13__* %177, %struct.spglist* %14)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @pmap_invalidate_page(i64 %181, i32 %182)
  %184 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  br label %185

185:                                              ; preds = %180, %173
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  br label %186

186:                                              ; preds = %185, %170
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %7, align 8
  br label %288

188:                                              ; preds = %163, %156
  %189 = load i64, i64* %8, align 8
  %190 = call i32 @pmap_resident_count_inc(i64 %189, i32 1)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %192 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %191)
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* @ATTR_DEFAULT, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @ATTR_IDX(i64 %199)
  %201 = or i32 %195, %200
  %202 = load i32, i32* @ATTR_AP_RO, align 4
  %203 = call i32 @ATTR_AP(i32 %202)
  %204 = or i32 %201, %203
  %205 = load i32, i32* @L3_PAGE, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %209 = and i32 %207, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %188
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @DEVICE_MEMORY, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %211, %188
  %219 = load i32, i32* @ATTR_XN, align 4
  %220 = load i32, i32* %18, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %18, align 4
  br label %222

222:                                              ; preds = %218, %211
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load i32, i32* @ATTR_AP_USER, align 4
  %228 = call i32 @ATTR_AP(i32 %227)
  %229 = load i32, i32* @ATTR_PXN, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* %18, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %18, align 4
  br label %237

233:                                              ; preds = %222
  %234 = load i32, i32* @ATTR_UXN, align 4
  %235 = load i32, i32* %18, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %233, %226
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* @kernel_pmap, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i32, i32* @ATTR_nG, align 4
  %243 = load i32, i32* %18, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %18, align 4
  br label %245

245:                                              ; preds = %241, %237
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @VPO_UNMANAGED, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %245
  %253 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %254 = load i32, i32* %18, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* @ATTR_AF, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %18, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %18, align 4
  br label %260

260:                                              ; preds = %252, %245
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %260
  %266 = load i64, i64* %8, align 8
  %267 = load i64, i64* @kernel_pmap, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %265
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @VM_MEMATTR_WRITE_BACK, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %269
  %277 = load i32, i32* %19, align 4
  %278 = call i64 @PHYS_TO_DMAP(i32 %277)
  %279 = load i32, i32* @PAGE_SIZE, align 4
  %280 = call i32 @cpu_icache_sync_range(i64 %278, i32 %279)
  br label %281

281:                                              ; preds = %276, %269, %265, %260
  %282 = load i32*, i32** %17, align 8
  %283 = load i32, i32* %18, align 4
  %284 = call i32 @pmap_store(i32* %282, i32 %283)
  %285 = load i32, i32* @ishst, align 4
  %286 = call i32 @dsb(i32 %285)
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %287, %struct.TYPE_13__** %7, align 8
  br label %288

288:                                              ; preds = %281, %186, %154, %108, %82
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %289
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i64, i32) #1

declare dso_local i64 @pmap_l2_pindex(i32) #1

declare dso_local i32* @pmap_pde(i64, i32, i32*) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local %struct.TYPE_13__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_13__* @_pmap_alloc_l3(i64, i64, i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__*) #1

declare dso_local i64 @pmap_l3_index(i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_try_insert_pv_entry(i64, i32, %struct.TYPE_13__*, %struct.rwlock**) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @pmap_unwire_l3(i64, i32, %struct.TYPE_13__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(i64, i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @pmap_resident_count_inc(i64, i32) #1

declare dso_local i32 @ATTR_IDX(i64) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32 @cpu_icache_sync_range(i64, i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @dsb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
