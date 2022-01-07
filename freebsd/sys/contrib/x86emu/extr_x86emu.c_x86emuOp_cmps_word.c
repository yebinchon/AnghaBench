
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int mode; scalar_t__ R_CX; int R_SI; int R_DI; int R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_DF ;
 int F_ZF ;
 int SYSMODE_PREFIX_DATA ;
 int SYSMODE_PREFIX_REPE ;
 int SYSMODE_PREFIX_REPNE ;
 int cmp_long (struct x86emu*,scalar_t__,scalar_t__) ;
 int cmp_word (struct x86emu*,int ,int ) ;
 scalar_t__ fetch_data_long (struct x86emu*,int) ;
 scalar_t__ fetch_data_word (struct x86emu*,int) ;
 scalar_t__ fetch_long (struct x86emu*,int ,int) ;
 scalar_t__ fetch_word (struct x86emu*,int ,int) ;

__attribute__((used)) static void
x86emuOp_cmps_word(struct x86emu *emu)
{
 uint32_t val1, val2;
 int inc;

 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  if (ACCESS_FLAG(F_DF))
   inc = -4;
  else
   inc = 4;
 } else {
  if (ACCESS_FLAG(F_DF))
   inc = -2;
  else
   inc = 2;
 }
 if (emu->x86.mode & SYSMODE_PREFIX_REPE) {


  while (emu->x86.R_CX != 0) {
   if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
    val1 = fetch_data_long(emu, emu->x86.R_SI);
    val2 = fetch_long(emu, emu->x86.R_ES,
        emu->x86.R_DI);
    cmp_long(emu, val1, val2);
   } else {
    val1 = fetch_data_word(emu, emu->x86.R_SI);
    val2 = fetch_word(emu, emu->x86.R_ES,
        emu->x86.R_DI);
    cmp_word(emu, (uint16_t) val1, (uint16_t) val2);
   }
   emu->x86.R_CX -= 1;
   emu->x86.R_SI += inc;
   emu->x86.R_DI += inc;
   if (ACCESS_FLAG(F_ZF) == 0)
    break;
  }
  emu->x86.mode &= ~SYSMODE_PREFIX_REPE;
 } else if (emu->x86.mode & SYSMODE_PREFIX_REPNE) {


  while (emu->x86.R_CX != 0) {
   if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
    val1 = fetch_data_long(emu, emu->x86.R_SI);
    val2 = fetch_long(emu, emu->x86.R_ES,
        emu->x86.R_DI);
    cmp_long(emu, val1, val2);
   } else {
    val1 = fetch_data_word(emu, emu->x86.R_SI);
    val2 = fetch_word(emu, emu->x86.R_ES,
        emu->x86.R_DI);
    cmp_word(emu, (uint16_t) val1, (uint16_t) val2);
   }
   emu->x86.R_CX -= 1;
   emu->x86.R_SI += inc;
   emu->x86.R_DI += inc;
   if (ACCESS_FLAG(F_ZF))
    break;
  }
  emu->x86.mode &= ~SYSMODE_PREFIX_REPNE;
 } else {
  if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
   val1 = fetch_data_long(emu, emu->x86.R_SI);
   val2 = fetch_long(emu, emu->x86.R_ES, emu->x86.R_DI);
   cmp_long(emu, val1, val2);
  } else {
   val1 = fetch_data_word(emu, emu->x86.R_SI);
   val2 = fetch_word(emu, emu->x86.R_ES, emu->x86.R_DI);
   cmp_word(emu, (uint16_t) val1, (uint16_t) val2);
  }
  emu->x86.R_SI += inc;
  emu->x86.R_DI += inc;
 }
}
