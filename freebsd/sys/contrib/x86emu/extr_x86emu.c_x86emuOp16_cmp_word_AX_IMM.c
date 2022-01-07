
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_AX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int cmp_word (struct x86emu*,int ,int ) ;
 int fetch_word_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp16_cmp_word_AX_IMM(struct x86emu *emu)
{
 uint16_t srcval;

 srcval = fetch_word_imm(emu);
 cmp_word(emu, emu->x86.R_AX, srcval);
}
