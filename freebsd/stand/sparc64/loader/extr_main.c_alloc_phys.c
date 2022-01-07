
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int cell_t ;


 int OF_call_method (char*,int ,int,int,size_t,int,int*,int*) ;
 int memory ;

__attribute__((used)) static vm_offset_t
alloc_phys(size_t size, int align)
{
 cell_t phys_hi, phys_low;

 if (OF_call_method("claim", memory, 2, 2, size, align, &phys_low,
     &phys_hi) == -1)
  return ((vm_offset_t)-1);
 return ((vm_offset_t)phys_hi << 32 | phys_low);
}
