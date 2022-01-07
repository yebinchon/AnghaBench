
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef int vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_6__ {int resident_page_count; } ;


 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int vm_object_page_remove (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static vm_ooffset_t
linux_invalidate_mapping_pages_sub(vm_object_t obj, vm_pindex_t start,
    vm_pindex_t end, int flags)
{
 int start_count, end_count;

 VM_OBJECT_WLOCK(obj);
 start_count = obj->resident_page_count;
 vm_object_page_remove(obj, start, end, flags);
 end_count = obj->resident_page_count;
 VM_OBJECT_WUNLOCK(obj);
 return (start_count - end_count);
}
