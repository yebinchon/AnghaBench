
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int mode; scalar_t__ R_SP; scalar_t__ R_AX; scalar_t__ R_ESP; scalar_t__ R_EAX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;

__attribute__((used)) static void
x86emuOp_xchg_word_AX_SP(struct x86emu *emu)
{
 uint32_t tmp;

 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  tmp = emu->x86.R_EAX;
  emu->x86.R_EAX = emu->x86.R_ESP;
  emu->x86.R_ESP = tmp;
 } else {
  tmp = emu->x86.R_AX;
  emu->x86.R_AX = emu->x86.R_SP;
  emu->x86.R_SP = (uint16_t) tmp;
 }
}
