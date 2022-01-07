
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_4__ {int oflags; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int TRUE ;
 int VPO_UNMANAGED ;
 int pmap_page_test_mappings (TYPE_1__*,int ,int ) ;

boolean_t
pmap_is_referenced(vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_is_referenced: page %p is not managed", m));
 return (pmap_page_test_mappings(m, TRUE, FALSE));
}
