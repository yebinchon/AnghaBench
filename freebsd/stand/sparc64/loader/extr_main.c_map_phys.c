
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;


 int OF_call_method (char*,int ,int,int ,int ,int ,int,size_t,int) ;
 int mmu ;

__attribute__((used)) static int
map_phys(int mode, size_t size, vm_offset_t virt, vm_offset_t phys)
{

 return (OF_call_method("map", mmu, 5, 0, (uint32_t)phys,
     (uint32_t)(phys >> 32), virt, size, mode));
}
