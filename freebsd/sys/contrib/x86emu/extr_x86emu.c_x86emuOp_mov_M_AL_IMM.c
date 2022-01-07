
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_AL; } ;
struct x86emu {TYPE_1__ x86; } ;


 int fetch_word_imm (struct x86emu*) ;
 int store_data_byte (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
x86emuOp_mov_M_AL_IMM(struct x86emu *emu)
{
 uint16_t offset;

 offset = fetch_word_imm(emu);
 store_data_byte(emu, offset, emu->x86.R_AL);
}
