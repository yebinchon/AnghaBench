
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int x_reg; } ;
struct TYPE_5__ {int e_reg; } ;
union x86emu_register {TYPE_3__ I16_reg; TYPE_2__ I32_reg; } ;
struct TYPE_4__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int push_long (struct x86emu*,int ) ;
 int push_word (struct x86emu*,int ) ;

__attribute__((used)) static void
common_push_word_long(struct x86emu *emu, union x86emu_register *reg)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  push_long(emu, reg->I32_reg.e_reg);
 else
  push_word(emu, reg->I16_reg.x_reg);
}
