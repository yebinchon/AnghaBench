
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmx {int** guest_msrs; } ;


 size_t IDX_MSR_PAT ;
 int MSR_CSTAR ;
 int MSR_KGSBASE ;
 int MSR_LSTAR ;
 int MSR_SF_MASK ;
 int MSR_STAR ;
 int PAT_UNCACHEABLE ;
 int PAT_UNCACHED ;
 int PAT_VALUE (int,int ) ;
 int PAT_WRITE_BACK ;
 int PAT_WRITE_THROUGH ;
 int guest_msr_rw (struct vmx*,int ) ;

void
vmx_msr_guest_init(struct vmx *vmx, int vcpuid)
{
 uint64_t *guest_msrs;

 guest_msrs = vmx->guest_msrs[vcpuid];





 if (vcpuid == 0) {
  guest_msr_rw(vmx, MSR_LSTAR);
  guest_msr_rw(vmx, MSR_CSTAR);
  guest_msr_rw(vmx, MSR_STAR);
  guest_msr_rw(vmx, MSR_SF_MASK);
  guest_msr_rw(vmx, MSR_KGSBASE);
 }




 guest_msrs[IDX_MSR_PAT] = PAT_VALUE(0, PAT_WRITE_BACK) |
     PAT_VALUE(1, PAT_WRITE_THROUGH) |
     PAT_VALUE(2, PAT_UNCACHED) |
     PAT_VALUE(3, PAT_UNCACHEABLE) |
     PAT_VALUE(4, PAT_WRITE_BACK) |
     PAT_VALUE(5, PAT_WRITE_THROUGH) |
     PAT_VALUE(6, PAT_UNCACHED) |
     PAT_VALUE(7, PAT_UNCACHEABLE);

 return;
}
