
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_CF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int SET_FLAG (int ) ;

__attribute__((used)) static uint8_t
daa_byte(struct x86emu *emu, uint8_t d)
{
 uint32_t res = d;
 if ((d & 0xf) > 9 || ACCESS_FLAG(F_AF)) {
  res += 6;
  SET_FLAG(F_AF);
 }
 if (res > 0x9F || ACCESS_FLAG(F_CF)) {
  res += 0x60;
  SET_FLAG(F_CF);
 }
 CONDITIONAL_SET_FLAG(res & 0x80, F_SF);
 CONDITIONAL_SET_FLAG((res & 0xFF) == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);
 return (uint8_t) res;
}
