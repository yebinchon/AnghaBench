
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LZMA_PRESET_LEVEL_MASK ;
 int forget_filter_chain () ;
 int preset_number ;

extern void
coder_set_preset(uint32_t new_preset)
{
 preset_number &= ~LZMA_PRESET_LEVEL_MASK;
 preset_number |= new_preset;
 forget_filter_chain();
 return;
}
