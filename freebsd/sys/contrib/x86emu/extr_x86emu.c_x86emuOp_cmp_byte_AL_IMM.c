
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int R_AL; } ;
struct x86emu {TYPE_1__ x86; } ;


 int cmp_byte (struct x86emu*,int ,int ) ;
 int fetch_byte_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_cmp_byte_AL_IMM(struct x86emu *emu)
{
 uint8_t srcval;

 srcval = fetch_byte_imm(emu);
 cmp_byte(emu, emu->x86.R_AL, srcval);
}
