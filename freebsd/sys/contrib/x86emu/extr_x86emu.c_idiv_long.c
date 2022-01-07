
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int R_EAX; scalar_t__ R_EDX; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef int int64_t ;
typedef int int32_t ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int ,int ) ;
 int F_AF ;
 int F_CF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int SET_FLAG (int ) ;
 int x86emu_intr_raise (struct x86emu*,int) ;

__attribute__((used)) static void
idiv_long(struct x86emu *emu, uint32_t s)
{
 int64_t dvd, div, mod;

 dvd = (((int64_t) emu->x86.R_EDX) << 32) | emu->x86.R_EAX;
 if (s == 0) {
  x86emu_intr_raise(emu, 8);
  return;
 }
 div = dvd / (int32_t) s;
 mod = dvd % (int32_t) s;
 if (div > 0x7fffffff || div < -0x7fffffff) {
  x86emu_intr_raise(emu, 8);
  return;
 }
 CLEAR_FLAG(F_CF);
 CLEAR_FLAG(F_AF);
 CLEAR_FLAG(F_SF);
 SET_FLAG(F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(mod & 0xff), F_PF);

 emu->x86.R_EAX = (uint32_t) div;
 emu->x86.R_EDX = (uint32_t) mod;
}
