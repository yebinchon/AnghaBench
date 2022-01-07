
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int TAILQ_REMOVE (int *,struct vm_area_struct*,int ) ;
 int linux_vma_head ;
 int linux_vma_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_entry ;

__attribute__((used)) static void
linux_cdev_handle_remove(struct vm_area_struct *vmap)
{
 rw_wlock(&linux_vma_lock);
 TAILQ_REMOVE(&linux_vma_head, vmap, vm_entry);
 rw_wunlock(&linux_vma_lock);
}
