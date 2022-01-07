
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int R_AH; int R_FLG; } ;
struct x86emu {TYPE_1__ x86; } ;



__attribute__((used)) static void
x86emuOp_lahf(struct x86emu *emu)
{
 emu->x86.R_AH = (uint8_t) (emu->x86.R_FLG & 0xff);


 emu->x86.R_AH |= 0x2;
}
