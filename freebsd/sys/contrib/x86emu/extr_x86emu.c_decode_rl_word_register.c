
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int cur_rl; } ;


 int * decode_rm_word_register (struct x86emu*,int ) ;

__attribute__((used)) static uint16_t *
decode_rl_word_register(struct x86emu *emu)
{
 return decode_rm_word_register(emu, emu->cur_rl);
}
