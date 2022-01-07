
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int R_IP; int R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int x86bios_fault ;
 int x86bios_fault_addr ;
 int x86bios_fault_cs ;
 int x86bios_fault_ip ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86bios_set_fault(struct x86emu *emu, uint32_t addr)
{

 x86bios_fault = 1;
 x86bios_fault_addr = addr;
 x86bios_fault_cs = emu->x86.R_CS;
 x86bios_fault_ip = emu->x86.R_IP;
 x86emu_halt_sys(emu);
}
