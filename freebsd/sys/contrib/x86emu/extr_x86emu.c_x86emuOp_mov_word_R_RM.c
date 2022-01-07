
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int decode_and_fetch_long (struct x86emu*) ;
 int decode_and_fetch_word (struct x86emu*) ;
 int * decode_rh_long_register (struct x86emu*) ;
 int * decode_rh_word_register (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_mov_word_R_RM(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  uint32_t *destreg;

  fetch_decode_modrm(emu);
  destreg = decode_rh_long_register(emu);
  *destreg = decode_and_fetch_long(emu);
 } else {
  uint16_t *destreg;

  fetch_decode_modrm(emu);
  destreg = decode_rh_word_register(emu);
  *destreg = decode_and_fetch_word(emu);
 }
}
