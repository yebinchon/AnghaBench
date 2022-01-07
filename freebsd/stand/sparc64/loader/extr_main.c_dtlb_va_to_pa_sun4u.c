
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;


 int ASI_DTLB_TAG_READ_REG ;
 scalar_t__ CPU_IMPL_SPARC64V ;
 scalar_t__ CPU_IMPL_ULTRASPARCIII ;
 scalar_t__ PSTATE_IE ;
 scalar_t__ TD_PA_CH_MASK ;
 scalar_t__ TD_PA_SF_MASK ;
 scalar_t__ TD_PA_SHIFT ;
 int TLB_DAR_SLOT (int ,scalar_t__) ;
 scalar_t__ TLB_TAR_VA (scalar_t__) ;
 scalar_t__ cpu_impl ;
 scalar_t__ dtlb_get_data_sun4u (int ,scalar_t__) ;
 scalar_t__ dtlb_slot_max ;
 scalar_t__ ldxa (int ,int ) ;
 scalar_t__ rdpr (scalar_t__) ;
 int tlb_locked ;
 int wrpr (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static vm_offset_t
dtlb_va_to_pa_sun4u(vm_offset_t va)
{
 u_long pstate, reg;
 u_int i, tlb;

 pstate = rdpr(pstate);
 wrpr(pstate, pstate & ~PSTATE_IE, 0);
 for (i = 0; i < dtlb_slot_max; i++) {
  reg = ldxa(TLB_DAR_SLOT(tlb_locked, i),
      ASI_DTLB_TAG_READ_REG);
  if (TLB_TAR_VA(reg) != va)
   continue;
  reg = dtlb_get_data_sun4u(tlb_locked, i);
  wrpr(pstate, pstate, 0);
  reg >>= TD_PA_SHIFT;
  if (cpu_impl == CPU_IMPL_SPARC64V ||
      cpu_impl >= CPU_IMPL_ULTRASPARCIII)
   return (reg & TD_PA_CH_MASK);
  return (reg & TD_PA_SF_MASK);
 }
 wrpr(pstate, pstate, 0);
 return (-1);
}
