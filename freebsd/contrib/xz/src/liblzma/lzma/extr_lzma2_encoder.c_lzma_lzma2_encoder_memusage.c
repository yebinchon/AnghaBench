
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int lzma_lzma2_coder ;


 scalar_t__ const UINT64_MAX ;
 scalar_t__ lzma_lzma_encoder_memusage (void const*) ;

extern uint64_t
lzma_lzma2_encoder_memusage(const void *options)
{
 const uint64_t lzma_mem = lzma_lzma_encoder_memusage(options);
 if (lzma_mem == UINT64_MAX)
  return UINT64_MAX;

 return sizeof(lzma_lzma2_coder) + lzma_mem;
}
