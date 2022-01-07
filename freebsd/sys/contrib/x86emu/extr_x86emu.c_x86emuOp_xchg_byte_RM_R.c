
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 int decode_and_fetch_byte (struct x86emu*) ;
 int * decode_rh_byte_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int write_back_byte (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_xchg_byte_RM_R(struct x86emu *emu)
{
 uint8_t *srcreg, destval, tmp;

 fetch_decode_modrm(emu);
 destval = decode_and_fetch_byte(emu);
 srcreg = decode_rh_byte_register(emu);
 tmp = destval;
 destval = *srcreg;
 *srcreg = tmp;
 write_back_byte(emu, destval);
}
