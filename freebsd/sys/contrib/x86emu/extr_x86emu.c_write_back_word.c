
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int cur_mod; int cur_offset; } ;


 int * decode_rl_word_register (struct x86emu*) ;
 int store_data_word (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
write_back_word(struct x86emu *emu, uint16_t val)
{
 if (emu->cur_mod != 3)
  store_data_word(emu, emu->cur_offset, val);
 else
  *decode_rl_word_register(emu) = val;
}
