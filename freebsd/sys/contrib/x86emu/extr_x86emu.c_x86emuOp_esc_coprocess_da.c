
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int cur_mod; } ;


 int decode_rl_address (struct x86emu*) ;
 int fetch_decode_modrm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_esc_coprocess_da(struct x86emu *emu)
{
 fetch_decode_modrm(emu);
 if (emu->cur_mod != 3)
  decode_rl_address(emu);
}
