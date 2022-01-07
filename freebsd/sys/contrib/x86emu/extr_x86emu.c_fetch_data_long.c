
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int fetch_long (struct x86emu*,int ,int ) ;
 int get_data_segment (struct x86emu*) ;

__attribute__((used)) static uint32_t
fetch_data_long(struct x86emu *emu, uint32_t offset)
{
 return fetch_long(emu, get_data_segment(emu), offset);
}
