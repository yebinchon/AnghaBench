
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int IRQSTATE_PULSE ;
 int vioapic_set_irqstate (struct vm*,int,int ) ;

int
vioapic_pulse_irq(struct vm *vm, int irq)
{

 return (vioapic_set_irqstate(vm, irq, IRQSTATE_PULSE));
}
