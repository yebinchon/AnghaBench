
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct x86emu {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;


 scalar_t__ decode_and_fetch_word (struct x86emu*) ;
 scalar_t__* decode_rh_long_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_movsx_word_R_RM(struct x86emu *emu)
{
 uint32_t *destreg;

 fetch_decode_modrm(emu);
 destreg = decode_rh_long_register(emu);
 *destreg = (int32_t)(int16_t)decode_and_fetch_word(emu);
}
