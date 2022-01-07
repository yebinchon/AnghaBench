
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int R_AX; scalar_t__ R_DX; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef int int32_t ;
typedef int int16_t ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_CF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int x86emu_intr_raise (struct x86emu*,int) ;

__attribute__((used)) static void
idiv_word(struct x86emu *emu, uint16_t s)
{
 int32_t dvd, div, mod;

 dvd = (((int32_t) emu->x86.R_DX) << 16) | emu->x86.R_AX;
 if (s == 0) {
  x86emu_intr_raise(emu, 8);
  return;
 }
 div = dvd / (int16_t) s;
 mod = dvd % (int16_t) s;
 if (div > 0x7fff || div < -0x7fff) {
  x86emu_intr_raise(emu, 8);
  return;
 }
 CLEAR_FLAG(F_CF);
 CLEAR_FLAG(F_SF);
 CONDITIONAL_SET_FLAG(div == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(mod & 0xff), F_PF);

 emu->x86.R_AX = (uint16_t) div;
 emu->x86.R_DX = (uint16_t) mod;
}
