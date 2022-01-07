
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ get_dcache_line_size () ;
 scalar_t__ rounddown2 (scalar_t__,scalar_t__) ;

void
cpu_flush_dcache(const void *ptr, size_t len)
{

 uint64_t cl_size;
 vm_offset_t addr, end;

 cl_size = get_dcache_line_size();


 end = (vm_offset_t)ptr + (vm_offset_t)len;

 addr = (vm_offset_t)ptr;
 addr = rounddown2(addr, cl_size);

 for (; addr < end; addr += cl_size)
  __asm __volatile("dc	civac, %0" : : "r" (addr) : "memory");

 __asm __volatile("dsb	sy" : : : "memory");
}
