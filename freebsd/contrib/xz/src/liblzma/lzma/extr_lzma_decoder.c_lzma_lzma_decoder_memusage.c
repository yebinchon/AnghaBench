
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT64_MAX ;
 int is_lclppb_valid (void const*) ;
 int lzma_lzma_decoder_memusage_nocheck (void const*) ;

extern uint64_t
lzma_lzma_decoder_memusage(const void *options)
{
 if (!is_lclppb_valid(options))
  return UINT64_MAX;

 return lzma_lzma_decoder_memusage_nocheck(options);
}
