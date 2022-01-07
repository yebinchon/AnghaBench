
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int kobj; } ;


 TYPE_2__ linux_class_misc ;
 int linux_class_root ;
 int linux_kobject_kfree_name (int *) ;
 TYPE_1__ linux_root_device ;
 int linux_vma_lock ;
 int mtx_destroy (int *) ;
 int pci_lock ;
 int rw_destroy (int *) ;
 int spin_lock_destroy (int *) ;
 int vmmaplock ;

__attribute__((used)) static void
linux_compat_uninit(void *arg)
{
 linux_kobject_kfree_name(&linux_class_root);
 linux_kobject_kfree_name(&linux_root_device.kobj);
 linux_kobject_kfree_name(&linux_class_misc.kobj);

 mtx_destroy(&vmmaplock);
 spin_lock_destroy(&pci_lock);
 rw_destroy(&linux_vma_lock);
}
