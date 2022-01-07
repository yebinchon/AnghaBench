
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vioapic {int dummy; } ;
typedef enum irqstate { ____Placeholder_irqstate } irqstate ;


 int EINVAL ;



 int REDIR_ENTRIES ;
 int VIOAPIC_LOCK (struct vioapic*) ;
 int VIOAPIC_UNLOCK (struct vioapic*) ;
 int panic (char*,int) ;
 int vioapic_set_pinstate (struct vioapic*,int,int) ;
 struct vioapic* vm_ioapic (struct vm*) ;

__attribute__((used)) static int
vioapic_set_irqstate(struct vm *vm, int irq, enum irqstate irqstate)
{
 struct vioapic *vioapic;

 if (irq < 0 || irq >= REDIR_ENTRIES)
  return (EINVAL);

 vioapic = vm_ioapic(vm);

 VIOAPIC_LOCK(vioapic);
 switch (irqstate) {
 case 130:
  vioapic_set_pinstate(vioapic, irq, 1);
  break;
 case 129:
  vioapic_set_pinstate(vioapic, irq, 0);
  break;
 case 128:
  vioapic_set_pinstate(vioapic, irq, 1);
  vioapic_set_pinstate(vioapic, irq, 0);
  break;
 default:
  panic("vioapic_set_irqstate: invalid irqstate %d", irqstate);
 }
 VIOAPIC_UNLOCK(vioapic);

 return (0);
}
