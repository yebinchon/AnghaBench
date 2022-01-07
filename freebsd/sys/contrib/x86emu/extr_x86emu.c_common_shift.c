
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int common_shift16 (struct x86emu*,int,int) ;
 int common_shift32 (struct x86emu*,int,int) ;

__attribute__((used)) static void
common_shift(struct x86emu *emu, int shift_left, int use_cl)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  common_shift32(emu, shift_left, use_cl);
 else
  common_shift16(emu, shift_left, use_cl);
}
