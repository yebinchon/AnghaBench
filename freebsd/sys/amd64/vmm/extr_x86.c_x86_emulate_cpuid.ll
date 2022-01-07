; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_x86.c_x86_emulate_cpuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_x86.c_x86_emulate_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.xsave_limits = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"cpuid %#x,%#x\00", align 1
@cpu_exthigh = common dso_local global i32 0, align 4
@CPUID_VM_HIGH = common dso_local global i32 0, align 4
@cpu_high = common dso_local global i32 0, align 4
@AMDFEID_CLZERO = common dso_local global i32 0, align 4
@AMDFEID_IRPERF = common dso_local global i32 0, align 4
@AMDFEID_XSAVEERPTR = common dso_local global i32 0, align 4
@AMDID_COREID_SIZE_SHIFT = common dso_local global i32 0, align 4
@AMDID2_SVM = common dso_local global i32 0, align 4
@AMDID2_PCXC = common dso_local global i32 0, align 4
@AMDID2_PNXC = common dso_local global i32 0, align 4
@AMDID2_PTSCEL2I = common dso_local global i32 0, align 4
@AMDID2_IBS = common dso_local global i32 0, align 4
@AMDID2_NODE_ID = common dso_local global i32 0, align 4
@AMDID2_OSVW = common dso_local global i32 0, align 4
@AMDID2_MWAITX = common dso_local global i32 0, align 4
@AMDID_RDTSCP = common dso_local global i32 0, align 4
@tsc_is_invariant = common dso_local global i32 0, align 4
@smp_tsc = common dso_local global i32 0, align 4
@AMDPM_TSC_INVARIANT = common dso_local global i32 0, align 4
@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"x86_emulate_cpuid: error %d fetching x2apic state\00", align 1
@CPUID_LOCAL_APIC_ID = common dso_local global i32 0, align 4
@CPUID_0000_0001_APICID_SHIFT = common dso_local global i32 0, align 4
@CPUID2_VMX = common dso_local global i32 0, align 4
@CPUID2_EST = common dso_local global i32 0, align 4
@CPUID2_TM2 = common dso_local global i32 0, align 4
@CPUID2_SMX = common dso_local global i32 0, align 4
@CPUID2_HV = common dso_local global i32 0, align 4
@X2APIC_DISABLED = common dso_local global i32 0, align 4
@CPUID2_X2APIC = common dso_local global i32 0, align 4
@CPUID2_OSXSAVE = common dso_local global i32 0, align 4
@CPUID2_XSAVE = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"x86_emulate_cpuid: error %d fetching %%cr4\00", align 1
@CR4_XSAVE = common dso_local global i32 0, align 4
@CPUID2_MON = common dso_local global i32 0, align 4
@CPUID2_PDCM = common dso_local global i32 0, align 4
@CPUID2_TSCDLT = common dso_local global i32 0, align 4
@CPUID_ACPI = common dso_local global i32 0, align 4
@CPUID_TM = common dso_local global i32 0, align 4
@CPUID_DS = common dso_local global i32 0, align 4
@CPUID_MCA = common dso_local global i32 0, align 4
@CPUID_MCE = common dso_local global i32 0, align 4
@CPUID_MTRR = common dso_local global i32 0, align 4
@CPUID_HTT_CORES = common dso_local global i32 0, align 4
@CPUID_HTT = common dso_local global i32 0, align 4
@CPUID_STDEXT_FSGSBASE = common dso_local global i32 0, align 4
@CPUID_STDEXT_BMI1 = common dso_local global i32 0, align 4
@CPUID_STDEXT_HLE = common dso_local global i32 0, align 4
@CPUID_STDEXT_AVX2 = common dso_local global i32 0, align 4
@CPUID_STDEXT_BMI2 = common dso_local global i32 0, align 4
@CPUID_STDEXT_ERMS = common dso_local global i32 0, align 4
@CPUID_STDEXT_RTM = common dso_local global i32 0, align 4
@CPUID_STDEXT_AVX512F = common dso_local global i32 0, align 4
@CPUID_STDEXT_RDSEED = common dso_local global i32 0, align 4
@CPUID_STDEXT_AVX512PF = common dso_local global i32 0, align 4
@CPUID_STDEXT_AVX512ER = common dso_local global i32 0, align 4
@CPUID_STDEXT_AVX512CD = common dso_local global i32 0, align 4
@CPUID_STDEXT_SHA = common dso_local global i32 0, align 4
@CPUID_STDEXT3_MD_CLEAR = common dso_local global i32 0, align 4
@VM_CAP_ENABLE_INVPCID = common dso_local global i32 0, align 4
@CPUID_STDEXT_INVPCID = common dso_local global i32 0, align 4
@CPUTPM1_ARAT = common dso_local global i32 0, align 4
@CPUID_TYPE_SMT = common dso_local global i32 0, align 4
@CPUID_TYPE_CORE = common dso_local global i32 0, align 4
@cpuid_leaf_b = common dso_local global i32 0, align 4
@CPUID_EXTSTATE_XSAVEOPT = common dso_local global i32 0, align 4
@bhyve_id = common dso_local global i32 0, align 4
@bhyve_xcpuids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_emulate_cpuid(%struct.vm* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xsave_limits*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %28 = load %struct.vm*, %struct.vm** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @VCPU_CTR2(%struct.vm* %28, i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* @cpu_exthigh, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %6
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp uge i32 %39, -2147483648
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @cpu_exthigh, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @cpu_exthigh, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %73

50:                                               ; preds = %37, %6
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 1073741824
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CPUID_VM_HIGH, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @CPUID_VM_HIGH, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %72

63:                                               ; preds = %50
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @cpu_high, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @cpu_high, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  switch i32 %76, label %685 [
    i32 147, label %77
    i32 145, label %77
    i32 144, label %77
    i32 137, label %77
    i32 135, label %77
    i32 134, label %77
    i32 133, label %77
    i32 132, label %77
    i32 130, label %84
    i32 136, label %127
    i32 131, label %179
    i32 129, label %195
    i32 128, label %238
    i32 146, label %266
    i32 143, label %421
    i32 141, label %474
    i32 142, label %539
    i32 140, label %545
    i32 139, label %550
    i32 138, label %607
    i32 1073741824, label %671
  ]

77:                                               ; preds = %73, %73, %73, %73, %73, %73, %73, %73
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %83 = call i32 @cpuid_count(i32 %79, i32 %81, i32* %82)
  br label %694

84:                                               ; preds = %73
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %90 = call i32 @cpuid_count(i32 %86, i32 %88, i32* %89)
  %91 = call i32 (...) @vmm_is_amd()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %84
  %94 = load i32, i32* @AMDFEID_CLZERO, align 4
  %95 = load i32, i32* @AMDFEID_IRPERF, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @AMDFEID_XSAVEERPTR, align 4
  %98 = or i32 %96, %97
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load %struct.vm*, %struct.vm** %7, align 8
  %103 = call i32 @vm_get_topology(%struct.vm* %102, i32* %26, i32* %24, i32* %27, i32* %25)
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %24, align 4
  %106 = mul nsw i32 %104, %105
  %107 = call i32 @log2(i32 %106)
  %108 = call i8* @MIN(i32 15, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  store i32 0, i32* %18, align 4
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %24, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = call i8* @MIN(i32 255, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @AMDID_COREID_SIZE_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %22, align 4
  %124 = or i32 %122, %123
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %124, i32* %125, align 8
  br label %126

126:                                              ; preds = %113, %84
  br label %694

127:                                              ; preds = %73
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %133 = call i32 @cpuid_count(i32 %129, i32 %131, i32* %132)
  %134 = load i32, i32* @AMDID2_SVM, align 4
  %135 = xor i32 %134, -1
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %135
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @AMDID2_PCXC, align 4
  %140 = xor i32 %139, -1
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %140
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @AMDID2_PNXC, align 4
  %145 = xor i32 %144, -1
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %145
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @AMDID2_PTSCEL2I, align 4
  %150 = xor i32 %149, -1
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %150
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* @AMDID2_IBS, align 4
  %155 = xor i32 %154, -1
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %155
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @AMDID2_NODE_ID, align 4
  %160 = xor i32 %159, -1
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %160
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @AMDID2_OSVW, align 4
  %165 = xor i32 %164, -1
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %165
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* @AMDID2_MWAITX, align 4
  %170 = xor i32 %169, -1
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %170
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @AMDID_RDTSCP, align 4
  %175 = xor i32 %174, -1
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %175
  store i32 %178, i32* %176, align 4
  br label %694

179:                                              ; preds = %73
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %180, align 16
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %182, align 8
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %183, align 4
  %184 = load i32, i32* @tsc_is_invariant, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load i32, i32* @smp_tsc, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* @AMDPM_TSC_INVARIANT, align 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %190
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %189, %186, %179
  br label %694

195:                                              ; preds = %73
  %196 = call i32 (...) @vmm_is_amd()
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %686

199:                                              ; preds = %195
  %200 = load %struct.vm*, %struct.vm** %7, align 8
  %201 = call i32 @vm_get_topology(%struct.vm* %200, i32* %26, i32* %24, i32* %27, i32* %25)
  %202 = load i32*, i32** %11, align 8
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %212 [
    i32 0, label %204
    i32 1, label %206
    i32 2, label %208
  ]

204:                                              ; preds = %199
  %205 = load i32, i32* %27, align 4
  store i32 %205, i32* %22, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %20, align 4
  br label %213

206:                                              ; preds = %199
  %207 = load i32, i32* %27, align 4
  store i32 %207, i32* %22, align 4
  store i32 2, i32* %17, align 4
  store i32 3, i32* %20, align 4
  br label %213

208:                                              ; preds = %199
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %24, align 4
  %211 = mul nsw i32 %209, %210
  store i32 %211, i32* %22, align 4
  store i32 3, i32* %17, align 4
  store i32 3, i32* %20, align 4
  br label %213

212:                                              ; preds = %199
  store i32 0, i32* %22, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %213

213:                                              ; preds = %212, %208, %206, %204
  %214 = load i32, i32* %22, align 4
  %215 = sub i32 %214, 1
  %216 = call i8* @MIN(i32 4095, i32 %215)
  %217 = ptrtoint i8* %216 to i32
  store i32 %217, i32* %22, align 4
  %218 = load i32, i32* %22, align 4
  %219 = shl i32 %218, 14
  %220 = or i32 %219, 256
  %221 = load i32, i32* %17, align 4
  %222 = shl i32 %221, 5
  %223 = or i32 %220, %222
  %224 = load i32, i32* %20, align 4
  %225 = or i32 %223, %224
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %225, i32* %226, align 16
  %227 = load i32, i32* %20, align 4
  %228 = icmp ugt i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %213
  %230 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %231 = sub nsw i32 %230, 1
  br label %233

232:                                              ; preds = %213
  br label %233

233:                                              ; preds = %232, %229
  %234 = phi i32 [ %231, %229 ], [ 0, %232 ]
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 %234, i32* %235, align 4
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %236, align 8
  %237 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %237, align 4
  br label %694

238:                                              ; preds = %73
  %239 = call i32 (...) @vmm_is_amd()
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* @cpu_id, align 4
  %243 = call i32 @CPUID_TO_FAMILY(i32 %242)
  %244 = icmp slt i32 %243, 22
  br i1 %244, label %245, label %246

245:                                              ; preds = %241, %238
  br label %686

246:                                              ; preds = %241
  %247 = load %struct.vm*, %struct.vm** %7, align 8
  %248 = call i32 @vm_get_topology(%struct.vm* %247, i32* %26, i32* %24, i32* %27, i32* %25)
  %249 = load i32, i32* %8, align 4
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %249, i32* %250, align 16
  %251 = load i32, i32* %27, align 4
  %252 = sub nsw i32 %251, 1
  %253 = call i8* @MIN(i32 255, i32 %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %27, align 4
  %255 = load i32, i32* %27, align 4
  %256 = shl i32 %255, 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %27, align 4
  %259 = add nsw i32 %258, 1
  %260 = call i32 @log2(i32 %259)
  %261 = ashr i32 %257, %260
  %262 = or i32 %256, %261
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 %262, i32* %263, align 4
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %264, align 8
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %265, align 4
  br label %694

266:                                              ; preds = %73
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %268 = call i32 @do_cpuid(i32 1, i32* %267)
  %269 = load %struct.vm*, %struct.vm** %7, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @vm_get_x2apic_state(%struct.vm* %269, i32 %270, i32* %23)
  store i32 %271, i32* %15, align 4
  %272 = load i32, i32* %15, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = load i32, i32* %15, align 4
  %276 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %274, %266
  %278 = load i32, i32* @CPUID_LOCAL_APIC_ID, align 4
  %279 = xor i32 %278, -1
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %279
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @CPUID_0000_0001_APICID_SHIFT, align 4
  %285 = shl i32 %283, %284
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %285
  store i32 %288, i32* %286, align 4
  %289 = load i32, i32* @CPUID2_VMX, align 4
  %290 = load i32, i32* @CPUID2_EST, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @CPUID2_TM2, align 4
  %293 = or i32 %291, %292
  %294 = xor i32 %293, -1
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, %294
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* @CPUID2_SMX, align 4
  %299 = xor i32 %298, -1
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, %299
  store i32 %302, i32* %300, align 8
  %303 = load i32, i32* @CPUID2_HV, align 4
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %303
  store i32 %306, i32* %304, align 8
  %307 = load i32, i32* %23, align 4
  %308 = load i32, i32* @X2APIC_DISABLED, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %277
  %311 = load i32, i32* @CPUID2_X2APIC, align 4
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %311
  store i32 %314, i32* %312, align 8
  br label %321

315:                                              ; preds = %277
  %316 = load i32, i32* @CPUID2_X2APIC, align 4
  %317 = xor i32 %316, -1
  %318 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %319 = load i32, i32* %318, align 8
  %320 = and i32 %319, %317
  store i32 %320, i32* %318, align 8
  br label %321

321:                                              ; preds = %315, %310
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @CPUID2_OSXSAVE, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %321
  %328 = load i32, i32* @CPUID2_XSAVE, align 4
  %329 = xor i32 %328, -1
  %330 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %331 = load i32, i32* %330, align 8
  %332 = and i32 %331, %329
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %327, %321
  %334 = load i32, i32* @CPUID2_OSXSAVE, align 4
  %335 = xor i32 %334, -1
  %336 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %335
  store i32 %338, i32* %336, align 8
  %339 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @CPUID2_XSAVE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %365

344:                                              ; preds = %333
  %345 = load %struct.vm*, %struct.vm** %7, align 8
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  %348 = call i32 @vm_get_register(%struct.vm* %345, i32 %346, i32 %347, i32* %14)
  store i32 %348, i32* %15, align 4
  %349 = load i32, i32* %15, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %344
  %352 = load i32, i32* %15, align 4
  %353 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %351, %344
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* @CR4_XSAVE, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %354
  %360 = load i32, i32* @CPUID2_OSXSAVE, align 4
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %362 = load i32, i32* %361, align 8
  %363 = or i32 %362, %360
  store i32 %363, i32* %361, align 8
  br label %364

364:                                              ; preds = %359, %354
  br label %365

365:                                              ; preds = %364, %333
  %366 = load i32, i32* @CPUID2_MON, align 4
  %367 = xor i32 %366, -1
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %369 = load i32, i32* %368, align 8
  %370 = and i32 %369, %367
  store i32 %370, i32* %368, align 8
  %371 = load i32, i32* @CPUID2_PDCM, align 4
  %372 = xor i32 %371, -1
  %373 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, %372
  store i32 %375, i32* %373, align 8
  %376 = load i32, i32* @CPUID2_TSCDLT, align 4
  %377 = xor i32 %376, -1
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %379, %377
  store i32 %380, i32* %378, align 8
  %381 = load i32, i32* @CPUID_ACPI, align 4
  %382 = load i32, i32* @CPUID_TM, align 4
  %383 = or i32 %381, %382
  %384 = xor i32 %383, -1
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, %384
  store i32 %387, i32* %385, align 4
  %388 = load i32, i32* @CPUID_DS, align 4
  %389 = xor i32 %388, -1
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, %389
  store i32 %392, i32* %390, align 4
  %393 = load i32, i32* @CPUID_MCA, align 4
  %394 = load i32, i32* @CPUID_MCE, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @CPUID_MTRR, align 4
  %397 = or i32 %395, %396
  %398 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %397
  store i32 %400, i32* %398, align 4
  %401 = load %struct.vm*, %struct.vm** %7, align 8
  %402 = call i32 @vm_get_topology(%struct.vm* %401, i32* %26, i32* %24, i32* %27, i32* %25)
  %403 = load i32, i32* %27, align 4
  %404 = load i32, i32* %24, align 4
  %405 = mul nsw i32 %403, %404
  store i32 %405, i32* %22, align 4
  %406 = load i32, i32* @CPUID_HTT_CORES, align 4
  %407 = xor i32 %406, -1
  %408 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %409 = load i32, i32* %408, align 4
  %410 = and i32 %409, %407
  store i32 %410, i32* %408, align 4
  %411 = load i32, i32* %22, align 4
  %412 = and i32 %411, 255
  %413 = shl i32 %412, 16
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %415 = load i32, i32* %414, align 4
  %416 = or i32 %415, %413
  store i32 %416, i32* %414, align 4
  %417 = load i32, i32* @CPUID_HTT, align 4
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %419 = load i32, i32* %418, align 4
  %420 = or i32 %419, %417
  store i32 %420, i32* %418, align 4
  br label %694

421:                                              ; preds = %73
  %422 = load i32*, i32** %9, align 8
  %423 = load i32, i32* %422, align 4
  %424 = load i32*, i32** %11, align 8
  %425 = load i32, i32* %424, align 4
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %427 = call i32 @cpuid_count(i32 %423, i32 %425, i32* %426)
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %429 = load i32, i32* %428, align 16
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %443, label %431

431:                                              ; preds = %421
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %433 = load i32, i32* %432, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %443, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %443, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %473

443:                                              ; preds = %439, %435, %431, %421
  %444 = load %struct.vm*, %struct.vm** %7, align 8
  %445 = call i32 @vm_get_topology(%struct.vm* %444, i32* %26, i32* %24, i32* %27, i32* %25)
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %447 = load i32, i32* %446, align 16
  %448 = and i32 %447, 1023
  store i32 %448, i32* %446, align 16
  %449 = load i32, i32* %24, align 4
  %450 = sub nsw i32 %449, 1
  %451 = shl i32 %450, 26
  %452 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %453 = load i32, i32* %452, align 16
  %454 = or i32 %453, %451
  store i32 %454, i32* %452, align 16
  %455 = load i32, i32* %27, align 4
  store i32 %455, i32* %22, align 4
  %456 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %457 = load i32, i32* %456, align 16
  %458 = lshr i32 %457, 5
  %459 = and i32 %458, 7
  store i32 %459, i32* %17, align 4
  %460 = load i32, i32* %17, align 4
  %461 = icmp sge i32 %460, 3
  br i1 %461, label %462, label %466

462:                                              ; preds = %443
  %463 = load i32, i32* %24, align 4
  %464 = load i32, i32* %22, align 4
  %465 = mul i32 %464, %463
  store i32 %465, i32* %22, align 4
  br label %466

466:                                              ; preds = %462, %443
  %467 = load i32, i32* %22, align 4
  %468 = sub i32 %467, 1
  %469 = shl i32 %468, 14
  %470 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %471 = load i32, i32* %470, align 16
  %472 = or i32 %471, %469
  store i32 %472, i32* %470, align 16
  br label %473

473:                                              ; preds = %466, %439
  br label %694

474:                                              ; preds = %73
  %475 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %475, align 16
  %476 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %476, align 4
  %477 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %477, align 8
  %478 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %478, align 4
  %479 = load i32*, i32** %11, align 8
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %538

482:                                              ; preds = %474
  %483 = load i32*, i32** %9, align 8
  %484 = load i32, i32* %483, align 4
  %485 = load i32*, i32** %11, align 8
  %486 = load i32, i32* %485, align 4
  %487 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %488 = call i32 @cpuid_count(i32 %484, i32 %486, i32* %487)
  %489 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %489, align 16
  %490 = load i32, i32* @CPUID_STDEXT_FSGSBASE, align 4
  %491 = load i32, i32* @CPUID_STDEXT_BMI1, align 4
  %492 = or i32 %490, %491
  %493 = load i32, i32* @CPUID_STDEXT_HLE, align 4
  %494 = or i32 %492, %493
  %495 = load i32, i32* @CPUID_STDEXT_AVX2, align 4
  %496 = or i32 %494, %495
  %497 = load i32, i32* @CPUID_STDEXT_BMI2, align 4
  %498 = or i32 %496, %497
  %499 = load i32, i32* @CPUID_STDEXT_ERMS, align 4
  %500 = or i32 %498, %499
  %501 = load i32, i32* @CPUID_STDEXT_RTM, align 4
  %502 = or i32 %500, %501
  %503 = load i32, i32* @CPUID_STDEXT_AVX512F, align 4
  %504 = or i32 %502, %503
  %505 = load i32, i32* @CPUID_STDEXT_RDSEED, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* @CPUID_STDEXT_AVX512PF, align 4
  %508 = or i32 %506, %507
  %509 = load i32, i32* @CPUID_STDEXT_AVX512ER, align 4
  %510 = or i32 %508, %509
  %511 = load i32, i32* @CPUID_STDEXT_AVX512CD, align 4
  %512 = or i32 %510, %511
  %513 = load i32, i32* @CPUID_STDEXT_SHA, align 4
  %514 = or i32 %512, %513
  %515 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %516 = load i32, i32* %515, align 4
  %517 = and i32 %516, %514
  store i32 %517, i32* %515, align 4
  %518 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %518, align 8
  %519 = load i32, i32* @CPUID_STDEXT3_MD_CLEAR, align 4
  %520 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %521 = load i32, i32* %520, align 4
  %522 = and i32 %521, %519
  store i32 %522, i32* %520, align 4
  %523 = load %struct.vm*, %struct.vm** %7, align 8
  %524 = load i32, i32* %8, align 4
  %525 = load i32, i32* @VM_CAP_ENABLE_INVPCID, align 4
  %526 = call i32 @vm_get_capability(%struct.vm* %523, i32 %524, i32 %525, i32* %16)
  store i32 %526, i32* %15, align 4
  %527 = load i32, i32* %15, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %482
  %530 = load i32, i32* %16, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %529
  %533 = load i32, i32* @CPUID_STDEXT_INVPCID, align 4
  %534 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %535 = load i32, i32* %534, align 4
  %536 = or i32 %535, %533
  store i32 %536, i32* %534, align 4
  br label %537

537:                                              ; preds = %532, %529, %482
  br label %538

538:                                              ; preds = %537, %474
  br label %694

539:                                              ; preds = %73
  %540 = load i32, i32* @CPUTPM1_ARAT, align 4
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %540, i32* %541, align 16
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %542, align 4
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %543, align 8
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %544, align 4
  br label %694

545:                                              ; preds = %73
  %546 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %546, align 16
  %547 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %547, align 4
  %548 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %548, align 8
  %549 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %549, align 4
  br label %694

550:                                              ; preds = %73
  %551 = call i32 (...) @vmm_is_intel()
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %601

553:                                              ; preds = %550
  %554 = load %struct.vm*, %struct.vm** %7, align 8
  %555 = call i32 @vm_get_topology(%struct.vm* %554, i32* %26, i32* %24, i32* %27, i32* %25)
  %556 = load i32*, i32** %11, align 8
  %557 = load i32, i32* %556, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %565

559:                                              ; preds = %553
  %560 = load i32, i32* %27, align 4
  store i32 %560, i32* %22, align 4
  %561 = load i32, i32* %22, align 4
  %562 = call i32 @log2(i32 %561)
  store i32 %562, i32* %18, align 4
  %563 = load i32, i32* @CPUID_TYPE_SMT, align 4
  store i32 %563, i32* %17, align 4
  %564 = load i32, i32* %8, align 4
  store i32 %564, i32* %19, align 4
  br label %565

565:                                              ; preds = %559, %553
  %566 = load i32*, i32** %11, align 8
  %567 = load i32, i32* %566, align 4
  %568 = icmp eq i32 %567, 1
  br i1 %568, label %569, label %577

569:                                              ; preds = %565
  %570 = load i32, i32* %27, align 4
  %571 = load i32, i32* %24, align 4
  %572 = mul nsw i32 %570, %571
  store i32 %572, i32* %22, align 4
  %573 = load i32, i32* %22, align 4
  %574 = call i32 @log2(i32 %573)
  store i32 %574, i32* %18, align 4
  %575 = load i32, i32* @CPUID_TYPE_CORE, align 4
  store i32 %575, i32* %17, align 4
  %576 = load i32, i32* %8, align 4
  store i32 %576, i32* %19, align 4
  br label %577

577:                                              ; preds = %569, %565
  %578 = load i32, i32* @cpuid_leaf_b, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %584

580:                                              ; preds = %577
  %581 = load i32*, i32** %11, align 8
  %582 = load i32, i32* %581, align 4
  %583 = icmp sge i32 %582, 2
  br i1 %583, label %584, label %585

584:                                              ; preds = %580, %577
  store i32 0, i32* %18, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %585

585:                                              ; preds = %584, %580
  %586 = load i32, i32* %18, align 4
  %587 = and i32 %586, 31
  %588 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %587, i32* %588, align 16
  %589 = load i32, i32* %22, align 4
  %590 = and i32 %589, 65535
  %591 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 %590, i32* %591, align 4
  %592 = load i32, i32* %17, align 4
  %593 = shl i32 %592, 8
  %594 = load i32*, i32** %11, align 8
  %595 = load i32, i32* %594, align 4
  %596 = and i32 %595, 255
  %597 = or i32 %593, %596
  %598 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %597, i32* %598, align 8
  %599 = load i32, i32* %19, align 4
  %600 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 %599, i32* %600, align 4
  br label %606

601:                                              ; preds = %550
  %602 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %602, align 16
  %603 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %603, align 4
  %604 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %604, align 8
  %605 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %605, align 4
  br label %606

606:                                              ; preds = %601, %585
  br label %694

607:                                              ; preds = %73
  %608 = call %struct.xsave_limits* (...) @vmm_get_xsave_limits()
  store %struct.xsave_limits* %608, %struct.xsave_limits** %13, align 8
  %609 = load %struct.xsave_limits*, %struct.xsave_limits** %13, align 8
  %610 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %618, label %613

613:                                              ; preds = %607
  %614 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %614, align 16
  %615 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %615, align 4
  %616 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %616, align 8
  %617 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %617, align 4
  br label %694

618:                                              ; preds = %607
  %619 = load i32*, i32** %9, align 8
  %620 = load i32, i32* %619, align 4
  %621 = load i32*, i32** %11, align 8
  %622 = load i32, i32* %621, align 4
  %623 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %624 = call i32 @cpuid_count(i32 %620, i32 %622, i32* %623)
  %625 = load i32*, i32** %11, align 8
  %626 = load i32, i32* %625, align 4
  switch i32 %626, label %653 [
    i32 0, label %627
    i32 1, label %645
  ]

627:                                              ; preds = %618
  %628 = load %struct.xsave_limits*, %struct.xsave_limits** %13, align 8
  %629 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %632 = load i32, i32* %631, align 16
  %633 = and i32 %632, %630
  store i32 %633, i32* %631, align 16
  %634 = load %struct.xsave_limits*, %struct.xsave_limits** %13, align 8
  %635 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %636, i32* %637, align 8
  %638 = load %struct.xsave_limits*, %struct.xsave_limits** %13, align 8
  %639 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = lshr i32 %640, 32
  %642 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %643 = load i32, i32* %642, align 4
  %644 = and i32 %643, %641
  store i32 %644, i32* %642, align 4
  br label %670

645:                                              ; preds = %618
  %646 = load i32, i32* @CPUID_EXTSTATE_XSAVEOPT, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %648 = load i32, i32* %647, align 16
  %649 = and i32 %648, %646
  store i32 %649, i32* %647, align 16
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %650, align 4
  %651 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %651, align 8
  %652 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %652, align 4
  br label %670

653:                                              ; preds = %618
  %654 = load %struct.xsave_limits*, %struct.xsave_limits** %13, align 8
  %655 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 4
  %657 = zext i32 %656 to i64
  %658 = load i32*, i32** %11, align 8
  %659 = load i32, i32* %658, align 4
  %660 = zext i32 %659 to i64
  %661 = shl i64 1, %660
  %662 = and i64 %657, %661
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %669, label %664

664:                                              ; preds = %653
  %665 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %665, align 16
  %666 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %666, align 4
  %667 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %667, align 8
  %668 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 0, i32* %668, align 4
  br label %669

669:                                              ; preds = %664, %653
  br label %670

670:                                              ; preds = %669, %645, %627
  br label %694

671:                                              ; preds = %73
  %672 = load i32, i32* @CPUID_VM_HIGH, align 4
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %672, i32* %673, align 16
  %674 = load i32, i32* @bhyve_id, align 4
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %676 = call i32 @bcopy(i32 %674, i32* %675, i32 4)
  %677 = load i32, i32* @bhyve_id, align 4
  %678 = add nsw i32 %677, 4
  %679 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %680 = call i32 @bcopy(i32 %678, i32* %679, i32 4)
  %681 = load i32, i32* @bhyve_id, align 4
  %682 = add nsw i32 %681, 8
  %683 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %684 = call i32 @bcopy(i32 %682, i32* %683, i32 4)
  br label %694

685:                                              ; preds = %73
  br label %686

686:                                              ; preds = %685, %245, %198
  %687 = call i32 @atomic_add_long(i32* @bhyve_xcpuids, i32 1)
  %688 = load i32*, i32** %9, align 8
  %689 = load i32, i32* %688, align 4
  %690 = load i32*, i32** %11, align 8
  %691 = load i32, i32* %690, align 4
  %692 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %693 = call i32 @cpuid_count(i32 %689, i32 %691, i32* %692)
  br label %694

694:                                              ; preds = %686, %671, %670, %613, %606, %545, %539, %538, %473, %365, %246, %233, %194, %127, %126, %77
  %695 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %696 = load i32, i32* %695, align 16
  %697 = load i32*, i32** %9, align 8
  store i32 %696, i32* %697, align 4
  %698 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %699 = load i32, i32* %698, align 4
  %700 = load i32*, i32** %10, align 8
  store i32 %699, i32* %700, align 4
  %701 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %702 = load i32, i32* %701, align 8
  %703 = load i32*, i32** %11, align 8
  store i32 %702, i32* %703, align 4
  %704 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %705 = load i32, i32* %704, align 4
  %706 = load i32*, i32** %12, align 8
  store i32 %705, i32* %706, align 4
  ret i32 1
}

declare dso_local i32 @VCPU_CTR2(%struct.vm*, i32, i8*, i32, i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

declare dso_local i32 @vmm_is_amd(...) #1

declare dso_local i32 @vm_get_topology(%struct.vm*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @log2(i32) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @vm_get_x2apic_state(%struct.vm*, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vm_get_register(%struct.vm*, i32, i32, i32*) #1

declare dso_local i32 @vm_get_capability(%struct.vm*, i32, i32, i32*) #1

declare dso_local i32 @vmm_is_intel(...) #1

declare dso_local %struct.xsave_limits* @vmm_get_xsave_limits(...) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
