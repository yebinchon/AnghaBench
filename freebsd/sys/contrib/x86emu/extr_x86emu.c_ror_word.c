
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int CONDITIONAL_SET_FLAG (unsigned int,int ) ;
 int F_CF ;
 int F_OF ;
 scalar_t__ XOR2 (unsigned int) ;

__attribute__((used)) static uint16_t
ror_word(struct x86emu *emu, uint16_t d, uint8_t s)
{
 unsigned int res, cnt, mask;

 res = d;
 if ((cnt = s % 16) != 0) {
  res = (d << (16 - cnt));
  mask = (1 << (16 - cnt)) - 1;
  res |= (d >> (cnt)) & mask;
  CONDITIONAL_SET_FLAG(s == 1 && XOR2(res >> 14), F_OF);
 }
 if (s != 0) {


  CONDITIONAL_SET_FLAG(res & 0x8000, F_CF);
 }
 return (uint16_t) res;
}
