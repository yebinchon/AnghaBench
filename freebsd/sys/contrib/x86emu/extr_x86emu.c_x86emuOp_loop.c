
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ R_CX; scalar_t__ R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef scalar_t__ int8_t ;
typedef scalar_t__ int16_t ;


 scalar_t__ fetch_byte_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_loop(struct x86emu *emu)
{
 int16_t ip;

 ip = (int8_t) fetch_byte_imm(emu);
 ip += (int16_t) emu->x86.R_IP;
 emu->x86.R_CX -= 1;
 if (emu->x86.R_CX != 0)
  emu->x86.R_IP = ip;
}
