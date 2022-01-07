
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vatpic {int* elc; } ;
typedef enum vm_intr_trigger { ____Placeholder_vm_intr_trigger } vm_intr_trigger ;


 int EINVAL ;
 int LEVEL_TRIGGER ;
 int VATPIC_LOCK (struct vatpic*) ;
 int VATPIC_UNLOCK (struct vatpic*) ;
 struct vatpic* vm_atpic (struct vm*) ;

int
vatpic_set_irq_trigger(struct vm *vm, int irq, enum vm_intr_trigger trigger)
{
 struct vatpic *vatpic;

 if (irq < 0 || irq > 15)
  return (EINVAL);





 if (trigger == LEVEL_TRIGGER) {
  switch (irq) {
  case 0:
  case 1:
  case 2:
  case 8:
  case 13:
   return (EINVAL);
  }
 }

 vatpic = vm_atpic(vm);

 VATPIC_LOCK(vatpic);

 if (trigger == LEVEL_TRIGGER)
  vatpic->elc[irq >> 3] |= 1 << (irq & 0x7);
 else
  vatpic->elc[irq >> 3] &= ~(1 << (irq & 0x7));

 VATPIC_UNLOCK(vatpic);

 return (0);
}
