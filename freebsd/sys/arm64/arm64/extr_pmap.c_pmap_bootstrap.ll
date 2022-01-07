; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_bootstrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32, i64 }

@tcr_el1 = common dso_local global i32 0, align 4
@TCR_A1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pmap_bootstrap: TCR_EL1.A1 != 0\00", align 1
@KERNBASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"pmap_bootstrap %lx %lx %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@L1_SHIFT = common dso_local global i64 0, align 8
@Ln_ADDR_MASK = common dso_local global i64 0, align 8
@kernel_pmap_store = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@INT_MIN = common dso_local global i32 0, align 4
@physmap = common dso_local global i64* null, align 8
@physmap_idx = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"The L2 index is non-zero\00", align 1
@Ln_ENTRIES = common dso_local global i64 0, align 8
@ATTR_DESCR_MASK = common dso_local global i64 0, align 8
@L2_BLOCK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid bootstrap L2 table\00", align 1
@ATTR_MASK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Incorrect PA in L2 table\00", align 1
@L2_SIZE = common dso_local global i64 0, align 8
@L1_SIZE = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@PMAP_MAPDEV_EARLY_SIZE = common dso_local global i64 0, align 8
@DPCPU_SIZE = common dso_local global i64 0, align 8
@msgbufsize = common dso_local global i32 0, align 4
@msgbufp = common dso_local global i8* null, align 8
@preinit_map_va = common dso_local global i8* null, align 8
@PMAP_PREINIT_MAPPING_SIZE = common dso_local global i64 0, align 8
@virtual_avail = common dso_local global i64 0, align 8
@virtual_end = common dso_local global i64 0, align 8
@kernel_vm_end = common dso_local global i64 0, align 8
@EXFLAG_NOALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_bootstrap(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %21 = load i32, i32* @tcr_el1, align 4
  %22 = call i32 @READ_SPECIALREG(i32 %21)
  %23 = load i32, i32* @TCR_A1, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @KERNBASE, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %32, i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* @KERNBASE, align 8
  %38 = load i64, i64* @L1_SHIFT, align 8
  %39 = ashr i64 %37, %38
  %40 = load i64, i64* @Ln_ADDR_MASK, align 8
  %41 = and i64 %39, %40
  %42 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_pmap_store, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %46 = call i32 @PMAP_LOCK_INIT(%struct.TYPE_5__* %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %19, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @INT_MIN, align 4
  %53 = call i32 @COOKIE_FROM(i32 -1, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* @KERNBASE, align 8
  %57 = load i64, i64* %19, align 8
  %58 = sub nsw i64 %56, %57
  store i64 %58, i64* %18, align 8
  %59 = load i64*, i64** @physmap, align 8
  %60 = load i64*, i64** @physmap, align 8
  %61 = call i32 @nitems(i64* %60)
  %62 = call i32 @arm_physmem_avail(i64* %59, i32 %61)
  store i32 %62, i32* @physmap_idx, align 4
  %63 = load i32, i32* @physmap_idx, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* @physmap_idx, align 4
  store i32 0, i32* %20, align 4
  br label %65

65:                                               ; preds = %99, %4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @physmap_idx, align 4
  %68 = mul nsw i32 %67, 2
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load i64*, i64** @physmap, align 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** @physmap, align 8
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %99

84:                                               ; preds = %70
  %85 = load i64*, i64** @physmap, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %18, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i64*, i64** @physmap, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %18, align 8
  br label %98

98:                                               ; preds = %92, %84
  br label %99

99:                                               ; preds = %98, %83
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %20, align 4
  br label %65

102:                                              ; preds = %65
  %103 = load i64, i64* @KERNBASE, align 8
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %103, %104
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = call i8* @roundup2(i64 %106, i64 %107)
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @pmap_bootstrap_dmap(i64 %110, i64 %111, i64 %112)
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* @KERNBASE, align 8
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* @KERNBASE, align 8
  %116 = load i64, i64* %19, align 8
  %117 = sub nsw i64 %115, %116
  store i64 %117, i64* %17, align 8
  store i64 %117, i64* %16, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @KERNBASE, align 8
  %120 = call i64* @pmap_early_page_idx(i64 %118, i64 %119, i64* %9, i64* %10)
  store i64* %120, i64** %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @KASSERT(i32 %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %166, %102
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @Ln_ENTRIES, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %169

129:                                              ; preds = %125
  %130 = load i64*, i64** %11, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ATTR_DESCR_MASK, align 8
  %135 = and i64 %133, %134
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %169

138:                                              ; preds = %129
  %139 = load i64*, i64** %11, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ATTR_DESCR_MASK, align 8
  %144 = and i64 %142, %143
  %145 = load i64, i64* @L2_BLOCK, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @KASSERT(i32 %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i64*, i64** %11, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ATTR_MASK, align 8
  %154 = xor i64 %153, -1
  %155 = and i64 %152, %154
  %156 = load i64, i64* %17, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @KASSERT(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %160 = load i64, i64* @L2_SIZE, align 8
  %161 = load i64, i64* %12, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* @L2_SIZE, align 8
  %164 = load i64, i64* %17, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %17, align 8
  br label %166

166:                                              ; preds = %138
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %125

169:                                              ; preds = %137, %125
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* @L1_SIZE, align 8
  %172 = call i8* @roundup2(i64 %170, i64 %171)
  %173 = ptrtoint i8* %172 to i64
  store i64 %173, i64* %12, align 8
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* %13, align 8
  %177 = call i64 @pmap_bootstrap_l2(i64 %174, i64 %175, i64 %176)
  store i64 %177, i64* %13, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %180 = load i64, i64* @PMAP_MAPDEV_EARLY_SIZE, align 8
  %181 = sub nsw i64 %179, %180
  %182 = load i64, i64* %13, align 8
  %183 = call i64 @pmap_bootstrap_l3(i64 %178, i64 %181, i64 %182)
  store i64 %183, i64* %13, align 8
  %184 = call i32 (...) @cpu_tlb_flushID()
  %185 = load i64, i64* %13, align 8
  store i64 %185, i64* %14, align 8
  %186 = load i64, i64* @DPCPU_SIZE, align 8
  %187 = load i64, i64* @PAGE_SIZE, align 8
  %188 = sdiv i64 %186, %187
  %189 = load i64, i64* @PAGE_SIZE, align 8
  %190 = mul nsw i64 %188, %189
  %191 = load i64, i64* %13, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %13, align 8
  %193 = load i64, i64* %14, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = load i64, i64* @DPCPU_SIZE, align 8
  %196 = load i64, i64* @PAGE_SIZE, align 8
  %197 = sdiv i64 %195, %196
  %198 = load i64, i64* @PAGE_SIZE, align 8
  %199 = mul nsw i64 %197, %198
  call void @llvm.memset.p0i8.i64(i8* align 1 %194, i8 0, i64 %199, i1 false)
  %200 = load i64, i64* %14, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = call i32 @dpcpu_init(i8* %201, i32 0)
  %203 = load i64, i64* %13, align 8
  store i64 %203, i64* %15, align 8
  %204 = load i32, i32* @msgbufsize, align 4
  %205 = call i64 @round_page(i32 %204)
  %206 = load i64, i64* @PAGE_SIZE, align 8
  %207 = sdiv i64 %205, %206
  %208 = load i64, i64* @PAGE_SIZE, align 8
  %209 = mul nsw i64 %207, %208
  %210 = load i64, i64* %13, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %13, align 8
  %212 = load i64, i64* %15, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = load i32, i32* @msgbufsize, align 4
  %215 = call i64 @round_page(i32 %214)
  %216 = load i64, i64* @PAGE_SIZE, align 8
  %217 = sdiv i64 %215, %216
  %218 = load i64, i64* @PAGE_SIZE, align 8
  %219 = mul nsw i64 %217, %218
  call void @llvm.memset.p0i8.i64(i8* align 1 %213, i8 0, i64 %219, i1 false)
  %220 = load i64, i64* %15, align 8
  %221 = inttoptr i64 %220 to i8*
  store i8* %221, i8** @msgbufp, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load i64, i64* @L2_SIZE, align 8
  %224 = call i8* @roundup2(i64 %222, i64 %223)
  store i8* %224, i8** @preinit_map_va, align 8
  %225 = load i8*, i8** @preinit_map_va, align 8
  %226 = load i64, i64* @PMAP_PREINIT_MAPPING_SIZE, align 8
  %227 = getelementptr i8, i8* %225, i64 %226
  %228 = ptrtoint i8* %227 to i64
  store i64 %228, i64* @virtual_avail, align 8
  %229 = load i64, i64* @virtual_avail, align 8
  %230 = load i64, i64* @L1_SIZE, align 8
  %231 = call i8* @roundup2(i64 %229, i64 %230)
  %232 = ptrtoint i8* %231 to i64
  store i64 %232, i64* @virtual_avail, align 8
  %233 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %234 = load i64, i64* @PMAP_MAPDEV_EARLY_SIZE, align 8
  %235 = sub nsw i64 %233, %234
  store i64 %235, i64* @virtual_end, align 8
  %236 = load i64, i64* @virtual_avail, align 8
  store i64 %236, i64* @kernel_vm_end, align 8
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* %13, align 8
  %239 = call i64 @pmap_early_vtophys(i64 %237, i64 %238)
  store i64 %239, i64* %17, align 8
  %240 = load i64, i64* %16, align 8
  %241 = load i64, i64* %17, align 8
  %242 = load i64, i64* %16, align 8
  %243 = sub nsw i64 %241, %242
  %244 = load i32, i32* @EXFLAG_NOALLOC, align 4
  %245 = call i32 @arm_physmem_exclude_region(i64 %240, i64 %243, i32 %244)
  %246 = call i32 (...) @cpu_tlb_flushID()
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @PMAP_LOCK_INIT(%struct.TYPE_5__*) #1

declare dso_local i32 @COOKIE_FROM(i32, i32) #1

declare dso_local i32 @arm_physmem_avail(i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i8* @roundup2(i64, i64) #1

declare dso_local i64 @pmap_bootstrap_dmap(i64, i64, i64) #1

declare dso_local i64* @pmap_early_page_idx(i64, i64, i64*, i64*) #1

declare dso_local i64 @pmap_bootstrap_l2(i64, i64, i64) #1

declare dso_local i64 @pmap_bootstrap_l3(i64, i64, i64) #1

declare dso_local i32 @cpu_tlb_flushID(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dpcpu_init(i8*, i32) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i64 @pmap_early_vtophys(i64, i64) #1

declare dso_local i32 @arm_physmem_exclude_region(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
