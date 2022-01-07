
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;

__attribute__((used)) static uint16_t
aad_word(struct x86emu *emu, uint16_t d)
{
 uint16_t l;
 uint8_t hb, lb;

 hb = (uint8_t) ((d >> 8) & 0xff);
 lb = (uint8_t) ((d & 0xff));
 l = (uint16_t) ((lb + 10 * hb) & 0xFF);

 CLEAR_FLAG(F_CF);
 CLEAR_FLAG(F_AF);
 CLEAR_FLAG(F_OF);
 CONDITIONAL_SET_FLAG(l & 0x80, F_SF);
 CONDITIONAL_SET_FLAG(l == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(l & 0xff), F_PF);
 return l;
}
