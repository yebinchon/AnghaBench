
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef scalar_t__ int8_t ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;


 int SYSMODE_PREFIX_DATA ;
 scalar_t__ fetch_byte_imm (struct x86emu*) ;
 int push_long (struct x86emu*,int ) ;
 int push_word (struct x86emu*,scalar_t__) ;

__attribute__((used)) static void
x86emuOp_push_byte_IMM(struct x86emu *emu)
{
 int16_t imm;

 imm = (int8_t) fetch_byte_imm(emu);
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  push_long(emu, (int32_t) imm);
 } else {
  push_word(emu, imm);
 }
}
