
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vm {int dummy; } ;
struct vlapic {int dummy; } ;
struct vioapic {TYPE_1__* rtbl; } ;
struct TYPE_2__ {int reg; } ;


 int APIC_ID_SHIFT ;
 int IOART_DELMOD ;
 int IOART_DESTMOD ;
 int IOART_DESTPHY ;
 int IOART_INTVEC ;
 int IOART_TRGRLVL ;
 int REDIR_ENTRIES ;
 int VIOAPIC_LOCK (struct vioapic*) ;
 int VIOAPIC_UNLOCK (struct vioapic*) ;
 int vlapic_reset_tmr (struct vlapic*) ;
 int vlapic_set_tmr_level (struct vlapic*,int,int,int,int) ;
 struct vioapic* vm_ioapic (struct vm*) ;
 struct vlapic* vm_lapic (struct vm*,int) ;

__attribute__((used)) static void
vioapic_update_tmr(struct vm *vm, int vcpuid, void *arg)
{
 struct vioapic *vioapic;
 struct vlapic *vlapic;
 uint32_t low, high, dest;
 int delmode, pin, vector;
 bool level, phys;

 vlapic = vm_lapic(vm, vcpuid);
 vioapic = vm_ioapic(vm);

 VIOAPIC_LOCK(vioapic);



 vlapic_reset_tmr(vlapic);
 for (pin = 0; pin < REDIR_ENTRIES; pin++) {
  low = vioapic->rtbl[pin].reg;
  high = vioapic->rtbl[pin].reg >> 32;

  level = low & IOART_TRGRLVL ? 1 : 0;
  if (!level)
   continue;







  phys = ((low & IOART_DESTMOD) == IOART_DESTPHY);
  delmode = low & IOART_DELMOD;
  vector = low & IOART_INTVEC;
  dest = high >> APIC_ID_SHIFT;
  vlapic_set_tmr_level(vlapic, dest, phys, delmode, vector);
 }
 VIOAPIC_UNLOCK(vioapic);
}
