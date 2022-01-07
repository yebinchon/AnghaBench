
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int PVF_REF ;
 int VPO_UNMANAGED ;
 int pmap_clearbit (TYPE_1__*,int ) ;

int
pmap_ts_referenced(vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_ts_referenced: page %p is not managed", m));
 return (pmap_clearbit(m, PVF_REF));
}
