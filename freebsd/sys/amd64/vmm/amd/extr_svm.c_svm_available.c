
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AMDID2_SVM ;
 int MSR_VM_CR ;
 int VM_CR_SVMDIS ;
 int amd_feature2 ;
 int printf (char*) ;
 int rdmsr (int ) ;

__attribute__((used)) static int
svm_available(void)
{
 uint64_t msr;


 if ((amd_feature2 & AMDID2_SVM) == 0) {
  printf("SVM: not available.\n");
  return (0);
 }

 msr = rdmsr(MSR_VM_CR);
 if ((msr & VM_CR_SVMDIS) != 0) {
  printf("SVM: disabled by BIOS.\n");
  return (0);
 }

 return (1);
}
