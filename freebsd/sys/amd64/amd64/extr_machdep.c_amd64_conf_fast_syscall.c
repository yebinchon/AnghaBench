
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int64_t ;


 int EFER_SCE ;
 int GCODE_SEL ;
 scalar_t__ GSEL (int ,int ) ;
 int GUCODE32_SEL ;
 scalar_t__ IDTVEC (int ) ;
 int MSR_CSTAR ;
 int MSR_EFER ;
 int MSR_LSTAR ;
 int MSR_SF_MASK ;
 int MSR_STAR ;
 int PSL_AC ;
 int PSL_C ;
 int PSL_D ;
 int PSL_I ;
 int PSL_NT ;
 int PSL_T ;
 int SEL_KPL ;
 int SEL_UPL ;
 int fast_syscall ;
 int fast_syscall32 ;
 int fast_syscall_pti ;
 scalar_t__ pti ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

void
amd64_conf_fast_syscall(void)
{
 uint64_t msr;

 msr = rdmsr(MSR_EFER) | EFER_SCE;
 wrmsr(MSR_EFER, msr);
 wrmsr(MSR_LSTAR, pti ? (u_int64_t)IDTVEC(fast_syscall_pti) :
     (u_int64_t)IDTVEC(fast_syscall));
 wrmsr(MSR_CSTAR, (u_int64_t)IDTVEC(fast_syscall32));
 msr = ((u_int64_t)GSEL(GCODE_SEL, SEL_KPL) << 32) |
     ((u_int64_t)GSEL(GUCODE32_SEL, SEL_UPL) << 48);
 wrmsr(MSR_STAR, msr);
 wrmsr(MSR_SF_MASK, PSL_NT | PSL_T | PSL_I | PSL_C | PSL_D | PSL_AC);
}
