
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int VMCB_NPF_INFO1_ID ;
 int VMCB_NPF_INFO1_W ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;

__attribute__((used)) static int
npf_fault_type(uint64_t exitinfo1)
{

 if (exitinfo1 & VMCB_NPF_INFO1_W)
  return (VM_PROT_WRITE);
 else if (exitinfo1 & VMCB_NPF_INFO1_ID)
  return (VM_PROT_EXECUTE);
 else
  return (VM_PROT_READ);
}
