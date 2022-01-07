
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;


 int BUSDMA_DCACHE_MASK ;
 int dcache_inv_poc_dma (int,scalar_t__,int) ;
 int dcache_wb_poc (int,scalar_t__,int) ;

__attribute__((used)) static void
dma_preread_safe(vm_offset_t va, vm_paddr_t pa, vm_size_t size)
{







 if (va & BUSDMA_DCACHE_MASK)
  dcache_wb_poc(va, pa, 1);
 if ((va + size) & BUSDMA_DCACHE_MASK)
  dcache_wb_poc(va + size, pa + size, 1);

 dcache_inv_poc_dma(va, pa, size);
}
