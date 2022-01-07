
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mode; } ;
struct x86emu {int cur_mod; int cur_offset; TYPE_1__ x86; } ;
typedef int int16_t ;


 int SYSMODE_PREFIX_ADDR ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_long_register (struct x86emu*) ;
 int fetch_data_long (struct x86emu*,int) ;

__attribute__((used)) static uint32_t
decode_and_fetch_long_disp(struct x86emu *emu, int16_t disp)
{
 if (emu->cur_mod != 3) {

  emu->cur_offset = decode_rl_address(emu) + disp;
  if ((emu->x86.mode & SYSMODE_PREFIX_ADDR) == 0)
   emu->cur_offset &= 0xffff;
  return fetch_data_long(emu, emu->cur_offset);
 } else {
  return *decode_rl_long_register(emu);
 }
}
