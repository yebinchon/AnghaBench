; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_34__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@kernel_pmap = common dso_local global %struct.TYPE_35__* null, align 8
@PG_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"pmap_enter_pde: cannot create wired user mapping\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"pmap_enter_pde: newpde is missing PG_M\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"pmap_enter_pde: 2m x blocked for va %#lx in pmap %p\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"pmap_enter_pde: failure for va %#lx in pmap %p\00", align 1
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i64 0, align 8
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PT_X86 = common dso_local global i64 0, align 8
@X86_PG_PKU_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"pmap_enter_pde: pdpg's reference count is too low\00", align 1
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"pmap_enter_pde: trie insert failed\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"pmap_enter_pde: non-zero pde %p\00", align 1
@PG_MANAGED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@pmap_pde_mappings = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"pmap_enter_pde: success for va %#lx in pmap %p\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, i64, i32, i32, %struct.TYPE_34__*, %struct.rwlock**)* @pmap_enter_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_pde(%struct.TYPE_35__* %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_34__* %4, %struct.rwlock** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.rwlock**, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_34__* %4, %struct.TYPE_34__** %12, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %13, align 8
  %22 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** @kernel_pmap, align 8
  %24 = icmp eq %struct.TYPE_35__* %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PG_W, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %25, %6
  %31 = phi i1 [ true, %6 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %35 = call i32 @pmap_global_bit(%struct.TYPE_35__* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %37 = call i32 @pmap_rw_bit(%struct.TYPE_35__* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %40 = call i32 @pmap_modified_bit(%struct.TYPE_35__* %39)
  %41 = load i32, i32* %18, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %38, %42
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %49 = call i32 @pmap_valid_bit(%struct.TYPE_35__* %48)
  store i32 %49, i32* %19, align 4
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %51 = load i32, i32* @MA_OWNED, align 4
  %52 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_35__* %50, i32 %51)
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @pmap_pde_ept_executable(%struct.TYPE_35__* %54, i32 %55)
  %57 = call i32 @pmap_allow_2m_x_page(%struct.TYPE_35__* %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %30
  %60 = load i32, i32* @KTR_PMAP, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %63 = call i32 @CTR2(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %61, %struct.TYPE_35__* %62)
  %64 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %64, i32* %7, align 4
  br label %313

65:                                               ; preds = %30
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %75

73:                                               ; preds = %65
  %74 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi %struct.rwlock** [ null, %72 ], [ %74, %73 ]
  %77 = call %struct.TYPE_34__* @pmap_allocpde(%struct.TYPE_35__* %66, i64 %67, %struct.rwlock** %76)
  store %struct.TYPE_34__* %77, %struct.TYPE_34__** %21, align 8
  %78 = icmp eq %struct.TYPE_34__* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @KTR_PMAP, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %83 = call i32 @CTR2(i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %81, %struct.TYPE_35__* %82)
  %84 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %84, i32* %7, align 4
  br label %313

85:                                               ; preds = %75
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @NBPDR, align 8
  %90 = add i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @pmap_pkru_same(%struct.TYPE_35__* %86, i64 %87, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %85
  %95 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %99 = call i64 @pmap_unwire_ptp(%struct.TYPE_35__* %96, i64 %97, %struct.TYPE_34__* %98, %struct.spglist* %14)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @pmap_invalidate_page(%struct.TYPE_35__* %102, i64 %103)
  %105 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %107, i32* %7, align 4
  br label %313

108:                                              ; preds = %85
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PT_X86, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load i32, i32* @X86_PG_PKU_MASK, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %10, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @pmap_pkru_get(%struct.TYPE_35__* %123, i64 %124)
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %118, %112, %108
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %130 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_34__* %129)
  %131 = call i64 @PHYS_TO_DMAP(i32 %130)
  %132 = inttoptr i64 %131 to i32*
  store i32* %132, i32** %16, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @pmap_pde_index(i64 %134)
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32* %136, i32** %16, align 8
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %19, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %229

143:                                              ; preds = %128
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 1
  %148 = zext i1 %147 to i32
  %149 = call i32 @KASSERT(i32 %148, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %143
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @KTR_PMAP, align 4
  %160 = load i64, i64* %9, align 8
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %162 = call i32 @CTR2(i32 %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %160, %struct.TYPE_35__* %161)
  %163 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %163, i32* %7, align 4
  br label %313

164:                                              ; preds = %143
  %165 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @PG_PS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %172 = load i32*, i32** %16, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %175 = call i32 @pmap_remove_pde(%struct.TYPE_35__* %171, i32* %172, i64 %173, %struct.spglist* %14, %struct.rwlock** %174)
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %17, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %170
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %182 = load i64, i64* %9, align 8
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @pmap_invalidate_pde_page(%struct.TYPE_35__* %181, i64 %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %170
  br label %202

186:                                              ; preds = %164
  %187 = call i32 (...) @pmap_delayed_invl_start()
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load i64, i64* @NBPDR, align 8
  %192 = add i64 %190, %191
  %193 = load i32*, i32** %16, align 8
  %194 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %195 = call i64 @pmap_remove_ptes(%struct.TYPE_35__* %188, i64 %189, i64 %192, i32* %193, %struct.spglist* %14, %struct.rwlock** %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %186
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %199 = call i32 @pmap_invalidate_all(%struct.TYPE_35__* %198)
  br label %200

200:                                              ; preds = %197, %186
  %201 = call i32 (...) @pmap_delayed_invl_finish()
  br label %202

202:                                              ; preds = %200, %185
  %203 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  %204 = load i64, i64* %9, align 8
  %205 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %202
  %208 = load i32*, i32** %16, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @PG_FRAME, align 4
  %211 = and i32 %209, %210
  %212 = call %struct.TYPE_34__* @PHYS_TO_VM_PAGE(i32 %211)
  store %struct.TYPE_34__* %212, %struct.TYPE_34__** %20, align 8
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %215 = call i64 @pmap_insert_pt_page(%struct.TYPE_35__* %213, %struct.TYPE_34__* %214, i32 0)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %207
  %218 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %207
  br label %228

220:                                              ; preds = %202
  %221 = load i32*, i32** %16, align 8
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = load i32*, i32** %16, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = call i32 @KASSERT(i32 %224, i8* %226)
  br label %228

228:                                              ; preds = %220, %219
  br label %229

229:                                              ; preds = %228, %128
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @PG_MANAGED, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %284

234:                                              ; preds = %229
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %236 = load i64, i64* %9, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %240 = call i32 @pmap_pv_insert_pde(%struct.TYPE_35__* %235, i64 %236, i32 %237, i32 %238, %struct.rwlock** %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %260, label %242

242:                                              ; preds = %234
  %243 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %245 = load i64, i64* %9, align 8
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %247 = call i64 @pmap_unwire_ptp(%struct.TYPE_35__* %244, i64 %245, %struct.TYPE_34__* %246, %struct.spglist* %14)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %242
  %250 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %251 = load i64, i64* %9, align 8
  %252 = call i32 @pmap_invalidate_page(%struct.TYPE_35__* %250, i64 %251)
  %253 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  br label %254

254:                                              ; preds = %249, %242
  %255 = load i32, i32* @KTR_PMAP, align 4
  %256 = load i64, i64* %9, align 8
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %258 = call i32 @CTR2(i32 %255, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %256, %struct.TYPE_35__* %257)
  %259 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %259, i32* %7, align 4
  br label %313

260:                                              ; preds = %234
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %18, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %283

265:                                              ; preds = %260
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  store %struct.TYPE_34__* %266, %struct.TYPE_34__** %20, align 8
  br label %267

267:                                              ; preds = %279, %265
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %270 = load i64, i64* @NBPDR, align 8
  %271 = load i64, i64* @PAGE_SIZE, align 8
  %272 = udiv i64 %270, %271
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i64 %272
  %274 = icmp ult %struct.TYPE_34__* %268, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %267
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %277 = load i32, i32* @PGA_WRITEABLE, align 4
  %278 = call i32 @vm_page_aflag_set(%struct.TYPE_34__* %276, i32 %277)
  br label %279

279:                                              ; preds = %275
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 1
  store %struct.TYPE_34__* %281, %struct.TYPE_34__** %20, align 8
  br label %267

282:                                              ; preds = %267
  br label %283

283:                                              ; preds = %282, %260
  br label %284

284:                                              ; preds = %283, %229
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @PG_W, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load i64, i64* @NBPDR, align 8
  %291 = load i64, i64* @PAGE_SIZE, align 8
  %292 = udiv i64 %290, %291
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = add i64 %296, %292
  store i64 %297, i64* %295, align 8
  br label %298

298:                                              ; preds = %289, %284
  %299 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %300 = load i64, i64* @NBPDR, align 8
  %301 = load i64, i64* @PAGE_SIZE, align 8
  %302 = udiv i64 %300, %301
  %303 = call i32 @pmap_resident_count_inc(%struct.TYPE_35__* %299, i64 %302)
  %304 = load i32*, i32** %16, align 8
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @pde_store(i32* %304, i32 %305)
  %307 = call i32 @atomic_add_long(i32* @pmap_pde_mappings, i32 1)
  %308 = load i32, i32* @KTR_PMAP, align 4
  %309 = load i64, i64* %9, align 8
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %311 = call i32 @CTR2(i32 %308, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64 %309, %struct.TYPE_35__* %310)
  %312 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %298, %254, %154, %106, %79, %59
  %314 = load i32, i32* %7, align 4
  ret i32 %314
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_global_bit(%struct.TYPE_35__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_35__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_35__*) #1

declare dso_local i32 @pmap_valid_bit(%struct.TYPE_35__*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @pmap_allow_2m_x_page(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @pmap_pde_ept_executable(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i64, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_34__* @pmap_allocpde(%struct.TYPE_35__*, i64, %struct.rwlock**) #1

declare dso_local i32 @pmap_pkru_same(%struct.TYPE_35__*, i64, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @pmap_unwire_ptp(%struct.TYPE_35__*, i64, %struct.TYPE_34__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_35__*, i64) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @pmap_pkru_get(%struct.TYPE_35__*, i64) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_34__*) #1

declare dso_local i64 @pmap_pde_index(i64) #1

declare dso_local i32 @pmap_remove_pde(%struct.TYPE_35__*, i32*, i64, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @pmap_invalidate_pde_page(%struct.TYPE_35__*, i64, i32) #1

declare dso_local i32 @pmap_delayed_invl_start(...) #1

declare dso_local i64 @pmap_remove_ptes(%struct.TYPE_35__*, i64, i64, i32*, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @pmap_invalidate_all(%struct.TYPE_35__*) #1

declare dso_local i32 @pmap_delayed_invl_finish(...) #1

declare dso_local %struct.TYPE_34__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_insert_pt_page(%struct.TYPE_35__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_pv_insert_pde(%struct.TYPE_35__*, i64, i32, i32, %struct.rwlock**) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @pmap_resident_count_inc(%struct.TYPE_35__*, i64) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
