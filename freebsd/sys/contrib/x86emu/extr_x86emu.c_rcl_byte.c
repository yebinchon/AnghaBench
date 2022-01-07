
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int F_OF ;
 scalar_t__ XOR2 (unsigned int) ;

__attribute__((used)) static uint8_t
rcl_byte(struct x86emu *emu, uint8_t d, uint8_t s)
{
 unsigned int res, cnt, mask, cf;
 res = d;
 if ((cnt = s % 9) != 0) {


  cf = (d >> (8 - cnt)) & 0x1;






  res = (d << cnt) & 0xff;
  mask = (1 << (cnt - 1)) - 1;
  res |= (d >> (9 - cnt)) & mask;


  if (ACCESS_FLAG(F_CF)) {

   res |= 1 << (cnt - 1);
  }

  CONDITIONAL_SET_FLAG(cf, F_CF);




  CONDITIONAL_SET_FLAG(cnt == 1 && XOR2(cf + ((res >> 6) & 0x2)),
      F_OF);

 }
 return (uint8_t) res;
}
