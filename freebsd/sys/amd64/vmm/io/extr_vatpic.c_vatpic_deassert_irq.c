
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int IRQSTATE_DEASSERT ;
 int vatpic_set_irqstate (struct vm*,int,int ) ;

int
vatpic_deassert_irq(struct vm *vm, int irq)
{
 return (vatpic_set_irqstate(vm, irq, IRQSTATE_DEASSERT));
}
