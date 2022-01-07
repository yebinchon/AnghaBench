
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int mode; int R_CX; int R_SI; int R_DI; int R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_DF ;
 int SYSMODE_PREFIX_REPE ;
 int SYSMODE_PREFIX_REPNE ;
 int fetch_data_byte (struct x86emu*,int) ;
 int store_byte (struct x86emu*,int ,int,int ) ;

__attribute__((used)) static void
x86emuOp_movs_byte(struct x86emu *emu)
{
 uint8_t val;
 uint32_t count;
 int inc;

 if (ACCESS_FLAG(F_DF))
  inc = -1;
 else
  inc = 1;
 count = 1;
 if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {


  count = emu->x86.R_CX;
  emu->x86.R_CX = 0;
  emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
 }
 while (count--) {
  val = fetch_data_byte(emu, emu->x86.R_SI);
  store_byte(emu, emu->x86.R_ES, emu->x86.R_DI, val);
  emu->x86.R_SI += inc;
  emu->x86.R_DI += inc;
 }
}
