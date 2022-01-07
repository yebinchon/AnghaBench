; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.spglist = type { i32 }

@DMAP_MIN_ADDRESS = common dso_local global i64 0, align 8
@dmaplimit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"not largemap range %#lx %#lx\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid pdp va %#lx pdpe %#lx pdp %#lx\00", align 1
@X86_PG_PS = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@AMDID_PAGE1GB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"no 1G pages, va %#lx pdpe %#lx pdp %#lx\00", align 1
@PDPMASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"PDPMASK bit set, va %#lx pdpe %#lx pdp %#lx\00", align 1
@NBPDP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [76 x i8] c"unmap covers partial 1GB page, sva %#lx va %#lx pdpe %#lx pdp %#lx len %#lx\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"invalid pd va %#lx pde %#lx pd %#lx\00", align 1
@PDRMASK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"PDRMASK bit set, va %#lx pde %#lx pd %#lx\00", align 1
@NBPDR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"unmap covers partial 2MB page, sva %#lx va %#lx pde %#lx pd %#lx len %#lx\00", align 1
@plinks = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"invalid pte va %#lx pte %#lx pt %#lx\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@large_vmem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_large_unmap(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.spglist, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @DMAP_MIN_ADDRESS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @DMAP_MIN_ADDRESS, align 8
  %34 = load i64, i64* @dmaplimit, align 8
  %35 = add nsw i64 %33, %34
  %36 = icmp sle i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %19, %2
  br label %281

