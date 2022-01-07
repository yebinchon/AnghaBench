
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {int oflags; int flags; int md; } ;


 int PG_FICTITIOUS ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int VPO_UNMANAGED ;
 int * pa_to_pvh (int ) ;
 int pmap_pvh_wired_mappings (int *,int) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

int
pmap_page_wired_mappings(vm_page_t m)
{
 int count;

 count = 0;
 if ((m->oflags & VPO_UNMANAGED) != 0)
  return (count);
 rw_wlock(&pvh_global_lock);
 count = pmap_pvh_wired_mappings(&m->md, count);
 if ((m->flags & PG_FICTITIOUS) == 0) {
  count = pmap_pvh_wired_mappings(pa_to_pvh(VM_PAGE_TO_PHYS(m)),
      count);
 }
 rw_wunlock(&pvh_global_lock);
 return (count);
}
