
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_memattr_t ;
struct TYPE_5__ {int pat_mode; } ;
struct TYPE_6__ {int flags; TYPE_1__ md; } ;


 int PAGE_SIZE ;
 int PG_FICTITIOUS ;
 int PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int panic (char*) ;
 scalar_t__ pmap_change_attr (int ,int ,int ) ;

void
pmap_page_set_memattr(vm_page_t m, vm_memattr_t ma)
{

 m->md.pat_mode = ma;






 if ((m->flags & PG_FICTITIOUS) == 0 &&
     pmap_change_attr(PHYS_TO_DMAP(VM_PAGE_TO_PHYS(m)), PAGE_SIZE,
     m->md.pat_mode))
  panic("memory attribute change on the direct map failed");
}
