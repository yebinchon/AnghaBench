
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int decode_and_fetch_byte (struct x86emu*) ;
 int * decode_rh_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_32_movzx_byte_R_RM(struct x86emu *emu)
{
 uint32_t *destreg;

 fetch_decode_modrm(emu);
 destreg = decode_rh_long_register(emu);
 *destreg = decode_and_fetch_byte(emu);
}
