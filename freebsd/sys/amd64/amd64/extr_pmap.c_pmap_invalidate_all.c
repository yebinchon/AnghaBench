
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct invpcid_descr {int pcid; scalar_t__ addr; scalar_t__ pad; } ;
typedef TYPE_2__* pmap_t ;
typedef int d ;
struct TYPE_7__ {scalar_t__ pm_type; int pm_ucr3; int pm_cr3; TYPE_1__* pm_pcids; int pm_eptgen; } ;
struct TYPE_6__ {int pm_pcid; scalar_t__ pm_gen; } ;


 int INVPCID_CTX ;
 int INVPCID_CTXGLOB ;
 int KASSERT (int,char*) ;
 TYPE_2__* PCPU_GET (int ) ;
 int PMAP_NO_CR3 ;
 int PMAP_PCID_USER_PT ;
 scalar_t__ PT_EPT ;
 scalar_t__ PT_RVI ;
 scalar_t__ PT_X86 ;
 int bzero (struct invpcid_descr*,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int curpmap ;
 int invltlb () ;
 int invltlb_glob () ;
 int invpcid (struct invpcid_descr*,int ) ;
 scalar_t__ invpcid_works ;
 TYPE_2__* kernel_pmap ;
 int load_cr3 (int) ;
 scalar_t__ pmap_pcid_enabled ;
 int pmap_pti_pcid_invalidate (int,int) ;

void
pmap_invalidate_all(pmap_t pmap)
{
 struct invpcid_descr d;
 uint64_t kcr3, ucr3;

 if (pmap->pm_type == PT_RVI || pmap->pm_type == PT_EPT) {
  pmap->pm_eptgen++;
  return;
 }
 KASSERT(pmap->pm_type == PT_X86,
     ("pmap_invalidate_all: unknown type %d", pmap->pm_type));

 if (pmap == kernel_pmap) {
  if (pmap_pcid_enabled && invpcid_works) {
   bzero(&d, sizeof(d));
   invpcid(&d, INVPCID_CTXGLOB);
  } else {
   invltlb_glob();
  }
 } else if (pmap == PCPU_GET(curpmap)) {
  if (pmap_pcid_enabled) {
   critical_enter();
   if (invpcid_works) {
    d.pcid = pmap->pm_pcids[0].pm_pcid;
    d.pad = 0;
    d.addr = 0;
    invpcid(&d, INVPCID_CTX);
    if (pmap->pm_ucr3 != PMAP_NO_CR3) {
     d.pcid |= PMAP_PCID_USER_PT;
     invpcid(&d, INVPCID_CTX);
    }
   } else {
    kcr3 = pmap->pm_cr3 | pmap->pm_pcids[0].pm_pcid;
    if (pmap->pm_ucr3 != PMAP_NO_CR3) {
     ucr3 = pmap->pm_ucr3 | pmap->pm_pcids[
         0].pm_pcid | PMAP_PCID_USER_PT;
     pmap_pti_pcid_invalidate(ucr3, kcr3);
    } else
     load_cr3(kcr3);
   }
   critical_exit();
  } else {
   invltlb();
  }
 } else if (pmap_pcid_enabled) {
  pmap->pm_pcids[0].pm_gen = 0;
 }
}
