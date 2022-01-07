
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int pti_obj ;
 int pti_pg_idx ;
 int vm_page_grab (int ,int ,int) ;

__attribute__((used)) static vm_page_t
pmap_pti_alloc_page(void)
{
 vm_page_t m;

 VM_OBJECT_ASSERT_WLOCKED(pti_obj);
 m = vm_page_grab(pti_obj, pti_pg_idx++, VM_ALLOC_NOBUSY |
     VM_ALLOC_WIRED | VM_ALLOC_ZERO);
 return (m);
}
