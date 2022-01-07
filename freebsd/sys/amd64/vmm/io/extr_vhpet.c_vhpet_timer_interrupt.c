
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {int isr; int vm; TYPE_1__* timer; } ;
struct TYPE_2__ {int msireg; } ;


 int VM_CTR1 (int ,char*,int) ;
 int lapic_intr_msi (int ,int,int) ;
 scalar_t__ vhpet_timer_edge_trig (struct vhpet*,int) ;
 int vhpet_timer_interrupt_enabled (struct vhpet*,int) ;
 int vhpet_timer_ioapic_pin (struct vhpet*,int) ;
 scalar_t__ vhpet_timer_msi_enabled (struct vhpet*,int) ;
 int vioapic_assert_irq (int ,int) ;
 int vioapic_pulse_irq (int ,int) ;

__attribute__((used)) static void
vhpet_timer_interrupt(struct vhpet *vhpet, int n)
{
 int pin;


 if (!vhpet_timer_interrupt_enabled(vhpet, n))
  return;




 if ((vhpet->isr & (1 << n)) != 0) {
  VM_CTR1(vhpet->vm, "hpet t%d intr is already asserted", n);
  return;
 }

 if (vhpet_timer_msi_enabled(vhpet, n)) {
  lapic_intr_msi(vhpet->vm, vhpet->timer[n].msireg >> 32,
      vhpet->timer[n].msireg & 0xffffffff);
  return;
 }

 pin = vhpet_timer_ioapic_pin(vhpet, n);
 if (pin == 0) {
  VM_CTR1(vhpet->vm, "hpet t%d intr is not routed to ioapic", n);
  return;
 }

 if (vhpet_timer_edge_trig(vhpet, n)) {
  vioapic_pulse_irq(vhpet->vm, pin);
 } else {
  vhpet->isr |= 1 << n;
  vioapic_assert_irq(vhpet->vm, pin);
 }
}
