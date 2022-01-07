
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int le32dec (int*) ;
 int le32toh (int) ;
 int* x86bios_get_pages (int,int) ;
 int x86bios_set_fault (struct x86emu*,int) ;

__attribute__((used)) static uint32_t
x86bios_emu_rdl(struct x86emu *emu, uint32_t addr)
{
 uint32_t *va;

 va = x86bios_get_pages(addr, sizeof(*va));
 if (va == ((void*)0))
  x86bios_set_fault(emu, addr);


 if ((addr & 3) != 0)
  return (le32dec(va));
 else

 return (le32toh(*va));
}
