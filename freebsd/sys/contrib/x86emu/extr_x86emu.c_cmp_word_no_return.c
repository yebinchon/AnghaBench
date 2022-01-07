
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int cmp_word (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
cmp_word_no_return(struct x86emu *emu, uint16_t d, uint16_t s)
{
 cmp_word(emu, d, s);
}
