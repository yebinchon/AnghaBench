
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_4__ {int * update; int * code; } ;
typedef TYPE_1__ lzma_next_coder ;
typedef int lzma_filter_info ;
typedef int lzma_allocator ;


 int delta_encode ;
 int delta_encoder_update ;
 int lzma_delta_coder_init (TYPE_1__*,int const*,int const*) ;

extern lzma_ret
lzma_delta_encoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_filter_info *filters)
{
 next->code = &delta_encode;
 next->update = &delta_encoder_update;
 return lzma_delta_coder_init(next, allocator, filters);
}
