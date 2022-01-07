
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int AMD_CPUID_SVM_NP ;
 int AMD_CPUID_SVM_NRIP_SAVE ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int do_cpuid (int,int*) ;
 int nasid ;
 int printf (char*) ;
 int svm_feature ;

__attribute__((used)) static int
check_svm_features(void)
{
 u_int regs[4];


 do_cpuid(0x8000000A, regs);
 svm_feature &= regs[3];





 if (nasid == 0 || nasid > regs[1])
  nasid = regs[1];
 KASSERT(nasid > 1, ("Insufficient ASIDs for guests: %#x", nasid));


 if (!(svm_feature & AMD_CPUID_SVM_NP)) {
  printf("SVM: Nested Paging feature not available.\n");
  return (ENXIO);
 }


 if (!(svm_feature & AMD_CPUID_SVM_NRIP_SAVE)) {
  printf("SVM: NRIP Save feature not available.\n");
  return (ENXIO);
 }

 return (0);
}
