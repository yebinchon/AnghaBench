
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_4__* pmap_t ;
struct TYPE_14__ {TYPE_1__* p_vmspace; } ;
struct TYPE_11__ {int md_efirt_dis_pf; } ;
struct TYPE_13__ {TYPE_3__ td_md; } ;
struct TYPE_12__ {int pm_cr3; TYPE_2__* pm_pcids; } ;
struct TYPE_10__ {int pm_pcid; } ;
struct TYPE_9__ {TYPE_4__ vm_pmap; } ;


 size_t PCPU_GET (int ) ;
 int PCPU_SET (TYPE_4__*,TYPE_4__*) ;
 int cpuid ;
 TYPE_6__* curproc ;
 TYPE_5__* curthread ;
 int invltlb () ;
 int invpcid_works ;
 int load_cr3 (int) ;
 scalar_t__ pmap_pcid_enabled ;
 int vm_fault_enable_pagefaults (int ) ;

void
efi_arch_leave(void)
{
 pmap_t curpmap;

 curpmap = &curproc->p_vmspace->vm_pmap;
 if (pmap_pcid_enabled && !invpcid_works)
  PCPU_SET(curpmap, curpmap);
 load_cr3(curpmap->pm_cr3 | (pmap_pcid_enabled ?
     curpmap->pm_pcids[PCPU_GET(cpuid)].pm_pcid : 0));
 if (!pmap_pcid_enabled)
  invltlb();
 vm_fault_enable_pagefaults(curthread->td_md.md_efirt_dis_pf);
}
