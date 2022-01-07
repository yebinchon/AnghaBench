
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int cmp_long (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
cmp_long_no_return(struct x86emu *emu, uint32_t d, uint32_t s)
{
 cmp_long(emu, d, s);
}
