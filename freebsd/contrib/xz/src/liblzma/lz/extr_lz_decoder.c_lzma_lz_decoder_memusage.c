
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int lzma_coder ;



extern uint64_t
lzma_lz_decoder_memusage(size_t dictionary_size)
{
 return sizeof(lzma_coder) + (uint64_t)(dictionary_size);
}
