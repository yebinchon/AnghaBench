
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int cur_rh; } ;


 int * decode_rm_byte_register (struct x86emu*,int ) ;

__attribute__((used)) static uint8_t *
decode_rh_byte_register(struct x86emu *emu)
{
 return decode_rm_byte_register(emu, emu->cur_rh);
}
