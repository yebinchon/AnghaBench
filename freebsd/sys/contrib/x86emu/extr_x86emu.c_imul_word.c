
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {int R_AX; int R_DX; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef int int32_t ;
typedef int int16_t ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;

__attribute__((used)) static void
imul_word(struct x86emu *emu, uint16_t s)
{
 int32_t res = (int16_t) emu->x86.R_AX * (int16_t) s;

 emu->x86.R_AX = (uint16_t) res;
 emu->x86.R_DX = (uint16_t) (res >> 16);
 if (((emu->x86.R_AX & 0x8000) == 0 && emu->x86.R_DX == 0x00) ||
     ((emu->x86.R_AX & 0x8000) != 0 && emu->x86.R_DX == 0xFF)) {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 } else {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 }
}
