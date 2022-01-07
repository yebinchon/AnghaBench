
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int * x86bios_get_pages (int ,int) ;
 int x86bios_set_fault (struct x86emu*,int ) ;

__attribute__((used)) static void
x86bios_emu_wrb(struct x86emu *emu, uint32_t addr, uint8_t val)
{
 uint8_t *va;

 va = x86bios_get_pages(addr, sizeof(*va));
 if (va == ((void*)0))
  x86bios_set_fault(emu, addr);

 *va = val;
}
