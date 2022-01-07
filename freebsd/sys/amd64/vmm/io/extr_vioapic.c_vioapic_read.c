
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vioapic {int id; TYPE_1__* rtbl; } ;
struct TYPE_2__ {int reg; } ;




 int IOAPIC_REDTBL ;

 int MAXREDIRSHIFT ;
 int REDIR_ENTRIES ;

__attribute__((used)) static uint32_t
vioapic_read(struct vioapic *vioapic, int vcpuid, uint32_t addr)
{
 int regnum, pin, rshift;

 regnum = addr & 0xff;
 switch (regnum) {
 case 129:
  return (vioapic->id);
  break;
 case 128:
  return (((REDIR_ENTRIES - 1) << MAXREDIRSHIFT) | 0x11);
  break;
 case 130:
  return (vioapic->id);
  break;
 default:
  break;
 }


 if (regnum >= IOAPIC_REDTBL &&
     regnum < IOAPIC_REDTBL + REDIR_ENTRIES * 2) {
  pin = (regnum - IOAPIC_REDTBL) / 2;
  if ((regnum - IOAPIC_REDTBL) % 2)
   rshift = 32;
  else
   rshift = 0;

  return (vioapic->rtbl[pin].reg >> rshift);
 }

 return (0);
}
