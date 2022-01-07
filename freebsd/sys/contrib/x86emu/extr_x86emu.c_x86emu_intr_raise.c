
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int intr; int intno; } ;
struct x86emu {TYPE_1__ x86; } ;


 int INTR_SYNCH ;

void
x86emu_intr_raise(struct x86emu *emu, uint8_t intrnum)
{
 emu->x86.intno = intrnum;
 emu->x86.intr |= INTR_SYNCH;
}
