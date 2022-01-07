
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int le16dec (int *) ;
 int le16toh (int ) ;
 int * x86bios_get_pages (int,int) ;
 int x86bios_set_fault (struct x86emu*,int) ;

__attribute__((used)) static uint16_t
x86bios_emu_rdw(struct x86emu *emu, uint32_t addr)
{
 uint16_t *va;

 va = x86bios_get_pages(addr, sizeof(*va));
 if (va == ((void*)0))
  x86bios_set_fault(emu, addr);


 if ((addr & 1) != 0)
  return (le16dec(va));
 else

 return (le16toh(*va));
}
