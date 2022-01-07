
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {int dummy; } ;
struct vatpic {TYPE_1__* atpic; } ;
struct TYPE_2__ {int irq_base; } ;


 int VATPIC_LOCK (struct vatpic*) ;
 int VATPIC_UNLOCK (struct vatpic*) ;
 int vatpic_notify_intr (struct vatpic*) ;
 int vatpic_pin_accepted (TYPE_1__*,int) ;
 struct vatpic* vm_atpic (struct vm*) ;

void
vatpic_intr_accepted(struct vm *vm, int vector)
{
 struct vatpic *vatpic;
 int pin;

 vatpic = vm_atpic(vm);

 VATPIC_LOCK(vatpic);

 pin = vector & 0x7;

 if ((vector & ~0x7) == vatpic->atpic[1].irq_base) {
  vatpic_pin_accepted(&vatpic->atpic[1], pin);




  vatpic_pin_accepted(&vatpic->atpic[0], 2);
 } else {
  vatpic_pin_accepted(&vatpic->atpic[0], pin);
 }

 vatpic_notify_intr(vatpic);

 VATPIC_UNLOCK(vatpic);
}
