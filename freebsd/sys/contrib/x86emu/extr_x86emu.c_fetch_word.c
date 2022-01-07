
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int (* emu_rdw ) (struct x86emu*,int) ;} ;


 int stub1 (struct x86emu*,int) ;

__attribute__((used)) static uint16_t
fetch_word(struct x86emu *emu, uint32_t segment, uint32_t offset)
{
 return (*emu->emu_rdw) (emu, ((uint32_t) segment << 4) + offset);
}
