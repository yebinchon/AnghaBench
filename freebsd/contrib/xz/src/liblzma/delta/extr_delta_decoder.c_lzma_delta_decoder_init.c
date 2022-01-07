
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_4__ {int * code; } ;
typedef TYPE_1__ lzma_next_coder ;
typedef int lzma_filter_info ;
typedef int lzma_allocator ;


 int delta_decode ;
 int lzma_delta_coder_init (TYPE_1__*,int const*,int const*) ;

extern lzma_ret
lzma_delta_decoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_filter_info *filters)
{
 next->code = &delta_decode;
 return lzma_delta_coder_init(next, allocator, filters);
}
