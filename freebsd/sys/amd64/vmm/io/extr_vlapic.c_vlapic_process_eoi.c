
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {scalar_t__ isrvec_stk_top; int vcpuid; int vm; struct LAPIC* apic_page; } ;
struct LAPIC {int isr0; int tmr0; } ;


 int VCPU_CTR0 (int ,int ,char*) ;
 int VCPU_CTR1 (int ,int ,char*,int) ;
 int VLAPIC_CTR_ISR (struct vlapic*,char*) ;
 int VLAPIC_GRATUITOUS_EOI ;
 int fls (int) ;
 int panic (char*,scalar_t__) ;
 int vioapic_process_eoi (int ,int ,int) ;
 int vlapic_update_ppr (struct vlapic*) ;
 int vmm_stat_incr (int ,int ,int ,int) ;

__attribute__((used)) static void
vlapic_process_eoi(struct vlapic *vlapic)
{
 struct LAPIC *lapic = vlapic->apic_page;
 uint32_t *isrptr, *tmrptr;
 int i, idx, bitpos, vector;

 isrptr = &lapic->isr0;
 tmrptr = &lapic->tmr0;

 for (i = 7; i >= 0; i--) {
  idx = i * 4;
  bitpos = fls(isrptr[idx]);
  if (bitpos-- != 0) {
   if (vlapic->isrvec_stk_top <= 0) {
    panic("invalid vlapic isrvec_stk_top %d",
          vlapic->isrvec_stk_top);
   }
   isrptr[idx] &= ~(1 << bitpos);
   vector = i * 32 + bitpos;
   VCPU_CTR1(vlapic->vm, vlapic->vcpuid, "EOI vector %d",
       vector);
   VLAPIC_CTR_ISR(vlapic, "vlapic_process_eoi");
   vlapic->isrvec_stk_top--;
   vlapic_update_ppr(vlapic);
   if ((tmrptr[idx] & (1 << bitpos)) != 0) {
    vioapic_process_eoi(vlapic->vm, vlapic->vcpuid,
        vector);
   }
   return;
  }
 }
 VCPU_CTR0(vlapic->vm, vlapic->vcpuid, "Gratuitous EOI");
 vmm_stat_incr(vlapic->vm, vlapic->vcpuid, VLAPIC_GRATUITOUS_EOI, 1);
}
