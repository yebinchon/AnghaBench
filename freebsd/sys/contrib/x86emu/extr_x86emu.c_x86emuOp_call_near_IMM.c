
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ R_IP; scalar_t__ R_EIP; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;


 int SYSMODE_PREFIX_DATA ;
 scalar_t__ fetch_long_imm (struct x86emu*) ;
 scalar_t__ fetch_word_imm (struct x86emu*) ;
 int push_long (struct x86emu*,scalar_t__) ;
 int push_word (struct x86emu*,scalar_t__) ;

__attribute__((used)) static void
x86emuOp_call_near_IMM(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  int32_t ip;
  ip = (int32_t) fetch_long_imm(emu);
  ip += (int32_t) emu->x86.R_EIP;
  push_long(emu, emu->x86.R_EIP);
  emu->x86.R_EIP = ip;
 } else {
  int16_t ip;
  ip = (int16_t) fetch_word_imm(emu);
  ip += (int16_t) emu->x86.R_IP;
  push_word(emu, emu->x86.R_IP);
  emu->x86.R_IP = ip;
 }
}
