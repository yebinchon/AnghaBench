
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int cur_rl; } ;


 int * decode_rm_long_register (struct x86emu*,int ) ;

__attribute__((used)) static uint32_t *
decode_rl_long_register(struct x86emu *emu)
{
 return decode_rm_long_register(emu, emu->cur_rl);
}
