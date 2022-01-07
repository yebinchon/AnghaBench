
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int R_EFLG; int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int F_ALWAYS_ON ;
 int F_MSK ;
 int SYSMODE_PREFIX_DATA ;
 int push_long (struct x86emu*,int) ;
 int push_word (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_pushf_word(struct x86emu *emu)
{
 uint32_t flags;


 flags = (emu->x86.R_EFLG & F_MSK) | F_ALWAYS_ON;
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  push_long(emu, flags);
 } else {
  push_word(emu, (uint16_t) flags);
 }
}
