
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int F_OF ;
 scalar_t__ XOR2 (int) ;

__attribute__((used)) static uint32_t
rol_long(struct x86emu *emu, uint32_t d, uint8_t s)
{
 uint32_t res, cnt, mask;

 res = d;
 if ((cnt = s % 32) != 0) {
  res = (d << cnt);
  mask = (1 << cnt) - 1;
  res |= (d >> (32 - cnt)) & mask;
  CONDITIONAL_SET_FLAG(s == 1 &&
      XOR2((res & 0x1) + ((res >> 30) & 0x2)),
      F_OF);
 }
 if (s != 0) {


  CONDITIONAL_SET_FLAG(res & 0x1, F_CF);
 }
 return res;
}
