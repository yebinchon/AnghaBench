
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_9__ {scalar_t__ pm_type; } ;


 int CPUID_STDEXT2_PKU ;
 int ENOMEM ;
 int PMAP_LOCK (TYPE_1__*) ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 scalar_t__ PT_X86 ;
 int cpu_stdext_feature2 ;
 int pmap_pkru_copy (TYPE_1__*,TYPE_1__*) ;
 int pmap_pkru_deassign_all (TYPE_1__*) ;
 int vm_wait (int *) ;

int
pmap_vmspace_copy(pmap_t dst_pmap, pmap_t src_pmap)
{
 int error;

 if (dst_pmap->pm_type != src_pmap->pm_type ||
     dst_pmap->pm_type != PT_X86 ||
     (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) == 0)
  return (0);
 for (;;) {
  if (dst_pmap < src_pmap) {
   PMAP_LOCK(dst_pmap);
   PMAP_LOCK(src_pmap);
  } else {
   PMAP_LOCK(src_pmap);
   PMAP_LOCK(dst_pmap);
  }
  error = pmap_pkru_copy(dst_pmap, src_pmap);

  if (error == ENOMEM)
   pmap_pkru_deassign_all(dst_pmap);
  PMAP_UNLOCK(src_pmap);
  PMAP_UNLOCK(dst_pmap);
  if (error != ENOMEM)
   break;
  vm_wait(((void*)0));
 }
 return (error);
}
