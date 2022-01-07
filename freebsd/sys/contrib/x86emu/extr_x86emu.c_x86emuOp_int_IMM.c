
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 int fetch_byte_imm (struct x86emu*) ;
 int x86emu_intr_dispatch (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_int_IMM(struct x86emu *emu)
{
 uint8_t intnum;

 intnum = fetch_byte_imm(emu);
 x86emu_intr_dispatch(emu, intnum);
}
