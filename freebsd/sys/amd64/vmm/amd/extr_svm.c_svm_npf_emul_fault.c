
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int VMCB_NPF_INFO1_GPA ;
 int VMCB_NPF_INFO1_GPT ;
 int VMCB_NPF_INFO1_ID ;

__attribute__((used)) static bool
svm_npf_emul_fault(uint64_t exitinfo1)
{

 if (exitinfo1 & VMCB_NPF_INFO1_ID) {
  return (0);
 }

 if (exitinfo1 & VMCB_NPF_INFO1_GPT) {
  return (0);
 }

 if ((exitinfo1 & VMCB_NPF_INFO1_GPA) == 0) {
  return (0);
 }

 return (1);
}
