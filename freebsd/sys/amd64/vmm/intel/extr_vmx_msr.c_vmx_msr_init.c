
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t IDX_MSR_CSTAR ;
 size_t IDX_MSR_LSTAR ;
 size_t IDX_MSR_SF_MASK ;
 size_t IDX_MSR_STAR ;
 int MSR_CSTAR ;
 int MSR_IA32_MISC_ENABLE ;
 int MSR_LSTAR ;
 int MSR_SF_MASK ;
 int MSR_STAR ;
 void** host_msrs ;
 int misc_enable ;
 scalar_t__ nehalem_cpu () ;
 int platform_info ;
 void* rdmsr (int ) ;
 int tsc_freq ;
 int turbo_ratio_limit ;
 scalar_t__ westmere_cpu () ;

void
vmx_msr_init(void)
{
 uint64_t bus_freq, ratio;
 int i;





 host_msrs[IDX_MSR_LSTAR] = rdmsr(MSR_LSTAR);
 host_msrs[IDX_MSR_CSTAR] = rdmsr(MSR_CSTAR);
 host_msrs[IDX_MSR_STAR] = rdmsr(MSR_STAR);
 host_msrs[IDX_MSR_SF_MASK] = rdmsr(MSR_SF_MASK);




 misc_enable = rdmsr(MSR_IA32_MISC_ENABLE);
 misc_enable |= (1 << 12) | (1 << 11);
 misc_enable &= ~((1 << 18) | (1 << 16));

 if (nehalem_cpu() || westmere_cpu())
  bus_freq = 133330000;
 else
  bus_freq = 100000000;






 ratio = (tsc_freq / bus_freq) & 0xff;
 platform_info = (ratio << 8) | (ratio << 40);
 for (i = 0; i < 8; i++)
  turbo_ratio_limit = (turbo_ratio_limit << 8) | ratio;
}
