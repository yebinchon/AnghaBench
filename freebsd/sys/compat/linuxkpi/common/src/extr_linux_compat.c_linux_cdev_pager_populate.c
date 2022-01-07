
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_3__* vm_object_t ;
struct vm_fault {struct vm_area_struct* vma; int * page; scalar_t__ pgoff; int flags; void* virtual_address; } ;
struct vm_area_struct {scalar_t__ vm_private_data; scalar_t__ vm_pfn_count; scalar_t__* vm_pfn_pcount; scalar_t__ vm_pfn_first; TYPE_2__* vm_mm; TYPE_1__* vm_ops; TYPE_3__* vm_obj; } ;
struct TYPE_9__ {scalar_t__ handle; } ;
struct TYPE_8__ {int mmap_sem; } ;
struct TYPE_7__ {int (* fault ) (struct vm_area_struct*,struct vm_fault*) ;} ;


 int FAULT_FLAG_WRITE ;
 scalar_t__ IDX_TO_OFF (scalar_t__) ;
 int MPASS (int) ;
 int PRI_USER ;



 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 int VM_PAGER_AGAIN ;
 int VM_PAGER_BAD ;
 int VM_PAGER_ERROR ;
 int VM_PAGER_OK ;
 int VM_PROT_WRITE ;
 int curthread ;
 int down_write (int *) ;
 int kern_yield (int ) ;
 struct vm_area_struct* linux_cdev_handle_find (scalar_t__) ;
 int linux_set_current (int ) ;
 int stub1 (struct vm_area_struct*,struct vm_fault*) ;
 int stub2 (struct vm_area_struct*,struct vm_fault*) ;
 scalar_t__ unlikely (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int
linux_cdev_pager_populate(vm_object_t vm_obj, vm_pindex_t pidx, int fault_type,
    vm_prot_t max_prot, vm_pindex_t *first, vm_pindex_t *last)
{
 struct vm_area_struct *vmap;
 int err;

 linux_set_current(curthread);


 vmap = linux_cdev_handle_find(vm_obj->handle);
 MPASS(vmap != ((void*)0));
 MPASS(vmap->vm_private_data == vm_obj->handle);

 VM_OBJECT_WUNLOCK(vm_obj);

 down_write(&vmap->vm_mm->mmap_sem);
 if (unlikely(vmap->vm_ops == ((void*)0))) {
  err = 128;
 } else {
  struct vm_fault vmf;


  vmf.virtual_address = (void *)(uintptr_t)IDX_TO_OFF(pidx);
  vmf.flags = (fault_type & VM_PROT_WRITE) ? FAULT_FLAG_WRITE : 0;
  vmf.pgoff = 0;
  vmf.page = ((void*)0);
  vmf.vma = vmap;

  vmap->vm_pfn_count = 0;
  vmap->vm_pfn_pcount = &vmap->vm_pfn_count;
  vmap->vm_obj = vm_obj;

  err = vmap->vm_ops->fault(vmap, &vmf);

  while (vmap->vm_pfn_count == 0 && err == 130) {
   kern_yield(PRI_USER);
   err = vmap->vm_ops->fault(vmap, &vmf);
  }
 }


 switch (err) {
 case 129:
  err = VM_PAGER_AGAIN;
  break;
 case 128:
  err = VM_PAGER_BAD;
  break;
 case 130:






  *first = vmap->vm_pfn_first;
  *last = *first + vmap->vm_pfn_count - 1;
  err = VM_PAGER_OK;
  break;
 default:
  err = VM_PAGER_ERROR;
  break;
 }
 up_write(&vmap->vm_mm->mmap_sem);
 VM_OBJECT_WLOCK(vm_obj);
 return (err);
}
