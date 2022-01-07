
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* set_tmr ) (struct vlapic*,int,int) ;} ;
struct vlapic {TYPE_1__ ops; struct LAPIC* apic_page; } ;
struct LAPIC {int tmr0; } ;


 int stub1 (struct vlapic*,int,int) ;

__attribute__((used)) static void
vlapic_set_tmr(struct vlapic *vlapic, int vector, bool level)
{
 struct LAPIC *lapic;
 uint32_t *tmrptr, mask;
 int idx;

 lapic = vlapic->apic_page;
 tmrptr = &lapic->tmr0;
 idx = (vector / 32) * 4;
 mask = 1 << (vector % 32);
 if (level)
  tmrptr[idx] |= mask;
 else
  tmrptr[idx] &= ~mask;

 if (vlapic->ops.set_tmr != ((void*)0))
  (*vlapic->ops.set_tmr)(vlapic, vector, level);
}
