
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_object_t ;
typedef int intmax_t ;


 int DRM_DEBUG (char*,int ,int ,int,int *) ;
 int VM_PAGER_FAIL ;

__attribute__((used)) static int
tegra_gem_pager_fault(vm_object_t vm_obj, vm_ooffset_t offset, int prot,
    vm_page_t *mres)
{





 return (VM_PAGER_FAIL);

}
