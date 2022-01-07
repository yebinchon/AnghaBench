
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int intr; int intno; } ;
struct x86emu {TYPE_1__ x86; } ;


 int INTR_SYNCH ;
 int x86emu_intr_dispatch (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emu_intr_handle(struct x86emu *emu)
{
 uint8_t intno;

 if (emu->x86.intr & INTR_SYNCH) {
  intno = emu->x86.intno;
  emu->x86.intr = 0;
  x86emu_intr_dispatch(emu, intno);
 }
}
