
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint64_t ;
typedef int lzma_lzma1_encoder ;
typedef int lzma_lz_options ;


 scalar_t__ const UINT64_MAX ;
 int is_options_valid (void const*) ;
 scalar_t__ lzma_lz_encoder_memusage (int *) ;
 int set_lz_options (int *,void const*) ;

extern uint64_t
lzma_lzma_encoder_memusage(const void *options)
{
 if (!is_options_valid(options))
  return UINT64_MAX;

 lzma_lz_options lz_options;
 set_lz_options(&lz_options, options);

 const uint64_t lz_memusage = lzma_lz_encoder_memusage(&lz_options);
 if (lz_memusage == UINT64_MAX)
  return UINT64_MAX;

 return (uint64_t)(sizeof(lzma_lzma1_encoder)) + lz_memusage;
}
