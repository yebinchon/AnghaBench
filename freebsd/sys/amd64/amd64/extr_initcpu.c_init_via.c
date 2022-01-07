
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int VIA_CPUID_DO_RNG ;
 int VIA_CPUID_HAS_ACE ;
 int VIA_CPUID_HAS_ACE2 ;
 int VIA_CPUID_HAS_PHE ;
 int VIA_CPUID_HAS_PMM ;
 int VIA_CPUID_HAS_RNG ;
 int VIA_HAS_AES ;
 int VIA_HAS_AESCTR ;
 int VIA_HAS_MM ;
 int VIA_HAS_RNG ;
 int VIA_HAS_SHA ;
 int do_cpuid (int,int*) ;
 int rdmsr (int) ;
 int via_feature_rng ;
 int via_feature_xcrypt ;
 int wrmsr (int,int) ;

__attribute__((used)) static void
init_via(void)
{
 u_int regs[4], val;






 do_cpuid(0xc0000000, regs);
 if (regs[0] >= 0xc0000001) {
  do_cpuid(0xc0000001, regs);
  val = regs[3];
 } else
  return;


 if ((val & VIA_CPUID_HAS_RNG) != 0) {
  via_feature_rng = VIA_HAS_RNG;
  wrmsr(0x110B, rdmsr(0x110B) | VIA_CPUID_DO_RNG);
 }


 if ((val & VIA_CPUID_HAS_ACE) != 0)
  via_feature_xcrypt |= VIA_HAS_AES;
 if ((val & VIA_CPUID_HAS_ACE2) != 0)
  via_feature_xcrypt |= VIA_HAS_AESCTR;
 if ((val & VIA_CPUID_HAS_PHE) != 0)
  via_feature_xcrypt |= VIA_HAS_SHA;
 if ((val & VIA_CPUID_HAS_PMM) != 0)
  via_feature_xcrypt |= VIA_HAS_MM;
 if (via_feature_xcrypt != 0)
  wrmsr(0x1107, rdmsr(0x1107) | (1 << 28));
}
