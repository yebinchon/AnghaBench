
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_8__ {int pv_list; } ;
struct TYPE_6__ {int pv_list; } ;
struct TYPE_7__ {int oflags; int flags; TYPE_1__ md; } ;


 int FALSE ;
 int PG_FICTITIOUS ;
 int TAILQ_EMPTY (int *) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VPO_UNMANAGED ;
 TYPE_4__* pa_to_pvh (int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

boolean_t
pmap_page_is_mapped(vm_page_t m)
{
 boolean_t rv;

 if ((m->oflags & VPO_UNMANAGED) != 0)
  return (FALSE);
 rw_wlock(&pvh_global_lock);
 rv = !TAILQ_EMPTY(&m->md.pv_list) ||
     ((m->flags & PG_FICTITIOUS) == 0 &&
     !TAILQ_EMPTY(&pa_to_pvh(VM_PAGE_TO_PHYS(m))->pv_list));
 rw_wunlock(&pvh_global_lock);
 return (rv);
}
