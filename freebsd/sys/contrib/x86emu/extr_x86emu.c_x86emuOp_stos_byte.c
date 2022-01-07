
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ R_CX; int R_DI; int R_AL; int R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_DF ;
 int SYSMODE_PREFIX_REPE ;
 int SYSMODE_PREFIX_REPNE ;
 int store_byte (struct x86emu*,int ,int,int ) ;

__attribute__((used)) static void
x86emuOp_stos_byte(struct x86emu *emu)
{
 int inc;

 if (ACCESS_FLAG(F_DF))
  inc = -1;
 else
  inc = 1;
 if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {


  while (emu->x86.R_CX != 0) {
   store_byte(emu, emu->x86.R_ES, emu->x86.R_DI,
       emu->x86.R_AL);
   emu->x86.R_CX -= 1;
   emu->x86.R_DI += inc;
  }
  emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
 } else {
  store_byte(emu, emu->x86.R_ES, emu->x86.R_DI, emu->x86.R_AL);
  emu->x86.R_DI += inc;
 }
}
