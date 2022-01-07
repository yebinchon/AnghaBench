
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 int cmp_byte (struct x86emu*,int ,int ) ;

__attribute__((used)) static void
cmp_byte_no_return(struct x86emu *emu, uint8_t d, uint8_t s)
{
 cmp_byte(emu, d, s);
}
