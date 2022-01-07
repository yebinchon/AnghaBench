
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {int dummy; } ;
struct vioapic {TYPE_1__* rtbl; } ;
struct TYPE_2__ {int reg; scalar_t__ acnt; } ;


 int IOART_INTVEC ;
 int IOART_REM_IRR ;
 int KASSERT (int,char*) ;
 int REDIR_ENTRIES ;
 int VIOAPIC_CTR1 (struct vioapic*,char*,int) ;
 int VIOAPIC_CTR2 (struct vioapic*,char*,int,scalar_t__) ;
 int VIOAPIC_LOCK (struct vioapic*) ;
 int VIOAPIC_UNLOCK (struct vioapic*) ;
 int vioapic_send_intr (struct vioapic*,int) ;
 struct vioapic* vm_ioapic (struct vm*) ;

void
vioapic_process_eoi(struct vm *vm, int vcpuid, int vector)
{
 struct vioapic *vioapic;
 int pin;

 KASSERT(vector >= 0 && vector < 256,
     ("vioapic_process_eoi: invalid vector %d", vector));

 vioapic = vm_ioapic(vm);
 VIOAPIC_CTR1(vioapic, "ioapic processing eoi for vector %d", vector);





 VIOAPIC_LOCK(vioapic);
 for (pin = 0; pin < REDIR_ENTRIES; pin++) {
  if ((vioapic->rtbl[pin].reg & IOART_REM_IRR) == 0)
   continue;
  if ((vioapic->rtbl[pin].reg & IOART_INTVEC) != vector)
   continue;
  vioapic->rtbl[pin].reg &= ~IOART_REM_IRR;
  if (vioapic->rtbl[pin].acnt > 0) {
   VIOAPIC_CTR2(vioapic, "ioapic pin%d: asserted at eoi, "
       "acnt %d", pin, vioapic->rtbl[pin].acnt);
   vioapic_send_intr(vioapic, pin);
  }
 }
 VIOAPIC_UNLOCK(vioapic);
}
