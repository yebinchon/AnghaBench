
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_7__ {scalar_t__ rt_root; } ;
struct TYPE_9__ {int pm_cookie; int pm_stats; TYPE_1__ pm_root; int * pm_l0; int pm_l0_paddr; } ;
struct TYPE_8__ {int flags; } ;


 int COOKIE_FROM (int,int ) ;
 int INT_MAX ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int bzero (int *,int) ;
 int pagezero (int *) ;
 TYPE_2__* vm_page_alloc (int *,int ,int) ;
 int vm_wait (int *) ;

int
pmap_pinit(pmap_t pmap)
{
 vm_page_t l0pt;




 while ((l0pt = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL |
     VM_ALLOC_NOOBJ | VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == ((void*)0))
  vm_wait(((void*)0));

 pmap->pm_l0_paddr = VM_PAGE_TO_PHYS(l0pt);
 pmap->pm_l0 = (pd_entry_t *)PHYS_TO_DMAP(pmap->pm_l0_paddr);

 if ((l0pt->flags & PG_ZERO) == 0)
  pagezero(pmap->pm_l0);

 pmap->pm_root.rt_root = 0;
 bzero(&pmap->pm_stats, sizeof(pmap->pm_stats));
 pmap->pm_cookie = COOKIE_FROM(-1, INT_MAX);

 return (1);
}
