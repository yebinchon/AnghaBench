
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atpic {int intr_raised; scalar_t__* acnt; int request; int aeoi; int rotate; int lowprio; int service; } ;



__attribute__((used)) static void
vatpic_pin_accepted(struct atpic *atpic, int pin)
{
 atpic->intr_raised = 0;

 if (atpic->acnt[pin] == 0)
  atpic->request &= ~(1 << pin);

 if (atpic->aeoi == 1) {
  if (atpic->rotate == 1)
   atpic->lowprio = pin;
 } else {
  atpic->service |= (1 << pin);
 }
}
