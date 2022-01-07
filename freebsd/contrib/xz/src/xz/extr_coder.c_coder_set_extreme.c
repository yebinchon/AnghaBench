
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZMA_PRESET_EXTREME ;
 int forget_filter_chain () ;
 int preset_number ;

extern void
coder_set_extreme(void)
{
 preset_number |= LZMA_PRESET_EXTREME;
 forget_filter_chain();
 return;
}
