
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xsave_enabled; int xcr0_allowed; int xsave_max_size; } ;


 int CR0_TS ;
 int CR4_PGE ;
 int CR4_XSAVE ;
 int MSR_EFER ;
 int MSR_PAT ;
 int XFEATURE_AVX ;
 int XFEATURE_AVX512 ;
 int XFEATURE_MPX ;
 int cpuid_count (int,int,int*) ;
 int rcr0 () ;
 int rcr4 () ;
 void* rdmsr (int ) ;
 int rxcr (int ) ;
 int vmm_host_cr0 ;
 int vmm_host_cr4 ;
 void* vmm_host_efer ;
 void* vmm_host_pat ;
 int vmm_host_xcr0 ;
 TYPE_1__ vmm_xsave_limits ;

void
vmm_host_state_init(void)
{
 int regs[4];

 vmm_host_efer = rdmsr(MSR_EFER);
 vmm_host_pat = rdmsr(MSR_PAT);
 vmm_host_cr0 = rcr0() | CR0_TS;
 vmm_host_cr4 = rcr4() | CR4_PGE;
 if (vmm_host_cr4 & CR4_XSAVE) {
  vmm_xsave_limits.xsave_enabled = 1;
  vmm_host_xcr0 = rxcr(0);
  vmm_xsave_limits.xcr0_allowed = vmm_host_xcr0 &
      (XFEATURE_AVX | XFEATURE_MPX | XFEATURE_AVX512);

  cpuid_count(0xd, 0x0, regs);
  vmm_xsave_limits.xsave_max_size = regs[1];
 }
}
