
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int ldr; } ;


 int APIC_LDR_RESERVED ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int ) ;
 scalar_t__ x2apic (struct vlapic*) ;
 int x2apic_ldr (struct vlapic*) ;

void
vlapic_ldr_write_handler(struct vlapic *vlapic)
{
 struct LAPIC *lapic;

 lapic = vlapic->apic_page;


 if (x2apic(vlapic)) {
  VLAPIC_CTR1(vlapic, "ignoring write to LDR in x2apic mode: %#x",
      lapic->ldr);
  lapic->ldr = x2apic_ldr(vlapic);
 } else {
  lapic->ldr &= ~APIC_LDR_RESERVED;
  VLAPIC_CTR1(vlapic, "vlapic LDR set to %#x", lapic->ldr);
 }
}
