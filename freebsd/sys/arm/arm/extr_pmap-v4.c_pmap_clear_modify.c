
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_7__ {int pvh_attrs; } ;
struct TYPE_8__ {int oflags; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int PVF_MOD ;
 int VPO_UNMANAGED ;
 int pmap_clearbit (TYPE_2__*,int) ;
 int pmap_page_is_write_mapped (TYPE_2__*) ;
 int vm_page_assert_busied (TYPE_2__*) ;

void
pmap_clear_modify(vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_clear_modify: page %p is not managed", m));
 vm_page_assert_busied(m);

 if (!pmap_page_is_write_mapped(m))
  return;
 if (m->md.pvh_attrs & PVF_MOD)
  pmap_clearbit(m, PVF_MOD);
}
