
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int (* emu_rdl ) (struct x86emu*,int) ;} ;


 int stub1 (struct x86emu*,int) ;

__attribute__((used)) static uint32_t
fetch_long(struct x86emu *emu, uint32_t segment, uint32_t offset)
{
 return (*emu->emu_rdl) (emu, ((uint32_t) segment << 4) + offset);
}
