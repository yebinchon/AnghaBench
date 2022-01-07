
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 int cmp_byte (struct x86emu*,int ,int ) ;
 int decode_and_fetch_byte (struct x86emu*) ;
 int * decode_rh_byte_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_cmp_byte_R_RM(struct x86emu *emu)
{
 uint8_t *destreg, srcval;

 fetch_decode_modrm(emu);
 destreg = decode_rh_byte_register(emu);
 srcval = decode_and_fetch_byte(emu);
 cmp_byte(emu, *destreg, srcval);
}
