
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int decode_and_fetch_long_disp (struct x86emu*,int ) ;

uint32_t
decode_and_fetch_long(struct x86emu *emu)
{
 return decode_and_fetch_long_disp(emu, 0);
}
