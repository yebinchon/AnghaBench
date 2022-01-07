
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_IP; int R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int fetch_word (struct x86emu*,int ,int) ;

__attribute__((used)) static uint16_t
fetch_word_imm(struct x86emu *emu)
{
 uint16_t fetched;

 fetched = fetch_word(emu, emu->x86.R_CS, emu->x86.R_IP);
 emu->x86.R_IP += 2;
 return fetched;
}
