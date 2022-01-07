
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_operations_struct {int (* close ) (struct vm_area_struct*) ;} ;
struct vm_area_struct {TYPE_1__* vm_mm; struct vm_operations_struct* vm_ops; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int MPASS (int ) ;
 int down_write (int *) ;
 scalar_t__ likely (int ) ;
 struct vm_area_struct* linux_cdev_handle_find (void*) ;
 int linux_cdev_handle_free (struct vm_area_struct*) ;
 int linux_cdev_handle_remove (struct vm_area_struct*) ;
 int stub1 (struct vm_area_struct*) ;
 int up_write (int *) ;

__attribute__((used)) static void
linux_cdev_pager_dtor(void *handle)
{
 const struct vm_operations_struct *vm_ops;
 struct vm_area_struct *vmap;

 vmap = linux_cdev_handle_find(handle);
 MPASS(vmap != ((void*)0));





 linux_cdev_handle_remove(vmap);

 down_write(&vmap->vm_mm->mmap_sem);
 vm_ops = vmap->vm_ops;
 if (likely(vm_ops != ((void*)0)))
  vm_ops->close(vmap);
 up_write(&vmap->vm_mm->mmap_sem);

 linux_cdev_handle_free(vmap);
}
