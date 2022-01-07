; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.pmap_preinit_mapping = type { i64, i64, i64, i32 }

@bootverbose = common dso_local global i64 0, align 8
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hw.skz63_enable\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SKZ63: skipping 4M RAM starting at physical 1G\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"page at %#lx already used\0A\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_14__* null, align 8
@nkpt = common dso_local global i32 0, align 4
@KPTphys = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@vm_page_array = common dso_local global %struct.TYPE_12__* null, align 8
@vm_page_array_size = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"pmap_init: page table page is out of range\00", align 1
@KERNBASE = common dso_local global i32 0, align 4
@PDRSHIFT = common dso_local global i64 0, align 8
@KERNend = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"pmap_init: pmap_insert_pt_page failed\00", align 1
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_SS = common dso_local global i32 0, align 4
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_SSSE3 = common dso_local global i32 0, align 4
@CPUID2_SSE41 = common dso_local global i32 0, align 4
@CPUID2_AESNI = common dso_local global i32 0, align 4
@CPUID2_AVX = common dso_local global i32 0, align 4
@CPUID2_XSAVE = common dso_local global i32 0, align 4
@amd_feature2 = common dso_local global i32 0, align 4
@AMDID2_XOP = common dso_local global i32 0, align 4
@AMDID2_FMA4 = common dso_local global i32 0, align 4
@workaround_erratum383 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"vm.pmap.pg_ps_enabled\00", align 1
@pg_ps_enabled = common dso_local global i32 0, align 4
@MAXPAGESIZES = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"pmap_init: can't assign to pagesizes[1]\00", align 1
@NBPDR = common dso_local global i64 0, align 8
@PMAP_MEMDOM = common dso_local global i32 0, align 4
@pv_chunks = common dso_local global %struct.TYPE_13__* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"pmap pv chunk list\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@pmap_initialized = common dso_local global i32 0, align 4
@PMAP_PREINIT_MAPPING_COUNT = common dso_local global i32 0, align 4
@pmap_preinit_mapping = common dso_local global %struct.pmap_preinit_mapping* null, align 8
@dmaplimit = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"PPIM %u: PA=%#lx, VA=%#lx, size=%#lx, mode=%#x\0A\00", align 1
@qframe_mtx = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"qfrmlk\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@qframe = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"qframe allocation failed\00", align 1
@lm_ents = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"vm.pmap.large_map_pml4_entries\00", align 1
@LMEPML4I = common dso_local global i32 0, align 4
@LMSPML4I = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"pmap: large map %u PML4 slots (%lu GB)\0A\00", align 1
@NBPML4 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@LARGEMAP_MIN_ADDRESS = common dso_local global i32 0, align 4
@large_vmem = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"pmap: cannot create large map\0A\00", align 1
@X86_PG_V = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = alloca %struct.pmap_preinit_mapping*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i64, i64* @bootverbose, align 8
  %9 = call i32 @vm_page_blacklist_add(i64 0, i64 %8)
  %10 = load i64, i64* @vm_guest, align 8
  %11 = load i64, i64* @VM_GUEST_NO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %0
  %14 = load i64, i64* @cpu_vendor_id, align 8
  %15 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = load i32, i32* @cpu_id, align 4
  %19 = call i32 @CPUID_TO_FAMILY(i32 %18)
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i32, i32* @cpu_id, align 4
  %23 = call i32 @CPUID_TO_MODEL(i32 %22)
  %24 = icmp eq i32 %23, 85
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  %26 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load i64, i64* @bootverbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @atop(i32 4194304)
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @ptoa(i32 %40)
  %42 = add nsw i64 1073741824, %41
  %43 = load i64, i64* @FALSE, align 8
  %44 = call i32 @vm_page_blacklist_add(i64 %42, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @ptoa(i32 %51)
  %53 = add nsw i64 1073741824, %52
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %47, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %35

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %60, %21, %17, %13, %0
  %62 = call i32 (...) @pmap_allow_2m_x_ept_recalculate()
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kernel_pmap, align 8
  %64 = call i32 @PMAP_LOCK(%struct.TYPE_14__* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %122, %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @nkpt, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %65
  %70 = load i64, i64* @KPTphys, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = call %struct.TYPE_12__* @PHYS_TO_VM_PAGE(i64 %75)
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %3, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vm_page_array, align 8
  %79 = icmp uge %struct.TYPE_12__* %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vm_page_array, align 8
  %83 = load i64, i64* @vm_page_array_size, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %83
  %85 = icmp ult %struct.TYPE_12__* %81, %84
  br label %86

86:                                               ; preds = %80, %69
  %87 = phi i1 [ false, %69 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @KASSERT(i32 %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @KERNBASE, align 4
  %91 = call i64 @pmap_pde_pindex(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @KPTphys, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i64, i64* @PDRSHIFT, align 8
  %109 = trunc i64 %108 to i32
  %110 = shl i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @KERNend, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %86
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kernel_pmap, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = call i64 @pmap_insert_pt_page(%struct.TYPE_14__* %115, %struct.TYPE_12__* %116, i32 0)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114, %86
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %65

125:                                              ; preds = %65
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kernel_pmap, align 8
  %127 = call i32 @PMAP_UNLOCK(%struct.TYPE_14__* %126)
  %128 = load i32, i32* @nkpt, align 4
  %129 = call i32 @vm_wire_add(i32 %128)
  %130 = load i64, i64* @vm_guest, align 8
  %131 = load i64, i64* @VM_GUEST_NO, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %125
  %134 = load i32, i32* @cpu_feature, align 4
  %135 = load i32, i32* @CPUID_SS, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load i32, i32* @cpu_feature2, align 4
  %140 = load i32, i32* @CPUID2_SSSE3, align 4
  %141 = load i32, i32* @CPUID2_SSE41, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @CPUID2_AESNI, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @CPUID2_AVX, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @CPUID2_XSAVE, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %139, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %138
  %152 = load i32, i32* @amd_feature2, align 4
  %153 = load i32, i32* @AMDID2_XOP, align 4
  %154 = load i32, i32* @AMDID2_FMA4, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  store i32 1, i32* @workaround_erratum383, align 4
  br label %159

159:                                              ; preds = %158, %151, %138, %133, %125
  %160 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* @pg_ps_enabled)
  %161 = load i32, i32* @pg_ps_enabled, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i32, i32* @MAXPAGESIZES, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i64*, i64** @pagesizes, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br label %171

171:                                              ; preds = %166, %163
  %172 = phi i1 [ false, %163 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @KASSERT(i32 %173, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i64, i64* @NBPDR, align 8
  %176 = load i64*, i64** @pagesizes, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %171, %159
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %197, %178
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @PMAP_MEMDOM, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pv_chunks, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load i32, i32* @MTX_DEF, align 4
  %190 = call i32 @mtx_init(i32* %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %189)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pv_chunks, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = call i32 @TAILQ_INIT(i32* %195)
  br label %197

197:                                              ; preds = %183
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %179

200:                                              ; preds = %179
  %201 = call i32 (...) @pmap_init_pv_table()
  store i32 1, i32* @pmap_initialized, align 4
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %263, %200
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @PMAP_PREINIT_MAPPING_COUNT, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %266

206:                                              ; preds = %202
  %207 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** @pmap_preinit_mapping, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %207, i64 %209
  store %struct.pmap_preinit_mapping* %210, %struct.pmap_preinit_mapping** %1, align 8
  %211 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %212 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %263

216:                                              ; preds = %206
  %217 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %218 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @dmaplimit, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %216
  %223 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %224 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %227 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %225, %228
  %230 = load i64, i64* @dmaplimit, align 8
  %231 = icmp sle i64 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %222
  %233 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %234 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @PHYS_TO_DMAP(i64 %235)
  %237 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %238 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %241 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @pmap_change_attr(i32 %236, i64 %239, i32 %242)
  br label %244

244:                                              ; preds = %232, %222, %216
  %245 = load i64, i64* @bootverbose, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %244
  br label %263

248:                                              ; preds = %244
  %249 = load i32, i32* %5, align 4
  %250 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %251 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %254 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %257 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %1, align 8
  %260 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %249, i64 %252, i64 %255, i64 %258, i32 %261)
  br label %263

263:                                              ; preds = %248, %247, %215
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %202

266:                                              ; preds = %202
  %267 = load i32, i32* @MTX_SPIN, align 4
  %268 = call i32 @mtx_init(i32* @qframe_mtx, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %267)
  %269 = load i32, i32* @kernel_arena, align 4
  %270 = load i32, i32* @PAGE_SIZE, align 4
  %271 = load i32, i32* @M_BESTFIT, align 4
  %272 = load i32, i32* @M_WAITOK, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @vmem_alloc(i32 %269, i32 %270, i32 %273, i32* @qframe)
  store i32 %274, i32* %4, align 4
  %275 = load i32, i32* %4, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %266
  %278 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %266
  store i32 8, i32* @lm_ents, align 4
  %280 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32* @lm_ents)
  %281 = load i32, i32* @lm_ents, align 4
  %282 = load i32, i32* @LMEPML4I, align 4
  %283 = load i32, i32* @LMSPML4I, align 4
  %284 = sub nsw i32 %282, %283
  %285 = add nsw i32 %284, 1
  %286 = icmp sgt i32 %281, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %279
  %288 = load i32, i32* @LMEPML4I, align 4
  %289 = load i32, i32* @LMSPML4I, align 4
  %290 = sub nsw i32 %288, %289
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* @lm_ents, align 4
  br label %292

292:                                              ; preds = %287, %279
  %293 = load i64, i64* @bootverbose, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load i32, i32* @lm_ents, align 4
  %297 = load i32, i32* @lm_ents, align 4
  %298 = load i32, i32* @NBPML4, align 4
  %299 = sdiv i32 %298, 1024
  %300 = sdiv i32 %299, 1024
  %301 = sdiv i32 %300, 1024
  %302 = mul nsw i32 %297, %301
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %296, i32 %302)
  br label %304

304:                                              ; preds = %295, %292
  %305 = load i32, i32* @lm_ents, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %350

307:                                              ; preds = %304
  %308 = load i32, i32* @LARGEMAP_MIN_ADDRESS, align 4
  %309 = load i32, i32* @lm_ents, align 4
  %310 = load i32, i32* @NBPML4, align 4
  %311 = mul nsw i32 %309, %310
  %312 = load i32, i32* @PAGE_SIZE, align 4
  %313 = load i32, i32* @M_WAITOK, align 4
  %314 = call i32* @vmem_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %308, i32 %311, i32 %312, i32 0, i32 %313)
  store i32* %314, i32** @large_vmem, align 8
  %315 = load i32*, i32** @large_vmem, align 8
  %316 = icmp eq i32* %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %307
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* @lm_ents, align 4
  br label %319

319:                                              ; preds = %317, %307
  store i32 0, i32* %5, align 4
  br label %320

320:                                              ; preds = %346, %319
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @lm_ents, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %349

324:                                              ; preds = %320
  %325 = call %struct.TYPE_12__* (...) @pmap_large_map_getptp_unlocked()
  store %struct.TYPE_12__* %325, %struct.TYPE_12__** %2, align 8
  %326 = load i32, i32* @X86_PG_V, align 4
  %327 = load i32, i32* @X86_PG_RW, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @X86_PG_A, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @X86_PG_M, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @pg_nx, align 4
  %334 = or i32 %332, %333
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %336 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_12__* %335)
  %337 = or i32 %334, %336
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kernel_pmap, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* @LMSPML4I, align 4
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  store i32 %337, i32* %345, align 4
  br label %346

346:                                              ; preds = %324
  %347 = load i32, i32* %5, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %5, align 4
  br label %320

349:                                              ; preds = %320
  br label %350

350:                                              ; preds = %349, %304
  ret void
}

declare dso_local i32 @vm_page_blacklist_add(i64, i64) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @pmap_allow_2m_x_ept_recalculate(...) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pmap_pde_pindex(i32) #1

declare dso_local i64 @pmap_insert_pt_page(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_wire_add(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @pmap_init_pv_table(...) #1

declare dso_local i32 @pmap_change_attr(i32, i64, i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i32*) #1

declare dso_local i32* @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @pmap_large_map_getptp_unlocked(...) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
