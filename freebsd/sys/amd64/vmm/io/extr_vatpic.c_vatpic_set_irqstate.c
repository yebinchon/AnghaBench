
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vatpic {struct atpic* atpic; } ;
struct atpic {int ready; } ;
typedef enum irqstate { ____Placeholder_irqstate } irqstate ;


 int EINVAL ;



 int VATPIC_LOCK (struct vatpic*) ;
 int VATPIC_UNLOCK (struct vatpic*) ;
 int panic (char*,int) ;
 int vatpic_set_pinstate (struct vatpic*,int,int) ;
 struct vatpic* vm_atpic (struct vm*) ;

__attribute__((used)) static int
vatpic_set_irqstate(struct vm *vm, int irq, enum irqstate irqstate)
{
 struct vatpic *vatpic;
 struct atpic *atpic;

 if (irq < 0 || irq > 15)
  return (EINVAL);

 vatpic = vm_atpic(vm);
 atpic = &vatpic->atpic[irq >> 3];

 if (atpic->ready == 0)
  return (0);

 VATPIC_LOCK(vatpic);
 switch (irqstate) {
 case 130:
  vatpic_set_pinstate(vatpic, irq, 1);
  break;
 case 129:
  vatpic_set_pinstate(vatpic, irq, 0);
  break;
 case 128:
  vatpic_set_pinstate(vatpic, irq, 1);
  vatpic_set_pinstate(vatpic, irq, 0);
  break;
 default:
  panic("vatpic_set_irqstate: invalid irqstate %d", irqstate);
 }
 VATPIC_UNLOCK(vatpic);

 return (0);
}
