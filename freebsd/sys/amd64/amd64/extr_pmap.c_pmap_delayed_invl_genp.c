
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int u_long ;


 size_t NPV_LIST_LOCKS ;
 int VM_PAGE_TO_PHYS (int ) ;
 size_t pa_index (int ) ;
 int * pv_invl_gen ;

__attribute__((used)) static u_long *
pmap_delayed_invl_genp(vm_page_t m)
{

 return (&pv_invl_gen[pa_index(VM_PAGE_TO_PHYS(m)) % NPV_LIST_LOCKS]);
}
