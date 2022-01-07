
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int PVF_WRITE ;
 int VPO_UNMANAGED ;
 int pmap_clearbit (TYPE_1__*,int ) ;
 scalar_t__ pmap_page_is_write_mapped (TYPE_1__*) ;
 int vm_page_assert_busied (TYPE_1__*) ;

void
pmap_remove_write(vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_remove_write: page %p is not managed", m));
 vm_page_assert_busied(m);

 if (pmap_page_is_write_mapped(m))
  pmap_clearbit(m, PVF_WRITE);
}
