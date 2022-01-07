
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_2__* vm_object_t ;
struct vm_area_struct {scalar_t__ vm_private_data; scalar_t__ vm_len; int vm_pfn; int * vm_ops; } ;
struct TYPE_15__ {scalar_t__ handle; int memattr; } ;
struct TYPE_14__ {int flags; int pindex; } ;


 scalar_t__ IDX_TO_OFF (int ) ;
 int MPASS (int) ;
 int PG_FICTITIOUS ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 scalar_t__ likely (int) ;
 struct vm_area_struct* linux_cdev_handle_find (scalar_t__) ;
 int vm_page_free (TYPE_1__*) ;
 TYPE_1__* vm_page_getfake (scalar_t__,int ) ;
 int vm_page_replace_checked (TYPE_1__*,TYPE_2__*,int ,TYPE_1__*) ;
 int vm_page_updatefake (TYPE_1__*,scalar_t__,int ) ;
 int vm_page_valid (TYPE_1__*) ;

__attribute__((used)) static int
linux_cdev_pager_fault(vm_object_t vm_obj, vm_ooffset_t offset, int prot,
    vm_page_t *mres)
{
 struct vm_area_struct *vmap;

 vmap = linux_cdev_handle_find(vm_obj->handle);

 MPASS(vmap != ((void*)0));
 MPASS(vmap->vm_private_data == vm_obj->handle);

 if (likely(vmap->vm_ops != ((void*)0) && offset < vmap->vm_len)) {
  vm_paddr_t paddr = IDX_TO_OFF(vmap->vm_pfn) + offset;
  vm_page_t page;

  if (((*mres)->flags & PG_FICTITIOUS) != 0) {





   page = *mres;
   vm_page_updatefake(page, paddr, vm_obj->memattr);
  } else {





   VM_OBJECT_WUNLOCK(vm_obj);
   page = vm_page_getfake(paddr, vm_obj->memattr);
   VM_OBJECT_WLOCK(vm_obj);

   vm_page_replace_checked(page, vm_obj,
       (*mres)->pindex, *mres);

   vm_page_free(*mres);
   *mres = page;
  }
  vm_page_valid(page);
  return (VM_PAGER_OK);
 }
 return (VM_PAGER_FAIL);
}
