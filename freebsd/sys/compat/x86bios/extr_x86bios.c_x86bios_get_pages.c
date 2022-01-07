
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef size_t uint32_t ;


 size_t X86BIOS_IVT_SIZE ;
 size_t X86BIOS_MEM_SIZE ;
 size_t X86BIOS_PAGE_SIZE ;
 scalar_t__* x86bios_map ;

__attribute__((used)) static void *
x86bios_get_pages(uint32_t offset, size_t size)
{
 vm_offset_t addr;

 if (offset + size > X86BIOS_MEM_SIZE + X86BIOS_IVT_SIZE)
  return (((void*)0));

 if (offset >= X86BIOS_MEM_SIZE)
  offset -= X86BIOS_MEM_SIZE;
 addr = x86bios_map[offset / X86BIOS_PAGE_SIZE];
 if (addr != 0)
  addr += offset % X86BIOS_PAGE_SIZE;

 return ((void *)addr);
}
