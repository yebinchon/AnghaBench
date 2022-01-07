
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int (* emu_wrl ) (struct x86emu*,int,int) ;} ;


 int stub1 (struct x86emu*,int,int) ;

__attribute__((used)) static void
store_long(struct x86emu *emu, uint32_t segment, uint32_t offset, uint32_t val)
{
 (*emu->emu_wrl) (emu, ((uint32_t) segment << 4) + offset, val);
}
