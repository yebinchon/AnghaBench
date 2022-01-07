
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int cpu_dcache_inv_range (int,int) ;
 int cpu_dcache_wb_range (int,int) ;
 int dcache_line_size ;

__attribute__((used)) static void
dma_preread_safe(vm_offset_t va, vm_size_t size)
{




 if (va & (dcache_line_size - 1))
  cpu_dcache_wb_range(va, 1);
 if ((va + size) & (dcache_line_size - 1))
  cpu_dcache_wb_range(va + size, 1);

 cpu_dcache_inv_range(va, size);
}
