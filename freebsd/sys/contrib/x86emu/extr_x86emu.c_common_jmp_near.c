
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef scalar_t__ int8_t ;
typedef scalar_t__ int16_t ;


 scalar_t__ fetch_byte_imm (struct x86emu*) ;

__attribute__((used)) static void
common_jmp_near(struct x86emu *emu, int cond)
{
 int8_t offset;
 uint16_t target;

 offset = (int8_t) fetch_byte_imm(emu);
 target = (uint16_t) (emu->x86.R_IP + (int16_t) offset);
 if (cond)
  emu->x86.R_IP = target;
}
