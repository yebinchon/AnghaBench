
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_SP; int R_SS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int fetch_word (struct x86emu*,int ,int) ;

__attribute__((used)) static uint16_t
pop_word(struct x86emu *emu)
{
 uint16_t res;

 res = fetch_word(emu, emu->x86.R_SS, emu->x86.R_SP);
 emu->x86.R_SP += 2;
 return res;
}
