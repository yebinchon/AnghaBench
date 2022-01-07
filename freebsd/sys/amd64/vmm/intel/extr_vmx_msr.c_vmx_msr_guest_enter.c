
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmx {int ** guest_msrs; } ;


 size_t IDX_MSR_CSTAR ;
 size_t IDX_MSR_KGSBASE ;
 size_t IDX_MSR_LSTAR ;
 size_t IDX_MSR_SF_MASK ;
 size_t IDX_MSR_STAR ;
 int MSR_CSTAR ;
 int MSR_KGSBASE ;
 int MSR_LSTAR ;
 int MSR_SF_MASK ;
 int MSR_STAR ;
 int curpcb ;
 int update_pcb_bases (int ) ;
 int wrmsr (int ,int ) ;

void
vmx_msr_guest_enter(struct vmx *vmx, int vcpuid)
{
 uint64_t *guest_msrs = vmx->guest_msrs[vcpuid];


 update_pcb_bases(curpcb);
 wrmsr(MSR_LSTAR, guest_msrs[IDX_MSR_LSTAR]);
 wrmsr(MSR_CSTAR, guest_msrs[IDX_MSR_CSTAR]);
 wrmsr(MSR_STAR, guest_msrs[IDX_MSR_STAR]);
 wrmsr(MSR_SF_MASK, guest_msrs[IDX_MSR_SF_MASK]);
 wrmsr(MSR_KGSBASE, guest_msrs[IDX_MSR_KGSBASE]);
}
