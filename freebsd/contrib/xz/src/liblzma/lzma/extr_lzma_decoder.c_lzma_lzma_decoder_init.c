
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_ret ;
typedef int lzma_next_coder ;
struct TYPE_4__ {int * init; } ;
typedef TYPE_1__ lzma_filter_info ;
typedef int lzma_allocator ;


 int assert (int ) ;
 int lzma_decoder_init ;
 int lzma_lz_decoder_init (int *,int const*,TYPE_1__ const*,int *) ;

extern lzma_ret
lzma_lzma_decoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_filter_info *filters)
{


 assert(filters[1].init == ((void*)0));

 return lzma_lz_decoder_init(next, allocator, filters,
   &lzma_decoder_init);
}
