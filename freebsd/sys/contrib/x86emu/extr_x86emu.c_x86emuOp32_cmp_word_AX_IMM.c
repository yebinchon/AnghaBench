
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int R_EAX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int cmp_long (struct x86emu*,int ,int ) ;
 int fetch_long_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp32_cmp_word_AX_IMM(struct x86emu *emu)
{
 uint32_t srcval;

 srcval = fetch_long_imm(emu);
 cmp_long(emu, emu->x86.R_EAX, srcval);
}
