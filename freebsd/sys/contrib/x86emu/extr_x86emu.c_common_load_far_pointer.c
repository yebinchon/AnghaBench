
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct x86emu {int cur_mod; } ;


 int * decode_rh_word_register (struct x86emu*) ;
 scalar_t__ decode_rl_address (struct x86emu*) ;
 int fetch_data_word (struct x86emu*,scalar_t__) ;
 int fetch_decode_modrm (struct x86emu*) ;
 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static void
common_load_far_pointer(struct x86emu *emu, uint16_t *seg)
{
 uint16_t *dstreg;
 uint32_t srcoffset;

 fetch_decode_modrm(emu);
 if (emu->cur_mod == 3)
  x86emu_halt_sys(emu);

 dstreg = decode_rh_word_register(emu);
 srcoffset = decode_rl_address(emu);
 *dstreg = fetch_data_word(emu, srcoffset);
 *seg = fetch_data_word(emu, srcoffset + 2);
}
