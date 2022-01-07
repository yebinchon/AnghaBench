
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int IA32_ARCH_CAP_IF_PSCHANGE_MC_NO ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int cpu_ia32_arch_caps ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int pmap_allow_2m_x_ept ;

void
pmap_allow_2m_x_ept_recalculate(void)
{




 if (!(cpu_vendor_id != CPU_VENDOR_INTEL ||
     (cpu_ia32_arch_caps & IA32_ARCH_CAP_IF_PSCHANGE_MC_NO) != 0 ||
     (CPUID_TO_FAMILY(cpu_id) == 0x6 &&
     (CPUID_TO_MODEL(cpu_id) == 0x26 ||
     CPUID_TO_MODEL(cpu_id) == 0x27 ||
     CPUID_TO_MODEL(cpu_id) == 0x35 ||
     CPUID_TO_MODEL(cpu_id) == 0x36 ||
     CPUID_TO_MODEL(cpu_id) == 0x37 ||
     CPUID_TO_MODEL(cpu_id) == 0x86 ||
     CPUID_TO_MODEL(cpu_id) == 0x1c ||
     CPUID_TO_MODEL(cpu_id) == 0x4a ||
     CPUID_TO_MODEL(cpu_id) == 0x4c ||
     CPUID_TO_MODEL(cpu_id) == 0x4d ||
     CPUID_TO_MODEL(cpu_id) == 0x5a ||
     CPUID_TO_MODEL(cpu_id) == 0x5c ||
     CPUID_TO_MODEL(cpu_id) == 0x5d ||
     CPUID_TO_MODEL(cpu_id) == 0x5f ||
     CPUID_TO_MODEL(cpu_id) == 0x6e ||
     CPUID_TO_MODEL(cpu_id) == 0x7a ||
     CPUID_TO_MODEL(cpu_id) == 0x57 ||
     CPUID_TO_MODEL(cpu_id) == 0x85))))
  pmap_allow_2m_x_ept = 1;
 TUNABLE_INT_FETCH("hw.allow_2m_x_ept", &pmap_allow_2m_x_ept);
}
