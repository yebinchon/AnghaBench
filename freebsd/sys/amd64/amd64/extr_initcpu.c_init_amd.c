
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CPUID2_HV ;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 int MSR_LS_CFG ;
 int MSR_NB_CFG1 ;
 int cpu_feature2 ;
 int cpu_id ;
 int hw_lower_amd64_sharedpage ;
 int lower_sharedpage_init ;
 int rdmsr (int) ;
 int wrmsr (int,int) ;

__attribute__((used)) static void
init_amd(void)
{
 uint64_t msr;
 switch (CPUID_TO_FAMILY(cpu_id)) {
 case 0x10:
 case 0x12:
  if ((cpu_feature2 & CPUID2_HV) == 0)
   wrmsr(0xc0011029, rdmsr(0xc0011029) | 1);
  break;
 }






 if (CPUID_TO_FAMILY(cpu_id) == 0x10) {
  if ((cpu_feature2 & CPUID2_HV) == 0) {
   msr = rdmsr(MSR_NB_CFG1);
   msr |= (uint64_t)1 << 54;
   wrmsr(MSR_NB_CFG1, msr);
  }
 }







 if (CPUID_TO_FAMILY(cpu_id) == 0x10) {
  if ((cpu_feature2 & CPUID2_HV) == 0) {
   msr = rdmsr(0xc001102a);
   msr &= ~((uint64_t)1 << 24);
   wrmsr(0xc001102a, msr);
  }
 }







 if (CPUID_TO_FAMILY(cpu_id) == 0x16 && CPUID_TO_MODEL(cpu_id) <= 0xf) {
  if ((cpu_feature2 & CPUID2_HV) == 0) {
   msr = rdmsr(MSR_LS_CFG);
   msr |= (uint64_t)1 << 15;
   wrmsr(MSR_LS_CFG, msr);
  }
 }


 if (CPUID_TO_FAMILY(cpu_id) == 0x17 && CPUID_TO_MODEL(cpu_id) == 0x1 &&
     (cpu_feature2 & CPUID2_HV) == 0) {

  msr = rdmsr(0xc0011029);
  msr |= 0x2000;
  wrmsr(0xc0011029, msr);


  msr = rdmsr(MSR_LS_CFG);
  msr |= 0x10;
  wrmsr(MSR_LS_CFG, msr);


  msr = rdmsr(0xc0011028);
  msr |= 0x10;
  wrmsr(0xc0011028, msr);


  msr = rdmsr(MSR_LS_CFG);
  msr |= 0x200000000000000;
  wrmsr(MSR_LS_CFG, msr);
 }
 if (lower_sharedpage_init == 0) {
  lower_sharedpage_init = 1;
  if (CPUID_TO_FAMILY(cpu_id) == 0x17) {
   hw_lower_amd64_sharedpage = 1;
  }
 }
}
