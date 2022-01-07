
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int (* emu_rdb ) (struct x86emu*,int) ;} ;


 int stub1 (struct x86emu*,int) ;

__attribute__((used)) static uint8_t
fetch_byte(struct x86emu *emu, uint32_t segment, uint32_t offset)
{
 return (*emu->emu_rdb) (emu, ((uint32_t) segment << 4) + offset);
}
