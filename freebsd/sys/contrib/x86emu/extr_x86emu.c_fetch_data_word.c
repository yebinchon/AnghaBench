
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int fetch_word (struct x86emu*,int ,int ) ;
 int get_data_segment (struct x86emu*) ;

__attribute__((used)) static uint16_t
fetch_data_word(struct x86emu *emu, uint32_t offset)
{
 return fetch_word(emu, get_data_segment(emu), offset);
}
