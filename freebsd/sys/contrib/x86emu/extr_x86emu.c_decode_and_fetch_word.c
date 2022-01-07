
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int decode_and_fetch_word_disp (struct x86emu*,int ) ;

uint16_t
decode_and_fetch_word(struct x86emu *emu)
{
 return decode_and_fetch_word_disp(emu, 0);
}
