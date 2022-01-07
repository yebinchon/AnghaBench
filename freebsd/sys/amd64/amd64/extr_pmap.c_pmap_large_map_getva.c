
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_addr_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;


 int M_BESTFIT ;
 int M_NOWAIT ;
 int VMEM_ADDR_MAX ;
 int VMEM_ADDR_MIN ;
 int large_vmem ;
 int vmem_xalloc (int ,int ,int ,int ,int ,int ,int ,int,int *) ;

__attribute__((used)) static int
pmap_large_map_getva(vm_size_t len, vm_offset_t align, vm_offset_t phase,
    vmem_addr_t *vmem_res)
{






 return (vmem_xalloc(large_vmem, len, align, phase, 0, VMEM_ADDR_MIN,
     VMEM_ADDR_MAX, M_NOWAIT | M_BESTFIT, vmem_res));
}
