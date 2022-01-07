
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 scalar_t__ PAGE_SIZE ;
 int kmem_free (int ,size_t) ;

void
linux_free_kmem(vm_offset_t addr, unsigned int order)
{
 size_t size = ((size_t)PAGE_SIZE) << order;

 kmem_free(addr, size);
}