38:                                               ; preds = %29, %25
  %39 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @PMAP_ADDRESS_IN_LARGEMAP(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %44, %45
  %47 = sub nsw i64 %46, 1
  %48 = call i64 @PMAP_ADDRESS_IN_LARGEMAP(i64 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %38
  %51 = phi i1 [ false, %38 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %3, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load i64, i64* %4, align 8
  %58 = add nsw i64 %56, %57
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @KASSERT(i32 %52, i8* %59)
  %61 = load i32, i32* @kernel_pmap, align 4
  %62 = call i32 @PMAP_LOCK(i32 %61)
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %263, %50
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = add nsw i64 %66, %67
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %267

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  %72 = call i32* @pmap_large_map_pdpe(i64 %71)
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @X86_PG_V, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %6, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %79, i8* %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @X86_PG_PS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %70
  %92 = load i32, i32* @amd_feature, align 4
  %93 = load i32, i32* @AMDID_PAGE1GB, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %6, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = ptrtoint i32* %98 to i64
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @KASSERT(i32 %96, i8* %102)
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @PDPMASK, align 8
  %106 = and i64 %104, %105
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %6, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = ptrtoint i32* %110 to i64
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @KASSERT(i32 %108, i8* %114)
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @NBPDP, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %4, align 8
  %121 = add nsw i64 %119, %120
  %122 = icmp sle i64 %118, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = ptrtoint i32* %126 to i64
  %128 = load i32, i32* %9, align 4
  %129 = load i64, i64* %4, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @KASSERT(i32 %123, i8* %130)
  %132 = load i32*, i32** %8, align 8
  store i32 0, i32* %132, align 4
  %133 = load i64, i64* @NBPDP, align 8
  store i64 %133, i64* %7, align 8
  br label %263

134:                                              ; preds = %70
  %135 = load i32*, i32** %8, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i32* @pmap_pdpe_to_pde(i32* %135, i64 %136)
  store i32* %137, i32** %10, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @X86_PG_V, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %6, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = ptrtoint i32* %146 to i64
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @KASSERT(i32 %144, i8* %150)
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @X86_PG_PS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %206

156:                                              ; preds = %134
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @PDRMASK, align 8
  %159 = and i64 %157, %158
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %6, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = ptrtoint i32* %163 to i64
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @KASSERT(i32 %161, i8* %167)
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @NBPDR, align 8
  %171 = add nsw i64 %169, %170
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* %4, align 8
  %174 = add nsw i64 %172, %173
  %175 = icmp sle i64 %171, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = ptrtoint i32* %179 to i64
  %181 = load i32, i32* %11, align 4
  %182 = load i64, i64* %4, align 8
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 @KASSERT(i32 %176, i8* %183)
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @pde_store(i32* %185, i32 0)
  %187 = load i64, i64* @NBPDR, align 8
  store i64 %187, i64* %7, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = ptrtoint i32* %188 to i64
  %190 = call i32 @DMAP_TO_PHYS(i64 %189)
  %191 = call %struct.TYPE_7__* @PHYS_TO_VM_PAGE(i32 %190)
  store %struct.TYPE_7__* %191, %struct.TYPE_7__** %13, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, -1
  store i64 %195, i64* %193, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %156
  %201 = load i32*, i32** %8, align 8
  store i32 0, i32* %201, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @plinks, i32 0, i32 0, i32 0), align 4
  %204 = call i32 @SLIST_INSERT_HEAD(%struct.spglist* %14, %struct.TYPE_7__* %202, i32 %203)
  br label %205

205:                                              ; preds = %200, %156
  br label %263

206:                                              ; preds = %134
  %207 = load i32*, i32** %10, align 8
  %208 = load i64, i64* %6, align 8
  %209 = call i32* @pmap_pde_to_pte(i32* %207, i64 %208)
  store i32* %209, i32** %12, align 8
  %210 = load i32*, i32** %12, align 8
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @X86_PG_V, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %6, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = ptrtoint i32* %217 to i64
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = call i32 @KASSERT(i32 %215, i8* %222)
  %224 = load i32*, i32** %12, align 8
  %225 = call i32 @pte_clear(i32* %224)
  %226 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %226, i64* %7, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = ptrtoint i32* %227 to i64
  %229 = call i32 @DMAP_TO_PHYS(i64 %228)
  %230 = call %struct.TYPE_7__* @PHYS_TO_VM_PAGE(i32 %229)
  store %struct.TYPE_7__* %230, %struct.TYPE_7__** %13, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, -1
  store i64 %234, i64* %232, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %262

239:                                              ; preds = %206
  %240 = load i32*, i32** %10, align 8
  store i32 0, i32* %240, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @plinks, i32 0, i32 0, i32 0), align 4
  %243 = call i32 @SLIST_INSERT_HEAD(%struct.spglist* %14, %struct.TYPE_7__* %241, i32 %242)
  %244 = load i32*, i32** %10, align 8
  %245 = ptrtoint i32* %244 to i64
  %246 = call i32 @DMAP_TO_PHYS(i64 %245)
  %247 = call %struct.TYPE_7__* @PHYS_TO_VM_PAGE(i32 %246)
  store %struct.TYPE_7__* %247, %struct.TYPE_7__** %13, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, -1
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %239
  %257 = load i32*, i32** %8, align 8
  store i32 0, i32* %257, align 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @plinks, i32 0, i32 0, i32 0), align 4
  %260 = call i32 @SLIST_INSERT_HEAD(%struct.spglist* %14, %struct.TYPE_7__* %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %239
  br label %262

262:                                              ; preds = %261, %206
  br label %263

263:                                              ; preds = %262, %205, %91
  %264 = load i64, i64* %7, align 8
  %265 = load i64, i64* %6, align 8
  %266 = add nsw i64 %265, %264
  store i64 %266, i64* %6, align 8
  br label %64

267:                                              ; preds = %64
  %268 = load i32, i32* @kernel_pmap, align 4
  %269 = load i64, i64* %5, align 8
  %270 = load i64, i64* %5, align 8
  %271 = load i64, i64* %4, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @pmap_invalidate_range(i32 %268, i64 %269, i64 %272)
  %274 = load i32, i32* @kernel_pmap, align 4
  %275 = call i32 @PMAP_UNLOCK(i32 %274)
  %276 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 0)
  %277 = load i32, i32* @large_vmem, align 4
  %278 = load i64, i64* %5, align 8
  %279 = load i64, i64* %4, align 8
  %280 = call i32 @vmem_free(i32 %277, i64 %278, i64 %279)
  br label %281

281:                                              ; preds = %267, %37
  ret void
}

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PMAP_ADDRESS_IN_LARGEMAP(i64) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_large_map_pdpe(i64) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i64) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.spglist*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i64) #1

declare dso_local i32 @pte_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_range(i32, i64, i64) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @vmem_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
