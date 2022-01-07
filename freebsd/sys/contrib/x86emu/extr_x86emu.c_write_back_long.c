
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int cur_mod; int cur_offset; } ;


 int * decode_rl_long_register (struct x86emu*) ;
 int store_data_long (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
write_back_long(struct x86emu *emu, uint32_t val)
{
 if (emu->cur_mod != 3)
  store_data_long(emu, emu->cur_offset, val);
 else
  *decode_rl_long_register(emu) = val;
}
