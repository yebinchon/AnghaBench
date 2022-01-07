
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ R_CX; int R_DI; int R_AL; int R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef int int8_t ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_DF ;
 int F_ZF ;
 int SYSMODE_PREFIX_REPE ;
 int SYSMODE_PREFIX_REPNE ;
 int cmp_byte (struct x86emu*,int ,int ) ;
 int fetch_byte (struct x86emu*,int ,int) ;

__attribute__((used)) static void
x86emuOp_scas_byte(struct x86emu *emu)
{
 int8_t val2;
 int inc;

 if (ACCESS_FLAG(F_DF))
  inc = -1;
 else
  inc = 1;
 if (emu->x86.mode & SYSMODE_PREFIX_REPE) {


  while (emu->x86.R_CX != 0) {
   val2 = fetch_byte(emu, emu->x86.R_ES, emu->x86.R_DI);
   cmp_byte(emu, emu->x86.R_AL, val2);
   emu->x86.R_CX -= 1;
   emu->x86.R_DI += inc;
   if (ACCESS_FLAG(F_ZF) == 0)
    break;
  }
  emu->x86.mode &= ~SYSMODE_PREFIX_REPE;
 } else if (emu->x86.mode & SYSMODE_PREFIX_REPNE) {


  while (emu->x86.R_CX != 0) {
   val2 = fetch_byte(emu, emu->x86.R_ES, emu->x86.R_DI);
   cmp_byte(emu, emu->x86.R_AL, val2);
   emu->x86.R_CX -= 1;
   emu->x86.R_DI += inc;
   if (ACCESS_FLAG(F_ZF))
    break;
  }
  emu->x86.mode &= ~SYSMODE_PREFIX_REPNE;
 } else {
  val2 = fetch_byte(emu, emu->x86.R_ES, emu->x86.R_DI);
  cmp_byte(emu, emu->x86.R_AL, val2);
  emu->x86.R_DI += inc;
 }
}
