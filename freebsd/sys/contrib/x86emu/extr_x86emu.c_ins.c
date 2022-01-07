
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int mode; int R_DI; int R_DX; int R_ES; scalar_t__ R_ECX; scalar_t__ R_CX; } ;
struct x86emu {TYPE_1__ x86; int (* emu_inl ) (struct x86emu*,int ) ;int (* emu_inw ) (struct x86emu*,int ) ;int (* emu_inb ) (struct x86emu*,int ) ;} ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int F_DF ;
 int SYSMODE_PREFIX_DATA ;
 int SYSMODE_PREFIX_REPE ;
 int SYSMODE_PREFIX_REPNE ;
 int store_byte (struct x86emu*,int ,int,int ) ;
 int store_long (struct x86emu*,int ,int,int ) ;
 int store_word (struct x86emu*,int ,int,int ) ;
 int stub1 (struct x86emu*,int ) ;
 int stub2 (struct x86emu*,int ) ;
 int stub3 (struct x86emu*,int ) ;
 int stub4 (struct x86emu*,int ) ;
 int stub5 (struct x86emu*,int ) ;
 int stub6 (struct x86emu*,int ) ;

__attribute__((used)) static void
ins(struct x86emu *emu, int size)
{
 int inc = size;

 if (ACCESS_FLAG(F_DF)) {
  inc = -size;
 }
 if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {


  uint32_t count = ((emu->x86.mode & SYSMODE_PREFIX_DATA) ?
      emu->x86.R_ECX : emu->x86.R_CX);
  switch (size) {
  case 1:
   while (count--) {
    store_byte(emu, emu->x86.R_ES, emu->x86.R_DI,
        (*emu->emu_inb) (emu, emu->x86.R_DX));
    emu->x86.R_DI += inc;
   }
   break;

  case 2:
   while (count--) {
    store_word(emu, emu->x86.R_ES, emu->x86.R_DI,
        (*emu->emu_inw) (emu, emu->x86.R_DX));
    emu->x86.R_DI += inc;
   }
   break;
  case 4:
   while (count--) {
    store_long(emu, emu->x86.R_ES, emu->x86.R_DI,
        (*emu->emu_inl) (emu, emu->x86.R_DX));
    emu->x86.R_DI += inc;
    break;
   }
  }
  emu->x86.R_CX = 0;
  if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
   emu->x86.R_ECX = 0;
  }
  emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
 } else {
  switch (size) {
  case 1:
   store_byte(emu, emu->x86.R_ES, emu->x86.R_DI,
       (*emu->emu_inb) (emu, emu->x86.R_DX));
   break;
  case 2:
   store_word(emu, emu->x86.R_ES, emu->x86.R_DI,
       (*emu->emu_inw) (emu, emu->x86.R_DX));
   break;
  case 4:
   store_long(emu, emu->x86.R_ES, emu->x86.R_DI,
       (*emu->emu_inl) (emu, emu->x86.R_DX));
   break;
  }
  emu->x86.R_DI += inc;
 }
}
