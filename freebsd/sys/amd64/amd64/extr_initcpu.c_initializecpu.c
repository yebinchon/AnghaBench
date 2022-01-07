
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int AMDID_NX ;
 int AMDID_RDTSCP ;
 int CPUID_FXSR ;
 int CPUID_STDEXT2_PKU ;
 int CPUID_STDEXT2_RDPID ;
 int CPUID_STDEXT_FSGSBASE ;
 int CPUID_STDEXT_SMAP ;
 int CPUID_STDEXT_SMEP ;
 int CPUID_XMM ;


 int CR4_FSGSBASE ;
 int CR4_FXSR ;
 int CR4_PKE ;
 int CR4_SMAP ;
 int CR4_SMEP ;
 int CR4_XMM ;
 int EFER_NXE ;
 scalar_t__ IS_BSP () ;
 int MSR_EFER ;
 int MSR_TSC_AUX ;
 int PCPU_GET (int ) ;
 int PG_NX ;
 int amd64_syscall_ret_flush_l1d_recalc () ;
 int amd_feature ;
 int cpu_feature ;
 int cpu_fxsr ;
 int cpu_stdext_feature ;
 int cpu_stdext_feature2 ;
 int cpu_vendor_id ;
 int cpuid ;
 int hw_ibrs_recalculate () ;
 int hw_instruction_sse ;
 int hw_ssb_recalculate (int) ;
 int init_amd () ;
 int init_via () ;
 int load_cr4 (int) ;
 int pg_nx ;
 int rcr4 () ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

void
initializecpu(void)
{
 uint64_t msr;
 uint32_t cr4;

 cr4 = rcr4();
 if ((cpu_feature & CPUID_XMM) && (cpu_feature & CPUID_FXSR)) {
  cr4 |= CR4_FXSR | CR4_XMM;
  cpu_fxsr = hw_instruction_sse = 1;
 }
 if (cpu_stdext_feature & CPUID_STDEXT_FSGSBASE)
  cr4 |= CR4_FSGSBASE;

 if (cpu_stdext_feature2 & CPUID_STDEXT2_PKU)
  cr4 |= CR4_PKE;







 if (!IS_BSP()) {
  if (cpu_stdext_feature & CPUID_STDEXT_SMEP)
   cr4 |= CR4_SMEP;
  if (cpu_stdext_feature & CPUID_STDEXT_SMAP)
   cr4 |= CR4_SMAP;
 }
 load_cr4(cr4);
 if (IS_BSP() && (amd_feature & AMDID_NX) != 0) {
  msr = rdmsr(MSR_EFER) | EFER_NXE;
  wrmsr(MSR_EFER, msr);
  pg_nx = PG_NX;
 }
 hw_ibrs_recalculate();
 hw_ssb_recalculate(0);
 amd64_syscall_ret_flush_l1d_recalc();
 switch (cpu_vendor_id) {
 case 129:
  init_amd();
  break;
 case 128:
  init_via();
  break;
 }

 if ((amd_feature & AMDID_RDTSCP) != 0 ||
     (cpu_stdext_feature2 & CPUID_STDEXT2_RDPID) != 0)
  wrmsr(MSR_TSC_AUX, PCPU_GET(cpuid));
}
