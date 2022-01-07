; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_demote_l2_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_demote_l2_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_demote_l2: Demoting a non-block entry\00", align 1
@L2_OFFSET = common dso_local global i64 0, align 8
@L2_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"pmap_demote_l2: a wired mapping is missing ATTR_AF\00", align 1
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"pmap_demote_l2: failure for va %#lx in pmap %p\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"pmap_demote_l2: page table page for a wired mapping is missing\00", align 1
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"pmap_demote_l2: No saved mpte for va %#lx\00", align 1
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@NL3PG = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@ATTR_AP_RW_BIT = common dso_local global i32 0, align 4
@ATTR_SW_DBM = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"pmap_demote_l2: L2 entry is writeable but not dirty\00", align 1
@ATTR_MASK = common dso_local global i32 0, align 4
@L3_OFFSET = common dso_local global i32 0, align 4
@CACHED_MEMORY = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@Ln_ENTRIES = common dso_local global i64 0, align 8
@L2_TABLE = common dso_local global i32 0, align 4
@pmap_l2_demotions = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"pmap_demote_l2: success for va %#lx in pmap %p %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i64, %struct.rwlock**)* @pmap_demote_l2_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_demote_l2_locked(i32 %0, i32* %1, i64 %2, %struct.rwlock** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rwlock**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.rwlock** %3, %struct.rwlock*** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(i32 %16, i32 %17)
  store i32* null, i32** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @pmap_load(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @L2_BLOCK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @L2_OFFSET, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %8, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %8, align 8
  store i64 0, i64* %13, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = icmp sle i64 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @L2_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32*, i32** %7, align 8
  %41 = ptrtoint i32* %40 to i64
  %42 = icmp sgt i64 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i64 @kva_alloc(i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32* null, i32** %5, align 8
  br label %251

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %36, %4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @ATTR_AF, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ATTR_SW_WIRED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %66 = call i32 @pmap_demote_l2_abort(i32 %62, i64 %63, i32* %64, %struct.rwlock** %65)
  %67 = load i32, i32* @KTR_PMAP, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @CTR2(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %68, i32 %69)
  br label %240

71:                                               ; preds = %50
  %72 = load i32, i32* %6, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call %struct.TYPE_5__* @pmap_remove_pt_page(i32 %72, i64 %73)
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %15, align 8
  %75 = icmp eq %struct.TYPE_5__* %74, null
  br i1 %75, label %76, label %135

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ATTR_SW_WIRED, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @KASSERT(i32 %81, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %76
  %87 = load i64, i64* %8, align 8
  %88 = call i64 @VIRT_IN_DMAP(i64 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %86, %76
  %91 = phi i1 [ true, %76 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %8, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @KASSERT(i32 %92, i8* %94)
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @pmap_l2_pindex(i64 %96)
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @VIRT_IN_DMAP(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  br label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %110 = or i32 %108, %109
  %111 = call %struct.TYPE_5__* @vm_page_alloc(i32* null, i32 %97, i32 %110)
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %15, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %113 = icmp eq %struct.TYPE_5__* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %105
  %115 = load i32, i32* %6, align 4
  %116 = load i64, i64* %8, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %119 = call i32 @pmap_demote_l2_abort(i32 %115, i64 %116, i32* %117, %struct.rwlock** %118)
  %120 = load i32, i32* @KTR_PMAP, align 4
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @CTR2(i32 %120, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %121, i32 %122)
  br label %240

124:                                              ; preds = %105
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* @NL3PG, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @pmap_resident_count_inc(i32 %132, i32 1)
  br label %134

134:                                              ; preds = %128, %124
  br label %135

135:                                              ; preds = %134, %71
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %137 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_5__* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i64 @PHYS_TO_DMAP(i32 %138)
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %10, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = load i32, i32* @L3_PAGE, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %149 = load i32, i32* @ATTR_SW_DBM, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = load i32, i32* @ATTR_AP_RO, align 4
  %153 = call i32 @ATTR_AP(i32 %152)
  %154 = load i32, i32* @ATTR_SW_DBM, align 4
  %155 = or i32 %153, %154
  %156 = icmp ne i32 %151, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @KASSERT(i32 %157, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %135
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ATTR_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @ATTR_MASK, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %163, %135
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @pmap_fill_l3(i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %163
  %178 = load i64, i64* %13, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load i64, i64* %13, align 8
  %182 = load i32, i32* @PAGE_SIZE, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = ptrtoint i32* %183 to i64
  %185 = call i32 @DMAP_TO_PHYS(i64 %184)
  %186 = load i32, i32* @L3_OFFSET, align 4
  %187 = xor i32 %186, -1
  %188 = and i32 %185, %187
  %189 = load i32, i32* @CACHED_MEMORY, align 4
  %190 = call i32 @pmap_kenter(i64 %181, i32 %182, i32 %188, i32 %189)
  %191 = load i64, i64* %13, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = ptrtoint i32* %192 to i64
  %194 = load i64, i64* @PAGE_MASK, align 8
  %195 = and i64 %193, %194
  %196 = add nsw i64 %191, %195
  %197 = inttoptr i64 %196 to i32*
  store i32* %197, i32** %7, align 8
  br label %198

198:                                              ; preds = %180, %177
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i32, i32* %6, align 4
  %205 = load i64, i64* @Ln_ENTRIES, align 8
  %206 = sub nsw i64 %205, 1
  %207 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %208 = call i32 @reserve_pv_entries(i32 %204, i64 %206, %struct.rwlock** %207)
  br label %209

209:                                              ; preds = %203, %198
  %210 = load i32, i32* %6, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @L2_TABLE, align 4
  %214 = or i32 %212, %213
  %215 = load i64, i64* %8, align 8
  %216 = load i32, i32* @PAGE_SIZE, align 4
  %217 = call i32 @pmap_update_entry(i32 %210, i32* %211, i32 %214, i64 %215, i32 %216)
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %209
  %223 = load i32, i32* %6, align 4
  %224 = load i64, i64* %8, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* @ATTR_MASK, align 4
  %227 = xor i32 %226, -1
  %228 = and i32 %225, %227
  %229 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %230 = call i32 @pmap_pv_demote_l2(i32 %223, i64 %224, i32 %228, %struct.rwlock** %229)
  br label %231

231:                                              ; preds = %222, %209
  %232 = call i32 @atomic_add_long(i32* @pmap_l2_demotions, i32 1)
  %233 = load i32, i32* @KTR_PMAP, align 4
  %234 = load i64, i64* %8, align 8
  %235 = load i32, i32* %6, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @CTR3(i32 %233, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %234, i32 %235, i32 %238)
  br label %240

240:                                              ; preds = %231, %114, %55
  %241 = load i64, i64* %13, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load i64, i64* %13, align 8
  %245 = call i32 @pmap_kremove(i64 %244)
  %246 = load i64, i64* %13, align 8
  %247 = load i32, i32* @PAGE_SIZE, align 4
  %248 = call i32 @kva_free(i64 %246, i32 %247)
  br label %249

249:                                              ; preds = %243, %240
  %250 = load i32*, i32** %10, align 8
  store i32* %250, i32** %5, align 8
  br label %251

251:                                              ; preds = %249, %48
  %252 = load i32*, i32** %5, align 8
  ret i32* %252
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @kva_alloc(i32) #1

declare dso_local i32 @pmap_demote_l2_abort(i32, i64, i32*, %struct.rwlock**) #1

declare dso_local i32 @CTR2(i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_5__* @pmap_remove_pt_page(i32, i64) #1

declare dso_local i64 @VIRT_IN_DMAP(i64) #1

declare dso_local %struct.TYPE_5__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @pmap_l2_pindex(i64) #1

declare dso_local i32 @pmap_resident_count_inc(i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_5__*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32 @pmap_fill_l3(i32*, i32) #1

declare dso_local i32 @pmap_kenter(i64, i32, i32, i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

declare dso_local i32 @reserve_pv_entries(i32, i64, %struct.rwlock**) #1

declare dso_local i32 @pmap_update_entry(i32, i32*, i32, i64, i32) #1

declare dso_local i32 @pmap_pv_demote_l2(i32, i64, i32, %struct.rwlock**) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @pmap_kremove(i64) #1

declare dso_local i32 @kva_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
