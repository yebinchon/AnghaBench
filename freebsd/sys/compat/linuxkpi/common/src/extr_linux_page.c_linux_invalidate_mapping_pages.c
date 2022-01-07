
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;
typedef int pgoff_t ;


 int OBJPR_CLEANONLY ;
 unsigned long linux_invalidate_mapping_pages_sub (int ,int ,int ,int ) ;

unsigned long
linux_invalidate_mapping_pages(vm_object_t obj, pgoff_t start, pgoff_t end)
{

 return (linux_invalidate_mapping_pages_sub(obj, start, end, OBJPR_CLEANONLY));
}
