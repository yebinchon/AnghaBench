
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int R_AX; int R_DX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;

__attribute__((used)) static void
mul_word(struct x86emu *emu, uint16_t s)
{
 uint32_t res = emu->x86.R_AX * s;

 emu->x86.R_AX = (uint16_t) res;
 emu->x86.R_DX = (uint16_t) (res >> 16);
 if (emu->x86.R_DX == 0) {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 } else {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 }
}
