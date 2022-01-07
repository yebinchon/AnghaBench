
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int mode; } ;
struct x86emu {int cur_mod; TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_ADDR ;
 scalar_t__* decode_rh_long_register (struct x86emu*) ;
 scalar_t__* decode_rh_word_register (struct x86emu*) ;
 scalar_t__ decode_rl_address (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_lea_word_R_M(struct x86emu *emu)
{
 uint32_t destoffset;

 fetch_decode_modrm(emu);
 if (emu->cur_mod == 3)
  x86emu_halt_sys(emu);

 destoffset = decode_rl_address(emu);
 if (emu->x86.mode & SYSMODE_PREFIX_ADDR) {
  uint32_t *srcreg;

  srcreg = decode_rh_long_register(emu);
  *srcreg = (uint32_t) destoffset;
 } else {
  uint16_t *srcreg;

  srcreg = decode_rh_word_register(emu);
  *srcreg = (uint16_t) destoffset;
 }
}
