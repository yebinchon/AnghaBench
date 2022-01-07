
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int pmap_pti_add_kva_locked (int ,int ,int) ;
 int pti ;
 int pti_obj ;

void
pmap_pti_add_kva(vm_offset_t sva, vm_offset_t eva, bool exec)
{

 if (!pti)
  return;
 VM_OBJECT_WLOCK(pti_obj);
 pmap_pti_add_kva_locked(sva, eva, exec);
 VM_OBJECT_WUNLOCK(pti_obj);
}
