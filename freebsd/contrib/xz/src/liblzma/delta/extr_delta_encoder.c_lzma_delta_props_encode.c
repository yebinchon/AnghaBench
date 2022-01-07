
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lzma_ret ;
struct TYPE_2__ {scalar_t__ dist; } ;
typedef TYPE_1__ lzma_options_delta ;


 scalar_t__ LZMA_DELTA_DIST_MIN ;
 int LZMA_OK ;
 int LZMA_PROG_ERROR ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ lzma_delta_coder_memusage (void const*) ;

extern lzma_ret
lzma_delta_props_encode(const void *options, uint8_t *out)
{


 if (lzma_delta_coder_memusage(options) == UINT64_MAX)
  return LZMA_PROG_ERROR;

 const lzma_options_delta *opt = options;
 out[0] = opt->dist - LZMA_DELTA_DIST_MIN;

 return LZMA_OK;
}
