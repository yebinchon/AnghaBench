
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
typedef int lzma_lzma1_decoder ;


 scalar_t__ lzma_lz_decoder_memusage (int ) ;

extern uint64_t
lzma_lzma_decoder_memusage_nocheck(const void *options)
{
 const lzma_options_lzma *const opt = options;
 return sizeof(lzma_lzma1_decoder)
   + lzma_lz_decoder_memusage(opt->dict_size);
}
