
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* pending_intr ) (struct vlapic*,int*) ;} ;
struct vlapic {TYPE_1__ ops; struct LAPIC* apic_page; } ;
struct LAPIC {int ppr; int irr0; } ;


 scalar_t__ PRIO (int) ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int atomic_load_acq_int (int *) ;
 int fls (int ) ;
 int stub1 (struct vlapic*,int*) ;

int
vlapic_pending_intr(struct vlapic *vlapic, int *vecptr)
{
 struct LAPIC *lapic = vlapic->apic_page;
 int idx, i, bitpos, vector;
 uint32_t *irrptr, val;

 if (vlapic->ops.pending_intr)
  return ((*vlapic->ops.pending_intr)(vlapic, vecptr));

 irrptr = &lapic->irr0;

 for (i = 7; i >= 0; i--) {
  idx = i * 4;
  val = atomic_load_acq_int(&irrptr[idx]);
  bitpos = fls(val);
  if (bitpos != 0) {
   vector = i * 32 + (bitpos - 1);
   if (PRIO(vector) > PRIO(lapic->ppr)) {
    VLAPIC_CTR1(vlapic, "pending intr %d", vector);
    if (vecptr != ((void*)0))
     *vecptr = vector;
    return (1);
   } else
    break;
  }
 }
 return (0);
}
