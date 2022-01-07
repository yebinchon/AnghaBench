
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {void* R_IP; void* R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int push_word (struct x86emu*,int ) ;
 int x86emu_exec (struct x86emu*) ;

void
x86emu_exec_call(struct x86emu *emu, uint16_t seg, uint16_t off)
{
 push_word(emu, 0);
 push_word(emu, 0);
 emu->x86.R_CS = seg;
 emu->x86.R_IP = off;

 x86emu_exec(emu);
}
