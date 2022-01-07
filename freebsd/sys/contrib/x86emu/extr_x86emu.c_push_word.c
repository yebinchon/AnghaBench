
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_SP; int R_SS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int store_word (struct x86emu*,int ,int,int ) ;

__attribute__((used)) static void
push_word(struct x86emu *emu, uint16_t w)
{
 emu->x86.R_SP -= 2;
 store_word(emu, emu->x86.R_SS, emu->x86.R_SP, w);
}
