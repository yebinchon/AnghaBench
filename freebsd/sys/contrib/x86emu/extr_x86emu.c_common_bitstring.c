
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int common_bitstring16 (struct x86emu*,int) ;
 int common_bitstring32 (struct x86emu*,int) ;

__attribute__((used)) static void
common_bitstring(struct x86emu *emu, int op)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  common_bitstring32(emu, op);
 else
  common_bitstring16(emu, op);
}
