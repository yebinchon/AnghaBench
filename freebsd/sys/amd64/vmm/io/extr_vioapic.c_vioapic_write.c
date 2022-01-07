
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct vioapic {int id; TYPE_1__* rtbl; int vm; } ;
typedef int cpuset_t ;
struct TYPE_2__ {int reg; int acnt; } ;


 int APIC_ID_MASK ;


 int IOAPIC_REDTBL ;

 int IOART_INTMASK ;
 int IOART_INTMCLR ;
 int IOART_INTPOL ;
 int IOART_REM_IRR ;
 int REDIR_ENTRIES ;
 int RTBL_RO_BITS ;
 int VIOAPIC_CTR1 (struct vioapic*,char*,int) ;
 int VIOAPIC_CTR2 (struct vioapic*,char*,int,int) ;
 int VIOAPIC_LOCK (struct vioapic*) ;
 int VIOAPIC_UNLOCK (struct vioapic*) ;
 int vioapic_send_intr (struct vioapic*,int) ;
 int vioapic_update_tmr ;
 int vm_active_cpus (int ) ;
 int vm_smp_rendezvous (int ,int,int ,int ,int *) ;

__attribute__((used)) static void
vioapic_write(struct vioapic *vioapic, int vcpuid, uint32_t addr, uint32_t data)
{
 uint64_t data64, mask64;
 uint64_t last, changed;
 int regnum, pin, lshift;
 cpuset_t allvcpus;

 regnum = addr & 0xff;
 switch (regnum) {
 case 129:
  vioapic->id = data & APIC_ID_MASK;
  break;
 case 128:
 case 130:

  break;
 default:
  break;
 }


 if (regnum >= IOAPIC_REDTBL &&
     regnum < IOAPIC_REDTBL + REDIR_ENTRIES * 2) {
  pin = (regnum - IOAPIC_REDTBL) / 2;
  if ((regnum - IOAPIC_REDTBL) % 2)
   lshift = 32;
  else
   lshift = 0;

  last = vioapic->rtbl[pin].reg;

  data64 = (uint64_t)data << lshift;
  mask64 = (uint64_t)0xffffffff << lshift;
  vioapic->rtbl[pin].reg &= ~mask64 | RTBL_RO_BITS;
  vioapic->rtbl[pin].reg |= data64 & ~RTBL_RO_BITS;

  VIOAPIC_CTR2(vioapic, "ioapic pin%d: redir table entry %#lx",
      pin, vioapic->rtbl[pin].reg);






  changed = last ^ vioapic->rtbl[pin].reg;
  if (changed & ~(IOART_INTMASK | IOART_INTPOL)) {
   VIOAPIC_CTR1(vioapic, "ioapic pin%d: recalculate "
       "vlapic trigger-mode register", pin);
   VIOAPIC_UNLOCK(vioapic);
   allvcpus = vm_active_cpus(vioapic->vm);
   vm_smp_rendezvous(vioapic->vm, vcpuid, allvcpus,
       vioapic_update_tmr, ((void*)0));
   VIOAPIC_LOCK(vioapic);
  }







  if ((vioapic->rtbl[pin].reg & IOART_INTMASK) == IOART_INTMCLR &&
      (vioapic->rtbl[pin].reg & IOART_REM_IRR) == 0 &&
      (vioapic->rtbl[pin].acnt > 0)) {
   VIOAPIC_CTR2(vioapic, "ioapic pin%d: asserted at rtbl "
       "write, acnt %d", pin, vioapic->rtbl[pin].acnt);
   vioapic_send_intr(vioapic, pin);
  }
 }
}
