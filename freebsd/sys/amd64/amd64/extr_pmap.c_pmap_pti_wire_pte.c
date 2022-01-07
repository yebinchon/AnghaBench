
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_3__ {int ref_count; } ;


 int DMAP_TO_PHYS (uintptr_t) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int pti_obj ;

__attribute__((used)) static void
pmap_pti_wire_pte(void *pte)
{
 vm_page_t m;

 VM_OBJECT_ASSERT_WLOCKED(pti_obj);
 m = PHYS_TO_VM_PAGE(DMAP_TO_PHYS((uintptr_t)pte));
 m->ref_count++;
}
