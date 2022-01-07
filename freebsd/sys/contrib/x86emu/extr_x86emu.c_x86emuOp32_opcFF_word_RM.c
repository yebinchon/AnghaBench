
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int cur_mod; int cur_rh; } ;


 int dec_long (struct x86emu*,int ) ;
 int decode_rl_address (struct x86emu*) ;
 int * decode_rl_long_register (struct x86emu*) ;
 int fetch_data_long (struct x86emu*,int ) ;
 int inc_long (struct x86emu*,int ) ;
 int push_long (struct x86emu*,int ) ;
 int store_data_long (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp32_opcFF_word_RM(struct x86emu *emu)
{
 uint32_t destoffset = 0;
 uint32_t destval, *destreg;

 if (emu->cur_mod != 3) {
  destoffset = decode_rl_address(emu);
  destval = fetch_data_long(emu, destoffset);
  switch (emu->cur_rh) {
  case 0:
   destval = inc_long(emu, destval);
   store_data_long(emu, destoffset, destval);
   break;
  case 1:
   destval = dec_long(emu, destval);
   store_data_long(emu, destoffset, destval);
   break;
  case 6:
   push_long(emu, destval);
   break;
  }
 } else {
  destreg = decode_rl_long_register(emu);
  switch (emu->cur_rh) {
  case 0:
   *destreg = inc_long(emu, *destreg);
   break;
  case 1:
   *destreg = dec_long(emu, *destreg);
   break;
  case 6:
   push_long(emu, *destreg);
   break;
  }
 }
}
