
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vlapic {int* isrvec_stk; size_t isrvec_stk_top; TYPE_1__* apic_page; } ;
struct TYPE_2__ {int tpr; int isr0; int ppr; } ;


 scalar_t__ PRIO (int) ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int dump_isrvec_stk (struct vlapic*) ;
 int panic (char*,...) ;

__attribute__((used)) static void
vlapic_update_ppr(struct vlapic *vlapic)
{
 int isrvec, tpr, ppr;







 isrvec = vlapic->isrvec_stk[vlapic->isrvec_stk_top];
 tpr = vlapic->apic_page->tpr;


 {
  int i, lastprio, curprio, vector, idx;
  uint32_t *isrptr;

  if (vlapic->isrvec_stk_top == 0 && isrvec != 0)
   panic("isrvec_stk is corrupted: %d", isrvec);





  lastprio = -1;
  for (i = 1; i <= vlapic->isrvec_stk_top; i++) {
   curprio = PRIO(vlapic->isrvec_stk[i]);
   if (curprio <= lastprio) {
    dump_isrvec_stk(vlapic);
    panic("isrvec_stk does not satisfy invariant");
   }
   lastprio = curprio;
  }





  i = 1;
  isrptr = &vlapic->apic_page->isr0;
  for (vector = 0; vector < 256; vector++) {
   idx = (vector / 32) * 4;
   if (isrptr[idx] & (1 << (vector % 32))) {
    if (i > vlapic->isrvec_stk_top ||
        vlapic->isrvec_stk[i] != vector) {
     dump_isrvec_stk(vlapic);
     panic("ISR and isrvec_stk out of sync");
    }
    i++;
   }
  }
 }


 if (PRIO(tpr) >= PRIO(isrvec))
  ppr = tpr;
 else
  ppr = isrvec & 0xf0;

 vlapic->apic_page->ppr = ppr;
 VLAPIC_CTR1(vlapic, "vlapic_update_ppr 0x%02x", ppr);
}
