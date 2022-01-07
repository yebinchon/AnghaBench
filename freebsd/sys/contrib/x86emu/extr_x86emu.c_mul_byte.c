
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int R_AL; scalar_t__ R_AH; int R_AX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int SET_FLAG (int ) ;

__attribute__((used)) static void
mul_byte(struct x86emu *emu, uint8_t s)
{
 uint16_t res = (uint16_t) (emu->x86.R_AL * s);

 emu->x86.R_AX = res;
 if (emu->x86.R_AH == 0) {
  CLEAR_FLAG(F_CF);
  CLEAR_FLAG(F_OF);
 } else {
  SET_FLAG(F_CF);
  SET_FLAG(F_OF);
 }
}
