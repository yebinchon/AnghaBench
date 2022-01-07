
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mode; int R_CX; int R_SI; int R_AX; int R_EAX; } ;
struct x86emu {TYPE_1__ x86; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_DF ;
 int SYSMODE_PREFIX_DATA ;
 int SYSMODE_PREFIX_REPE ;
 int SYSMODE_PREFIX_REPNE ;
 int fetch_data_long (struct x86emu*,int) ;
 int fetch_data_word (struct x86emu*,int) ;

__attribute__((used)) static void
x86emuOp_lods_word(struct x86emu *emu)
{
 int inc;
 uint32_t count;

 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  inc = 4;
 else
  inc = 2;

 if (ACCESS_FLAG(F_DF))
  inc = -inc;

 count = 1;
 if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {


  count = emu->x86.R_CX;
  emu->x86.R_CX = 0;
  emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
 }
 while (count--) {
  if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
   emu->x86.R_EAX = fetch_data_long(emu, emu->x86.R_SI);
  } else {
   emu->x86.R_AX = fetch_data_word(emu, emu->x86.R_SI);
  }
  emu->x86.R_SI += inc;
 }
}
