
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 int CONDITIONAL_SET_FLAG (unsigned int,int ) ;
 int F_CF ;
 int F_OF ;
 scalar_t__ XOR2 (unsigned int) ;

__attribute__((used)) static uint8_t
rol_byte(struct x86emu *emu, uint8_t d, uint8_t s)
{
 unsigned int res, cnt, mask;
 res = d;
 if ((cnt = s % 8) != 0) {

  res = (d << cnt);


  mask = (1 << cnt) - 1;
  res |= (d >> (8 - cnt)) & mask;



  CONDITIONAL_SET_FLAG(s == 1 &&
      XOR2((res & 0x1) + ((res >> 6) & 0x2)),
      F_OF);
 }
 if (s != 0) {


  CONDITIONAL_SET_FLAG(res & 0x1, F_CF);
 }
 return (uint8_t) res;
}
