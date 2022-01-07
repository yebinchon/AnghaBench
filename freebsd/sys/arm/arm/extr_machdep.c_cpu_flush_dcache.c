
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int dcache_wb_poc (int ,int ,size_t) ;
 scalar_t__ vtophys (void*) ;

void
cpu_flush_dcache(void *ptr, size_t len)
{

 dcache_wb_poc((vm_offset_t)ptr, (vm_paddr_t)vtophys(ptr), len);
}
