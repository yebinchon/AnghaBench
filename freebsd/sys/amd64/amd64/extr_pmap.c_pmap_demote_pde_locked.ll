; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_demote_pde_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_demote_pde_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PG_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pmap_demote_pde: oldpde is missing PG_PS and/or PG_V\00", align 1
@PG_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"pmap_demote_pde: a wired mapping is missing PG_A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"pmap_demote_pde: page table page for a wired mapping is missing\00", align 1
@DMAP_MIN_ADDRESS = common dso_local global i64 0, align 8
@DMAP_MAX_ADDRESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"pmap_demote_pde: No saved mpte for va %#lx\00", align 1
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i64 0, align 8
@PG_U = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"pmap_demote_pde: oldpde is missing PG_M\00", align 1
@PG_PTE_PROMOTE = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@workaround_erratum383 = common dso_local global i64 0, align 8
@PG_PS_FRAME = common dso_local global i32 0, align 4
@pmap_pde_demotions = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"pmap_demote_pde: success for va %#lx in pmap %p\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, %struct.rwlock**)* @pmap_demote_pde_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_demote_pde_locked(i32 %0, i32* %1, i64 %2, %struct.rwlock** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rwlock**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.rwlock** %3, %struct.rwlock*** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pmap_accessed_bit(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pmap_global_bit(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pmap_modified_bit(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pmap_rw_bit(i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pmap_valid_bit(i32 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pmap_cache_mask(i32 %34, i32 0)
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pmap_pku_mask_bit(i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MA_OWNED, align 4
  %40 = call i32 @PMAP_LOCK_ASSERT(i32 %38, i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %43 = icmp sge i64 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %23, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @PG_PS, align 4
  %49 = load i32, i32* %19, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @PG_PS, align 4
  %53 = load i32, i32* %19, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @PG_W, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @KASSERT(i32 %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %74 = call i32 @pmap_demote_pde_abort(i32 %69, i64 %70, i32* %71, i32 %72, %struct.rwlock** %73)
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %253

76:                                               ; preds = %4
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.TYPE_5__* @pmap_remove_pt_page(i32 %77, i64 %78)
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %21, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %81 = icmp eq %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %142

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @PG_W, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @KASSERT(i32 %87, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %23, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %82
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @DMAP_MIN_ADDRESS, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @DMAP_MAX_ADDRESS, align 8
  %98 = icmp slt i64 %96, %97
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i1 [ false, %91 ], [ %98, %95 ]
  br label %101

101:                                              ; preds = %99, %82
  %102 = phi i1 [ true, %82 ], [ %100, %99 ]
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %8, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @KASSERT(i32 %103, i8* %105)
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @pmap_pde_pindex(i64 %107)
  %109 = load i32, i32* %23, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  br label %115

113:                                              ; preds = %101
  %114 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %120 = or i32 %118, %119
  %121 = call %struct.TYPE_5__* @vm_page_alloc(i32* null, i32 %108, i32 %120)
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %21, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %123 = icmp eq %struct.TYPE_5__* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load i32, i32* %6, align 4
  %126 = load i64, i64* %8, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %130 = call i32 @pmap_demote_pde_abort(i32 %125, i64 %126, i32* %127, i32 %128, %struct.rwlock** %129)
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %5, align 4
  br label %253

132:                                              ; preds = %115
  %133 = load i32, i32* %23, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* @NPTEPG, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @pmap_resident_count_inc(i32 %139, i32 1)
  br label %141

141:                                              ; preds = %135, %132
  br label %142

142:                                              ; preds = %141, %76
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %144 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_5__* %143)
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = call i64 @PHYS_TO_DMAP(i32 %145)
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** %12, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %16, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @PG_U, align 4
  %155 = and i32 %153, %154
  %156 = or i32 %152, %155
  %157 = load i32, i32* %18, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %19, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %18, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @KASSERT(i32 %168, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @PG_PS, align 4
  %172 = xor i32 %171, -1
  %173 = and i32 %170, %172
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @pmap_swap_pat(i32 %174, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %142
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @pmap_fill_ptp(i32* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %142
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @pmap_demote_pde_check(i32* %186, i32 %187)
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PG_PTE_PROMOTE, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @PG_PTE_PROMOTE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %192, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %185
  %198 = load i32*, i32** %12, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @pmap_fill_ptp(i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %185
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @PG_MANAGED, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* %6, align 4
  %208 = load i64, i64* @NPTEPG, align 8
  %209 = sub nsw i64 %208, 1
  %210 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %211 = call i32 @reserve_pv_entries(i32 %207, i64 %209, %struct.rwlock** %210)
  br label %212

212:                                              ; preds = %206, %201
  %213 = load i64, i64* @workaround_erratum383, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32, i32* %6, align 4
  %217 = load i64, i64* %8, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @pmap_update_pde(i32 %216, i64 %217, i32* %218, i32 %219)
  br label %225

221:                                              ; preds = %212
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @pde_store(i32* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %215
  %226 = load i32, i32* %23, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, i32* %6, align 4
  %230 = load i64, i64* %8, align 8
  %231 = call i64 @vtopte(i64 %230)
  %232 = call i32 @pmap_invalidate_page(i32 %229, i64 %231)
  br label %233

233:                                              ; preds = %228, %225
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @PG_MANAGED, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load i32, i32* %6, align 4
  %240 = load i64, i64* %8, align 8
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @PG_PS_FRAME, align 4
  %243 = and i32 %241, %242
  %244 = load %struct.rwlock**, %struct.rwlock*** %9, align 8
  %245 = call i32 @pmap_pv_demote_pde(i32 %239, i64 %240, i32 %243, %struct.rwlock** %244)
  br label %246

246:                                              ; preds = %238, %233
  %247 = call i32 @atomic_add_long(i32* @pmap_pde_demotions, i32 1)
  %248 = load i32, i32* @KTR_PMAP, align 4
  %249 = load i64, i64* %8, align 8
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @CTR2(i32 %248, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %249, i32 %250)
  %252 = load i32, i32* @TRUE, align 4
  store i32 %252, i32* %5, align 4
  br label %253

253:                                              ; preds = %246, %124, %62
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local i32 @pmap_accessed_bit(i32) #1

declare dso_local i32 @pmap_global_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_cache_mask(i32, i32) #1

declare dso_local i32 @pmap_pku_mask_bit(i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_demote_pde_abort(i32, i64, i32*, i32, %struct.rwlock**) #1

declare dso_local %struct.TYPE_5__* @pmap_remove_pt_page(i32, i64) #1

declare dso_local %struct.TYPE_5__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @pmap_pde_pindex(i64) #1

declare dso_local i32 @pmap_resident_count_inc(i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_5__*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_swap_pat(i32, i32) #1

declare dso_local i32 @pmap_fill_ptp(i32*, i32) #1

declare dso_local i32 @pmap_demote_pde_check(i32*, i32) #1

declare dso_local i32 @reserve_pv_entries(i32, i64, %struct.rwlock**) #1

declare dso_local i32 @pmap_update_pde(i32, i64, i32*, i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i64) #1

declare dso_local i64 @vtopte(i64) #1

declare dso_local i32 @pmap_pv_demote_pde(i32, i64, i32, %struct.rwlock**) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
