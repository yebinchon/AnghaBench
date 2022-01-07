
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int R_AL; int R_AH; int R_AX; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef int int8_t ;
typedef int int16_t ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;

__attribute__((used)) static void
imul_byte(struct x86emu *emu, uint8_t s)
{
 int16_t res = (int16_t) ((int8_t) emu->x86.R_AL * (int8_t) s);

 emu->x86.R_AX = res;
 if (((emu->x86.R_AL & 0x80) == 0 && emu->x86.R_AH == 0x00) ||
     ((emu->x86.R_AL & 0x80) != 0 && emu->x86.R_AH == 0xFF)) {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 } else {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 }
}
