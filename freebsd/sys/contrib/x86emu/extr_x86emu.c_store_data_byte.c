
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int get_data_segment (struct x86emu*) ;
 int store_byte (struct x86emu*,int ,int ,int ) ;

__attribute__((used)) static void
store_data_byte(struct x86emu *emu, uint32_t offset, uint8_t val)
{
 store_byte(emu, get_data_segment(emu), offset, val);
}
