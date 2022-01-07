
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;


 int VM_OBJECT_WLOCK (int ) ;

void
zfs_vmobject_wlock(vm_object_t object)
{

 VM_OBJECT_WLOCK(object);
}
